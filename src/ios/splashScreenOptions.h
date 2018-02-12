//
//  splashScreenOptions.h
//  
//
//  Created by John Weaver on 02/11/2018.
//
//

#import <Cordova/CDVPlugin.h>

@interface SplashScreenOptions : CDVPlugin < UINavigationControllerDelegate, UIScrollViewDelegate>

@property (copy)   NSString* callbackId;

- (void) hideSpinner:(CDVInvokedUrlCommand *)command;
- (void) enableUserInteraction:(CDVInvokedUrlCommand *)command;

@end
