waxClass{ "LuaScene", CCScene }

function init(self)
	self.super:init()
	
	local label = CCLabelTTF:labelWithString_fontName_fontSize("Hello from Lua!", "Helvetica", 48)
	local size = CCDirector:sharedDirector():winSize()
	label:setPosition(CGPoint(size.width / 2, size.height / 2))
	label:setColor(ccc3_from(color.Gold))
	self:addChild(label)

	self:setupPhysics()
	self:addBall()
	return self
end

function setupPhysics(self)
	local smgr = SpaceManagerCocos2d:init()
	
	smgr:addWindowContainmentWithFriction_elasticity_inset(1.0, 1.0, ccp(0,0))
	smgr:setConstantDt(1/55)

	smgr:start(0)
	self.smgr = smgr
end

function addBall(self)
	ball = self.smgr:addCircleAt_mass_radius(ccp(240,160), 1.0, 10)
	ballSprite = cpCCSprite:spriteWithShape_file(ball,"ball.png")
	self:addChild(ballSprite)
	ballSprite:setIgnoreRotation(true)
end