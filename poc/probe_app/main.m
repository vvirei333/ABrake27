// ASTC-Probe — behavioral PoC for the ABrake27 ImageIO/ASTC delivery lead.
//
// Feeds the crafted fixtures (IAKC / .ktx / .astc / DDS) through the PUBLIC
// ImageIO decode path IN-PROCESS (CGImageSourceCreateWithData → CreateImageAtIndex
// → Thumbnail) and logs progress with fsync BEFORE each decode. If the process
// crashes, the last "PROBE ... — decoding NOW" line in probe_log.txt names the
// file that reached the vulnerable code.
//
// Public API only — no exploits inside. Educational/research use, own devices.
// Build: poc/probe_app/build_probe.sh (Linux cross-compile, no Xcode).

#import <UIKit/UIKit.h>
#import <ImageIO/ImageIO.h>
#import <CoreFoundation/CoreFoundation.h>
#import <sys/sysctl.h>
#import <mach/mach.h>

static NSMutableString *gLog;
static UITextView *gView;
static NSString *gLogPath;

// ---- v5 RECON: environment facts (public sysctl API only) -----------------
// SPTM itself is EL1/PPL-only — unreachable from userland by design.
// What we CAN verify from a sandboxed app: build identity, chip (t8101 for
// iPhone 12 Pro vs our t8110 diff), memory topology, and whether any
// SPTM/Exclaves-adjacent sysctls exist at all.
static void logLine(NSString *s);
static void sysctlStr(const char *name, NSMutableString *out) {
    char buf[256];
    size_t len = sizeof(buf);
    if (sysctlbyname(name, buf, &len, NULL, 0) == 0) {
        [out appendFormat:@"  %@ = %s\n", @(name), buf];
    } else {
        [out appendFormat:@"  %@ = (absent)\n", @(name)];
    }
}
static void sysctlInt(const char *name, NSMutableString *out) {
    int64_t v = 0;
    size_t len = sizeof(v);
    if (sysctlbyname(name, &v, &len, NULL, 0) == 0) {
        [out appendFormat:@"  %@ = %lld\n", @(name), v];
    } else {
        [out appendFormat:@"  %@ = (absent)\n", @(name)];
    }
}
static void runRecon(void) {
    logLine(@"=== RECON (v5, public sysctl only) ===");
    NSMutableString *r = [NSMutableString string];

    logLine(@"-- identity --");
    r = [NSMutableString string];
    sysctlStr("kern.osrelease", r);   sysctlStr("kern.osversion", r);
    sysctlStr("kern.version", r);     sysctlStr("kern.osbuildconfig", r);
    sysctlStr("hw.machine", r);       sysctlStr("hw.model", r);
    logLine(r);

    logLine(@"-- memory / topology --");
    r = [NSMutableString string];
    sysctlInt("hw.memsize", r);       sysctlInt("hw.memsize_usable", r);
    sysctlInt("hw.ncpu", r);          sysctlInt("hw.pagesize", r);
    logLine(r);

    // ABrake27 watch-list guesses: do SPTM/Exclaves/verify knobs exist as
    // sysctls on this build? (expected: absent — they're boot args / DT keys,
    // but a POSITIVE here would be a finding)
    logLine(@"-- sptm/exclaves/tlbi guesses --");
    r = [NSMutableString string];
    const char *guesses[] = {
        "hw.sptm_version", "kern.sptm_version", "sptm.version",
        "hw.sptm", "kern.sptm", "kern.t8101_sptm",
        "kern.exclaves", "hw.exclaves", "exclaves.version",
        "kern.verify_gmmu_tlbis", "hw.gmmu_tlbi_verify",
        "kern.hibernation.handoffPageCount", "kern.hib_latch",
        "kern.txm_version", "hw.txm",
        "kern.secure_page_table", "kern.ppl", "hw.ppl",
        NULL
    };
    for (int i = 0; guesses[i]; i++) sysctlStr(guesses[i], r);
    logLine(r);

    logLine(@"-- mach_host flavor sanity (public) --");
    mach_msg_type_number_t cnt = HOST_BASIC_INFO_COUNT;
    host_basic_info_data_t hbi;
    if (host_info(mach_host_self(), HOST_BASIC_INFO, (host_info_t)&hbi, &cnt) == KERN_SUCCESS) {
        logLine([NSString stringWithFormat:@"  host: cpu=%d maxcpu=%d mem=%llu",
                 hbi.cpu_type, hbi.avail_cpus, (unsigned long long)hbi.max_mem]);
    }
    logLine(@"=== RECON DONE ===");
}

