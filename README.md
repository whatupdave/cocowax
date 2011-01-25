Hello world in cocos2d with iPhone Wax (Lua)
===

This shows you how you can create a cocos2d application with your application code written in [Lua](lua.org). It's set up with [cocos2d](cocos2d-iphone.org) and [iPhone Wax](http://github.com/probablycorey/wax) as git submodules and built as static libraries.


Interesting parts:
---

**main.m**

    wax_startWithExtensions(luaopen_wax_http, luaopen_wax_json, luaopen_wax_xml, nil);
    
Starts up the wax Lua environment. Also loads a few extensions.

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