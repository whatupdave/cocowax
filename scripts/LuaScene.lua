waxClass{ "LuaScene", CCScene }

function init(self)
	self.super:init()

	local label = CCLabelTTF:labelWithString_fontName_fontSize("Hello from Lua!", "Helvetica", 48)
	local size = CCDirector:sharedDirector():winSize()
	label:setPosition(CGPoint(size.width / 2, size.height / 2))
	label:setColor(ccc3_from(color.Gold))
	self:addChild(label)

	return self
end