#import "FederatedDemoPlugin.h"
#if __has_include(<federated_demo/federated_demo-Swift.h>)
#import <federated_demo/federated_demo-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "federated_demo-Swift.h"
#endif

@implementation FederatedDemoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFederatedDemoPlugin registerWithRegistrar:registrar];
}
@end
