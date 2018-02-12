//
//  splashScreenOptions.m
//
//  Created by John Weaver on 02/11/18
//
//

#import "splashScreenOptions.h"

@implementation SplashScreenOptions 

@synthesize callbackId;

- (void) hideSpinner:(CDVInvokedUrlCommand *)command {
    
    NSDictionary *options = [command.arguments objectAtIndex: 0];
  
    self.callbackId = command.callbackId;

    for (UIView *i in self.viewController.view.subviews){
        if([i isKindOfClass:[UIActivityIndicatorView class]]){
              UIActivityIndicatorView* _activityView = (UIActivityIndicatorView *)i;
              NSLog(@"ALERT: Found activity indicator!");
              [_activityView removeFromSuperview];
        }
    }

	  CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:result callbackId:self.callbackId];    
}

- (void) enableUserInteraction:(CDVInvokedUrlCommand *)command {
    
    NSDictionary *options = [command.arguments objectAtIndex: 0];
  
    self.callbackId = command.callbackId;

    UIView* parentView = self.viewController.view;
	  parentView.userInteractionEnabled = YES;  // enable user interaction while splashscreen is shown
    	  
	  CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:result callbackId:self.callbackId];
    
}

@end
