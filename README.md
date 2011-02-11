Hello world in cocos2d with iPhone Wax (Lua)
===

This shows you how you can create a cocos2d application with your application code written in [Lua](lua.org). It's set up with [cocos2d](cocos2d-iphone.org) and [iPhone Wax](http://github.com/probablycorey/wax) as git submodules and built as static libraries.

Install notes:
---

Because cocos2d and iPhone Wax are submodules of this repository, they won't be automatically pulled down when you clone. If you are running git version 1.6.5 or later you can grab all of this in one step:

    git clone --recursive git://github.com/snappycode/cocowax.git
    
Or if you have already cloned the repo, make sure you init and update the submodules:

    git submodule update --init

If you're not using git then you'll need to copy the source for iPhone Wax and cocos2d in manually:

Put iPhone wax into the /wax directory and cocos2d into /libs/cocos2d

Then you can build and run from Xcode.

Interesting parts:
---

**main.m**

    wax_start("init.lua", luaopen_wax_http, luaopen_wax_json, luaopen_wax_xml, nil);
    
Starts up the wax Lua environment telling wax which lua script to run. Also loads a few extensions.

**data/scripts/LuaScene.lua**

    waxClass{ "LuaScene", CCScene }
    function init(self)
      ...
    end

This is where the actual Scene is created in Lua. waxClass creates "LuaScene" as both a Lua object and an objective-c class.

**cocowaxAppDelegate.m**

    [[CCDirector sharedDirector] runWithScene: 
  	  [[[NSClassFromString(@"LuaScene") alloc] init] autorelease]];		
  	  
Creates the instance of the lua scene in objective-c and runs it as normal.

**copy-scripts.sh**

Copies the data directory with all the Lua scripts into the application bundle.



---

Extracted from the super awesome iPad game [iBots Launch](http://ibotslaunch.com)  : )