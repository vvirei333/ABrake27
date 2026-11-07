## MapsIntents

> `/System/Library/ExtensionKit/Extensions/MapsIntents.appex/MapsIntents`

### Sections with Same Size but Changed Content

- `__TEXT.__objc_methlist`
- `__TEXT.__objc_classname`
- `__TEXT.__swift5_entry`
- `__DATA_CONST.__objc_classlist`
- `__DATA_CONST.__objc_catlist`
- `__DATA_CONST.__objc_protolist`
- `__DATA_CONST.__objc_protorefs`
- `__DATA_CONST.__objc_superrefs`
- `__DATA_CONST.__objc_arrayobj`
- `__DATA.__objc_const`
- `__DATA.__objc_data`

```diff

-2972.30.6.12.58
-  __TEXT.__text: 0x59f38
-  __TEXT.__auth_stubs: 0x1dd0
-  __TEXT.__objc_stubs: 0x1440
+2972.31.6.17.20
+  __TEXT.__text: 0x602a4
+  __TEXT.__auth_stubs: 0x2050
+  __TEXT.__objc_stubs: 0x1900
   __TEXT.__objc_methlist: 0x1014
-  __TEXT.__const: 0x50f4
-  __TEXT.__cstring: 0x1dc5
-  __TEXT.__gcc_except_tab: 0x44
+  __TEXT.__const: 0x5254
+  __TEXT.__cstring: 0x2075
+  __TEXT.__objc_methname: 0x4e44
+  __TEXT.__oslogstring: 0x20bb
   __TEXT.__objc_classname: 0x1cb
-  __TEXT.__objc_methname: 0x4bf4
-  __TEXT.__oslogstring: 0x1b39
-  __TEXT.__objc_methtype: 0xff1
-  __TEXT.__swift5_typeref: 0x38a0
-  __TEXT.__swift5_reflstr: 0x129e
-  __TEXT.__swift5_assocty: 0x808
-  __TEXT.__constg_swiftt: 0x710
-  __TEXT.__swift5_fieldmd: 0xb5c
-  __TEXT.__swift5_builtin: 0x3c
-  __TEXT.__swift5_proto: 0x428
-  __TEXT.__swift5_types: 0xa0
-  __TEXT.__swift_as_entry: 0xf8
-  __TEXT.__swift_as_ret: 0x158
-  __TEXT.__swift_as_cont: 0x258
-  __TEXT.__swift5_capture: 0xc0
+  __TEXT.__objc_methtype: 0x1090
+  __TEXT.__gcc_except_tab: 0x44
+  __TEXT.__swift5_typeref: 0x4120
+  __TEXT.__swift5_reflstr: 0x13eb
+  __TEXT.__swift5_assocty: 0x838
+  __TEXT.__constg_swiftt: 0x83c
+  __TEXT.__swift5_fieldmd: 0xcd0
+  __TEXT.__swift5_builtin: 0x50
+  __TEXT.__swift5_proto: 0x430
+  __TEXT.__swift5_types: 0xb8
+  __TEXT.__swift_as_entry: 0x108
+  __TEXT.__swift_as_ret: 0x170
+  __TEXT.__swift_as_cont: 0x244
+  __TEXT.__swift5_capture: 0xd8
   __TEXT.__swift5_entry: 0x8
-  __TEXT.__unwind_info: 0x15d8
-  __TEXT.__eh_frame: 0x2928
-  __DATA_CONST.__const: 0x1de0
-  __DATA_CONST.__cfstring: 0x200
+  __TEXT.__unwind_info: 0x1708
+  __TEXT.__eh_frame: 0x2bc8
+  __DATA_CONST.__const: 0x2008
+  __DATA_CONST.__cfstring: 0x2c0
   __DATA_CONST.__objc_classlist: 0x28
   __DATA_CONST.__objc_catlist: 0x8
   __DATA_CONST.__objc_protolist: 0x88
   __DATA_CONST.__objc_imageinfo: 0x8
   __DATA_CONST.__objc_protorefs: 0x40
   __DATA_CONST.__objc_superrefs: 0x8
-  __DATA_CONST.__objc_arraydata: 0x88
+  __DATA_CONST.__objc_arraydata: 0xb8
   __DATA_CONST.__objc_arrayobj: 0xc0
-  __DATA_CONST.__objc_doubleobj: 0x3a0
-  __DATA_CONST.__objc_intobj: 0x7b0
+  __DATA_CONST.__objc_doubleobj: 0x3b0
+  __DATA_CONST.__objc_intobj: 0x780
   __DATA_CONST.__objc_floatobj: 0x20
-  __DATA_CONST.__auth_got: 0xef8
-  __DATA_CONST.__got: 0x628
-  __DATA_CONST.__auth_ptr: 0xa60
+  __DATA_CONST.__objc_dictobj: 0x28
+  __DATA_CONST.__auth_got: 0x1038
+  __DATA_CONST.__got: 0x6b8
+  __DATA_CONST.__auth_ptr: 0xac0
   __DATA.__objc_const: 0x1ed8
-  __DATA.__objc_selrefs: 0xe38
+  __DATA.__objc_selrefs: 0xf68
   __DATA.__objc_ivar: 0x24
   __DATA.__objc_data: 0x140
-  __DATA.__data: 0x1ef8
-  __DATA.__bss: 0x85c0
+  __DATA.__data: 0x2120
+  __DATA.__bss: 0x86c0
   __DATA.__common: 0x158
   - /System/Library/Frameworks/AppIntents.framework/AppIntents
   - /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation

   - /System/Library/PrivateFrameworks/GeoServices.framework/GeoServices
   - /System/Library/PrivateFrameworks/MapsSync.framework/MapsSync
   - /System/Library/PrivateFrameworks/NanoRegistry.framework/NanoRegistry
+  - /System/Library/PrivateFrameworks/Navigation.framework/Navigation
   - /usr/lib/libSystem.B.dylib
   - /usr/lib/libc++.1.dylib
   - /usr/lib/libobjc.A.dylib

   - /usr/lib/swift/libswift_Concurrency.dylib
   - /usr/lib/swift/libswiftos.dylib
   - /usr/lib/swift/libswiftsimd.dylib
-  Functions: 1555
-  Symbols:   278
-  CStrings:  1287
+  Functions: 1624
+  Symbols:   298
+  CStrings:  1354
 
Symbols:
+ _GEOMapRectForMapRegion
+ _MKCoordinateForMapPoint
+ _MKMapPointsPerMeterAtLatitude
+ _MKMapRectInset
+ _MKMapRectIntersection
+ _MKMapRectNull
+ _MKMapRectUnion
+ _MKMapRectWorld
+ _MapsFeature_IsEnabled_DrivingMultiWaypointRoutes
+ _MapsFeature_IsEnabled_Maps182
+ _MapsFeature_IsEnabled_Maps420
+ _OBJC_CLASS_$_GEOComposedRoute
+ _OBJC_CLASS_$_GEODirectionsService
+ _OBJC_CLASS_$_GEODirectionsServiceRequestParameters
+ _OBJC_CLASS_$_GEORouteAttributes
+ _OBJC_CLASS_$_MKMapSnapshot
+ _OBJC_CLASS_$_MNFamiliarRouteProvider
+ _OBJC_CLASS_$_NSConstantDictionary
+ _OBJC_CLASS_$_UIGraphicsImageRenderer
+ _objc_retain_x1
+ _swift_bridgeObjectRetain_n
+ _swift_dynamicCastClass
+ _swift_isEscapingClosureAtFileLocation
+ _swift_release_n
- _OBJC_CLASS_$_GEOCommonOptions
- _OBJC_CLASS_$_GEOQuickETARequester
- _OBJC_CLASS_$_GEOTrafficAndETAResult
- _swift_retain_x8
CStrings:
+ "CalculateETAIntent: %s snapshotter error: %s"
+ "CalculateETAIntent: Created directions URL - %s"
+ "CalculateETAIntent: Created map item URL - %s"
+ "CalculateETAIntent: Creating MKMapSnapshotter (%s)"
+ "CalculateETAIntent: Expected simultaneous light/dark snapshot but imageAsset was nil — falling back to a single appearance."
+ "CalculateETAIntent: Failed to render CurrentLocationGem to image"
+ "CalculateETAIntent: Resolving map image set from snapshot image."
+ "CalculateETAIntent: Returning route-derived ETAEntity — routeDurationInSeconds: %f, distanceMeters: %f"
+ "CalculateETAIntent: Snippet layout forces dark scheme — returning dark snapshot only."
+ "CalculateETAIntent: calculateETA — no routes available, returning distance-only ETAEntity"
+ "CalculateETAIntent: currentLocationInfo — missing current-location geoMapItem, treating as not current location"
+ "CalculateETAIntent: currentLocationInfo — origin=%{bool}d, destination=%{bool}d"
+ "CalculateETAIntent: currentLocationInfo — unable to fetch current location: %s"
+ "CalculateETAIntent: fetchRouteLines — MKMapService/traits unavailable, returning no routes"
+ "CalculateETAIntent: fetchRouteLines — no default route attributes for transportType=%s, returning no routes"
+ "CalculateETAIntent: fetched [%ld] route(s). hasFamiliarRoute=%{bool}d."
+ "CalculateETAIntent: generateRouteLineImageSet — adding current-location gem"
+ "CalculateETAIntent: generateRouteLineImageSet — origin is not current location, returning image set without gem"
+ "CalculateETAIntent: resolveMapImageSet — generating route-line image, routeCount=%ld"
+ "CalculateETAIntent: resolveMapImageSet — no route available, using geodesic distance image"
+ "CalculateETAIntent: resolveMapImageSet — no route lines returned, falling back to single-place image"
+ "CalculateETAIntent: route-line directions error - title: %s description: %s"
+ "CalculateETAIntent: route-line fetch failed: %s"
+ "Carry"
+ "Label indicating this ETA reflects the user's familiar/preferred route"
+ "Open Maps to continue."
+ "Presubmission"
+ "Route description indicating this is the user's familiar/preferred route, with traffic level"
+ "Separator between the route caption and traffic level"
+ "This operation is not supported during stepping navigation."
+ "Your preferred route"
+ "Your preferred route • %@"
+ "_setAllowsSimultaneousLightDarkSnapshots:"
+ "_setComposedRoutesForRouteLines:selectedRouteIndex:"
+ "_setShowsRouteAnnotations:"
+ "boundingMapRegion"
+ "createWaypoint(for:currentLocation:traits:)"
+ "defaultRouteAttributesForTransportType:"
+ "drawAtPoint:"
+ "drawInRect:"
+ "fetchRouteLines(from:to:transportationType:departureTime:)"
+ "geoWaypointRoute"
+ "https://apps.mzstatic.com/content/3e22681091624b6eaf72730309a89491/maps.jetpack"
+ "https://apps.mzstatic.com/content/cdcbf37fc6874dbf9112a58d7d53ce28/maps.jetpack"
+ "https://apps.mzstatic.com/content/e2206ce7479244289fdbee6d39042dd9/maps.jetpack"
+ "iOS Production"
+ "imageAsset"
+ "imageWithActions:"
+ "imageWithTraitCollection:"
+ "initWithPurpose:reason:date:"
+ "initWithSize:"
+ "isFamiliarRoute"
+ "localizedDescription"
+ "localizedTitle"
+ "person.crop.badge.arrow.trianglehead.turn.up.right"
+ "pointForCoordinate:"
+ "requestRoutes:handler:"
+ "resolveTransportationType: idealTTF resolved .any → %s, but it lacks multi-waypoint support for %ld waypoints — upgrading to .driving"
+ "routeTrafficDetail"
+ "runSnapshotter(with:context:)"
+ "scale"
+ "setAutomobileOptions:"
+ "setCallbackQueue:"
+ "setCyclingOptions:"
+ "setFamiliarRouteProvider:"
+ "setHasTimepoint:"
+ "setIncludeRouteTrafficDetail:"
+ "setMapType:"
+ "setMaxRouteCount:"
+ "setRequestCallback:"
+ "setRequestType:"
+ "setRouteAttributes:"
+ "setTimepoint:"
+ "setTraits:"
+ "setTransitOptions:"
+ "setTransportType:"
+ "setWalkingOptions:"
+ "setWaypoints:"
+ "size"
+ "startDate"
+ "travelAndChargingDuration"
+ "unregisterImageWithTraitCollection:"
+ "urlForMapItems:options:"
+ "v16@?0@\"GEODirectionsRequest\"8"
+ "v16@?0@\"UIGraphicsImageRendererContext\"8"
+ "v32@?0@\"NSArray\"8@\"NSError\"16@\"GEODirectionsError\"24"
- "CalculateETAIntent: Created Maps URL - %s"
- "CalculateETAIntent: Creating MKMapSnapshotter"
- "CalculateETAIntent: ETA request failed with error: %s"
- "CalculateETAIntent: ETA request returned no results"
- "CalculateETAIntent: ETA result indicates failure (no route available)"
- "CalculateETAIntent: Geodesic snapshotter error: %s"
- "CalculateETAIntent: Snapshotter error: %s"
- "CalculateETAIntent: Starting snapshotter..."
- "CalculateETAIntent: currentLocationFlags — missing current-location geoMapItem, treating as not current location"
- "CalculateETAIntent: currentLocationFlags — origin=%{bool}d, destination=%{bool}d"
- "CalculateETAIntent: currentLocationFlags — unable to fetch current location: %s"
- "calculateETA(from:to:departureTime:resolvedTransportationType:)"
- "createWaypoint(for:traits:)"
- "generateGeodesicDistanceSnapshot(from:to:layout:)"
- "generateMapSnapshot(for:layout:)"
- "isSuccess"
- "requestETAFromOrigin:toDestinations:transportType:timepoint:includeDistance:commonOptions:automobileOptions:walkingOptions:transitOptions:cyclingOptions:familiarRoute:auditToken:handler:callbackQueue:"
- "seconds"
- "setIncludeSummaryForPredictedDestination:"
```