static void logLine(NSString *s) {
    NSString *line = [NSString stringWithFormat:@"%@\n", s];
    [gLog appendString:line];
    NSFileHandle *fh = [NSFileHandle fileHandleForWritingAtPath:gLogPath];
    if (!fh) {
        [line writeToFile:gLogPath atomically:YES];
    } else {
        [fh seekToEndOfFile];
        [fh writeData:[line dataUsingEncoding:NSUTF8StringEncoding]];
        [fh closeFile];
    }
    dispatch_async(dispatch_get_main_queue(), ^{
        if (gView) {
            gView.text = gLog;
            NSRange b = NSMakeRange(gLog.length, 0);
            [gView scrollRangeToVisible:b];
        }
    });
}

@interface VC : UIViewController
@end
@implementation VC
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.blackColor;

    UIButton *b = [UIButton buttonWithType:UIButtonTypeSystem];
    b.frame = CGRectMake(15, 50, 350, 46);
    [b setTitle:@"RUN PROBE v5 (ATX 15 fixtures)" forState:UIControlStateNormal];
    b.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    b.backgroundColor = [UIColor colorWithWhite:0.15 alpha:1];
    b.layer.cornerRadius = 10;
    [b addTarget:self action:@selector(run) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:b];

    UIButton *r = [UIButton buttonWithType:UIButtonTypeSystem];
    r.frame = CGRectMake(15, 102, 350, 40);
    [r setTitle:@"RECON (sysctl env dump)" forState:UIControlStateNormal];
    r.backgroundColor = [UIColor colorWithWhite:0.25 alpha:1];
    r.layer.cornerRadius = 10;
    [r addTarget:self action:@selector(recon) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:r];

    gView = [[UITextView alloc] initWithFrame:CGRectMake(5, 110, 370, 760)];
    gView.editable = NO;
    gView.textColor = UIColor.greenColor;
    gView.font = [UIFont fontWithName:@"Menlo" size:9];
    [self.view addSubview:gView];

    gLog = [NSMutableString string];
    NSString *docs = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    gLogPath = [docs stringByAppendingPathComponent:@"probe_log.txt"];
    [[NSFileManager defaultManager] removeItemAtPath:gLogPath error:nil];
    logLine(@"probe ready (build 24A446-target). log:");
    logLine(gLogPath);
}

- (void)recon { runRecon(); }

- (void)run {
    logLine(@"=== PROBE RUN START ===");
    NSString *fx = [[NSBundle mainBundle] pathForResource:@"Fixtures4" ofType:nil];
    if (!fx) { logLine(@"!! no Fixtures dir in bundle"); return; }

    NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:fx error:nil];
    files = [files sortedArrayUsingSelector:@selector(compare:)];
    logLine([NSString stringWithFormat:@"fixtures: %lu", (unsigned long)files.count]);

    for (NSString *f in files) {
        NSString *p = [fx stringByAppendingPathComponent:f];
        NSData *d = [NSData dataWithContentsOfFile:p];
        // fsync'd BEFORE decode: a crash names this file
        logLine([NSString stringWithFormat:@"PROBE %@ (%lu bytes) — decoding NOW", f, (unsigned long)d.length]);

        // v3: allowable-types steering (discovered: kCGImageSourceAllowableTypes
        // takes precedence; ATX-ASTC is the Apple texture container type)
        NSDictionary *opts = @{
            @"kCGImageSourceAllowableTypes":
                @[@"ATX-ASTC", @"ATX-420f"],
            (__bridge NSString *)kCGImageSourceTypeIdentifierHint: @"ATX-ASTC"
        };
        CGImageSourceRef src = CGImageSourceCreateWithData((__bridge CFDataRef)d, (__bridge CFDictionaryRef)opts);
        if (!src) {
            logLine(@"  CGImageSourceCreateWithData → nil (not sniffed)");
            continue;
        }
        size_t n = CGImageSourceGetCount(src);
        logLine([NSString stringWithFormat:@"  source OK, images=%zu", n]);
        for (size_t i = 0; i < n && i < 4; i++) {
            CGImageRef img = CGImageSourceCreateImageAtIndex(src, i, NULL);
            logLine([NSString stringWithFormat:@"  image[%zu]: %@", i, img ? @"DECODED" : @"nil"]);
            if (img) CGImageRelease(img);
        }
        CGImageRef th = CGImageSourceCreateThumbnailAtIndex(src, 0, NULL);
        logLine([NSString stringWithFormat:@"  thumbnail: %@", th ? @"OK" : @"nil"]);
        if (th) CGImageRelease(th);
        CFRelease(src);
        logLine(@"  survived.");
    }
    logLine(@"=== ALL SURVIVED — delivery/trigger not reached on this build ===");
    logLine(@"(negative result is valuable too: report back which channels got the files)");
}
@end

@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong) UIWindow *window;
@end
@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [VC new];
    [self.window makeKeyAndVisible];
    return YES;
}
@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
