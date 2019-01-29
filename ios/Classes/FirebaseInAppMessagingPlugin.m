#import "FirebaseInAppMessagingPlugin.h"

#import "Firebase/Firebase.h"

@implementation DKIFirebaseInAppMessagingPlugin {
}

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar> *)registrar {
  FlutterMethodChannel *channel =
      [FlutterMethodChannel methodChannelWithName:@"plugins.daikini/firebase_in_app_messaging"
                                  binaryMessenger:[registrar messenger]];
  DKIFirebaseInAppMessagingPlugin *instance = [[DKIFirebaseInAppMessagingPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (instancetype)init {
  self = [super init];
  if (self) {
    if (![FIRApp defaultApp]) {
      [FIRApp configure];
    }
  }
  return self;
}

- (void)handleMethodCall:(FlutterMethodCall *)call result:(FlutterResult)result {
    result(FlutterMethodNotImplemented);
}

@end