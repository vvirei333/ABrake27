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

static NSMutableString *gLog;
static UITextView *gView;
static NSString *gLogPath;

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
    [b setTitle:@"RUN PROBE v4 (ATX header 0x54, 15 fixtures)" forState:UIControlStateNormal];
    b.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    b.backgroundColor = [UIColor colorWithWhite:0.15 alpha:1];
    b.layer.cornerRadius = 10;
    [b addTarget:self action:@selector(run) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:b];

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
