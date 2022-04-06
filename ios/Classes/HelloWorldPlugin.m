#import "HelloWorldPlugin.h"
#if __has_include(<hello_world/hello_world-Swift.h>)
#import <hello_world/hello_world-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "hello_world-Swift.h"
#endif

@implementation HelloWorldPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHelloWorldPlugin registerWithRegistrar:registrar];
}
@end
