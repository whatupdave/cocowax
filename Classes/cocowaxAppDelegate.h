//
//  cocowaxAppDelegate.h
//  cocowax
//
//  Created by David Newman on 25/01/11.
//  Copyright Sentia 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface cocowaxAppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow			*window;
	RootViewController	*viewController;
}

@property (nonatomic, retain) UIWindow *window;

@end
