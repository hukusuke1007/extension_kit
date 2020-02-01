#import "ExtensionKitPlugin.h"
#if __has_include(<extension_kit/extension_kit-Swift.h>)
#import <extension_kit/extension_kit-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "extension_kit-Swift.h"
#endif

@implementation ExtensionKitPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftExtensionKitPlugin registerWithRegistrar:registrar];
}
@end
