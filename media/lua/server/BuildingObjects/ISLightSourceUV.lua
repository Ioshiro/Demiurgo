--***********************************************************
--**                    ROBERT JOHNSON                     **
--***********************************************************

ISLightSourceUV = ISBuildingObject:derive("ISLightSourceUV");

--************************************************************************--
--** ISLightSourceUV:new
--**
--************************************************************************--
function ISLightSourceUV:create(x, y, z, north, sprite)
	local cell = getWorld():getCell();
	self.sq = cell:getGridSquare(x, y, z);
	-- self.javaObject = IsoLightSwitch.new(cell, self.sq, sprite, north, self);
	--self.javaObject = (IsoLightSwitch)IsoObject.new(cell, self.sq, sprite);
	--self.javaObject = IsoObject.new(cell, self.sq, sprite);
	self.javaObject = IsoLightSwitch.new(cell, self.sq, getSprite(sprite), self.sq:getRoomID());
	self.javaObject:addLightSourceFromSprite();
	self.javaObject:setUseBattery(true);
    --obj:getCustomSettingsFromItem(_item);
	--buildUtil.setInfo(self.javaObject, self);
	--self.javaObject:setModData(copyTable(self.modData));
    -- light stuff
    local offsetX = 0;
    local offsetY = 0;
    if self.east then
        offsetX = self.offsetX;
    elseif self.west then
        offsetX = -self.offsetX;
    elseif self.south then
        offsetY = self.offsetY;
    elseif self.north then
        offsetY = -self.offsetY;
    end
    local baseItem = self.character:getInventory():getFirstTypeRecurse(self.baseItem)
    if not baseItem then
        local itemsOnGround = buildUtil.getMaterialOnGround(self.sq)
        baseItem = itemsOnGround[self.baseItem] and itemsOnGround[self.baseItem][1] or nil
    end
	--self.javaObject:addLightSourceFromSprite()
    --self.javaObject:createLightSource(self.radius, offsetX, offsetY, 0, 0, self.fuel, baseItem, self.character);

	--    self.javaObject:setLifeDelta(0.000009);
	-- to modify lightswitch to be usable with batteries:
	-- lightswitch:setUseBattery(true);
    -- set the remaining life to the light source
    --self.javaObject:getLightSource():insertNewFuel(getPlayer():getIventory():FindAndReturn("Torch"), getPlayer());

	buildUtil.consumeMaterial(self);
	self.javaObject:getModData()["need:"..self.baseItem] = "1"
	self.javaObject:getModData()["UV"] = true
	self.javaObject:getModData()["spriteOff"] = "lrm_lights_0"
	self.javaObject:getModData()["spriteOn"] = "lrm_lights_on_0"
	-- the wooden wall have 100 base health + 100 per carpentry lvl
	--self.javaObject:setMaxHealth(self:getHealth());
	--self.javaObject:setHealth(self.javaObject:getMaxHealth());
	-- the sound that will be played when our door frame will be broken
	--self.javaObject:setBreakSound("BreakObject");
	-- add the item to the ground
    self.sq:AddSpecialObject(self.javaObject);
	self.javaObject:transmitCompleteItemToServer()

end

function ISLightSourceUV:new(sprite, northSprite, player)
	local o = {};
	setmetatable(o, self);
	self.__index = self;
	o:init();
	o:setSprite(sprite);
	o:setNorthSprite(northSprite);
	o.canBarricade = false;
	o.dismantable = true;
    o.character = player;
    o.name = "UV Lamp"
    o.blockAllTheSquare = false;
	return o;
end

-- return the health of the new container, it's 100 + 100 per carpentry lvl
function ISLightSourceUV:getHealth()
	return 100 + buildUtil.getWoodHealth(self);
end

function ISLightSourceUV:isValid(square)
	if not self:haveMaterial(square) then return false end
    if buildUtil.stairIsBlockingPlacement( square, true ) then return false; end
	if square:isVehicleIntersecting() then return false end
	return square:isFree(true)
--	return ISBuildingObject.isValid(self, square, north);
end

function ISLightSourceUV:render(x, y, z, square)

	ISBuildingObject.render(self, x, y, z, square)
end

function ISLightSourceUV:getLightSource()
	return self.javaObject:getLightSource()
end
