#import <UIKit/UIKit.h>

#import "wax.h"
#import "wax_http.h"
#import "wax_json.h"
#import "wax_xml.h"

int main(int argc, char *argv[]) {
	NSAutoreleasePool *pool = [NSAutoreleasePool new];

	wax_startWithExtensions(luaopen_wax_http, luaopen_wax_json, luaopen_wax_xml, nil);

	int retVal = UIApplicationMain(argc, argv, nil, @"cocowaxAppDelegate");
	[pool release];
	return retVal;
}
