#import <UIKit/UIKit.h>

@class RootViewController;

@interface cocowaxAppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow			*window;
	RootViewController	*viewController;
}

@property (nonatomic, retain) UIWindow *window;

@end
