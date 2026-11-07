## searchtoold

> Group: ⬆️ Updated

```diff

 		(require-not (global-name "com.apple.biome.access.user"))
 		(require-not (global-name "com.apple.linkd.registry"))
 		(require-not (global-name "com.apple.mobilegestalt.xpc"))
+		(require-not (global-name "com.apple.FileProvider"))
 		(require-not (global-name "com.apple.managedappdistributiond.xpc"))
 		(require-not (global-name "com.apple.mediaanalysisd.analysis"))
 		(require-not (global-name "com.apple.callkit.callcontrollerhost"))

 		(require-not (global-name "com.apple.usernotifications.listener"))
 		(require-not (global-name "com.apple.itunescloud.remote-request-execution-service"))
 		(require-not (global-name "com.apple.spotlight.IndexAgent"))
+		(require-not (global-name "com.apple.timed.xpc"))
 		(require-not (global-name "com.apple.siri.pommes_search_xpc_service"))
 		(require-not (global-name "com.apple.proactive.ActionPrediction.predictions"))
+		(require-not (global-name "com.apple.siri.orchestration.capabilities"))
 		(require-not (global-name "com.apple.biome.compute.source.user"))
 		(require-not (global-name "com.apple.distributed_notifications@1v3"))
 		(require-not (global-name "com.apple.SystemConfiguration.configd"))

 		(require-not (global-name "com.apple.adid"))
 		(require-not (global-name "com.apple.imagent.embedded.auth"))
 		(require-not (global-name "com.apple.medialibraryd.xpc"))
+		(require-not (global-name "com.apple.generativeexperiences.generativeexperiencessession"))
 		(require-not (global-name "com.apple.proactive.PersonalizationPortrait.Contact"))
 		(require-not (global-name "com.apple.mediaanalysisd.service.public"))
 		(require-not (global-name "com.apple.gpumemd.source"))

 		(require-not (xpc-service-name "com.apple.MTLCompilerService"))
 		(require-not (xpc-service-name "com.apple.WorkflowKit.BackgroundShortcutRunner"))
 		(require-not (xpc-service-name "com.apple.imdpersistence.IMDPersistenceAgent"))
+		(require-not (xpc-service-name "com.apple.StocksKitService"))
 		(require-not (xpc-service-name "com.apple.FileBrowsingServices.PathResolver"))
 		(require-not (xpc-service-name "com.apple.intents.intents-helper"))
 		(require-not (global-name "com.apple.FSEvents"))
```
