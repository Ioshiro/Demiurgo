require 'ISObjectClickHandler'

ISLightSourceUV = ISBuildingObject:derive("ISLightSourceUV");

--************************************************************************--
--** ISLightSourceUV:new
--**
--************************************************************************--
function ISLightSourceUV:create(x, y, z, north, sprite)
	local cell = getWorld():getCell();
	self.sq = cell:getGridSquare(x, y, z);
	self.javaObject = IsoLightSwitch.new(cell, self.sq, getSprite(sprite), self.sq:getRoomID());
	self.javaObject:addLightSourceFromSprite();
	self.javaObject:setUseBattery(true);
	self.javaObject:setHasBatteryRaw(true);
	self.javaObject:setBulbItemRaw("Demiurgo.LightBulbUV")
	self.javaObject:setPower(100)
	self.javaObject:setDelta(0)

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
	buildUtil.consumeMaterial(self);
	self.javaObject:getModData()["need:"..self.baseItem] = "1"
	self.javaObject:getModData()["UV"] = true
    self.sq:AddSpecialObject(self.javaObject);
	self.javaObject:addToWorld();
	self.javaObject:transmitCompleteItemToServer()
	triggerEvent("OnObjectAdded", self.javaObject)
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


local function OnPlayerUpdate(player)
	local square = player:getCurrentSquare();
	--local B = 0
		--print("LIGHTPOST TOTAL B: ".. square.lighting)
		--..", G: "..square:getLampostTotalG()..", R: ".. square:getLampostTotalR() );
		--B = square:getLampostTotalB()
	
end

-- Events.OnPlayerUpdate.Add(OnPlayerUpdate)




function ISObjectClickHandler.doClickLightSwitch(object, playerNum, playerObj)
	if false then
		ISWorldObjectContextMenu.onToggleLight(nil, object, playerNum)
		return true
	end
	local playerSq = playerObj:getCurrentSquare()
	if object:getSquare():DistToProper(playerObj) >= 2 then return false end
	if playerSq:isWallTo(object:getSquare()) then return false end
	if object:getSprite():getProperties():Val("GroupName") == "UV" and object:hasLightBulb() then
	  object:setSpriteFromName(GetOppositeSprite(object:getSprite():getName()))
	  object:transmitUpdatedSpriteToServer();
	end
	object:toggle()
	return true
  end
