require "TimedActions/ISBaseTimedAction"

ISSafelockAction = ISBaseTimedAction:derive("ISSafelockAction");

function ISSafelockAction:isValid()
    return true
end

function ISSafelockAction:waitToStart()
	self.character:faceThisObject(self.item)
	return self.character:shouldBeTurning()
end

function ISSafelockAction:update()
	self.character:faceThisObject(self.item)
    self.character:setMetabolicTarget(Metabolics.LightWork);
end

function ISSafelockAction:stop()
	if self.sound then
		self.character:getEmitter():stopSound(self.sound)
		self.sound = nil
	end
    ISBaseTimedAction.stop(self);
end

function ISSafelockAction:start()
	self:setActionAnim("Loot")
	self.character:SetVariable("LootPosition", "Low")
	self.character:reportEvent("EventLootItem")
    self.character:getEmitter():playSound("Safeclicking")
end

function ISSafelockAction:perform()
    local safelockModData = self.safelock:getModData()
    local spriteName = GetOppositeSprite(self.safelock:getSprite():getName())
    local index = self.safelock:getObjectIndex()
	local args = { x=self.safelock:getX(), y=self.safelock:getY(), z=self.safelock:getZ(), index=index, spriteName = spriteName }
	
	if self.isKeyLocked then
        if self.toLock then
            local newID = ZombRand(100000) + 1;
            local safeKey = self.character:getInventory():AddItem("Demiurgo.SafeKey")
            safelockModData.safeID = newID
            safeKey:getModData().safeID = newID
            self.safelock:setLockedByPadlock(true);
            self.safelock:transmitModData();
            sendClientCommand(self.character, 'Demiurgo', 'updateSprite', args)
        else
            local items = self.character:getInventory():getAllEvalRecurse(function(item) return luautils.stringStarts(item:getType(), "SafeKey") end)
            for i = 0, items:size() - 1 do
                local item = items:get(i)
                if item:getType() == "SafeKey" and item:getModData().safeID == safelockModData.safeID then
                    self.character:getInventory():Remove(item);
                    self.safelock:setLockedByPadlock(false);
                    sendClientCommand(self.character, 'Demiurgo', 'updateSprite', args)
                    break
                end
            end
        end

    else
        if self.toLock then
            safelockModData.password = self.password
            self.safelock:setLockedByPadlock(true);
            self.safelock:setSpriteFromName(spriteName);
            self.safelock:transmitUpdatedSpriteToServer();
            self.safelock:transmitModData();
            --sendClientCommand(self.character, 'Demiurgo', 'updateSprite', args)
            self.character:Say("*Combination Set to " .. safelockModData.password .. "*");
        else
            safelockModData.password = nil
            self.safelock:setLockedByPadlock(false);
            self.safelock:setSpriteFromName(spriteName);
            self.safelock:transmitUpdatedSpriteToServer();
            --sendClientCommand(self.character, 'Demiurgo', 'updateSprite', args)
        end
    end

	ISBaseTimedAction.perform(self);
end

function ISSafelockAction:new(character, safelock, toLock, isKeyLocked, password, time)
	local o = {}
	setmetatable(o, self)
	self.__index = self
	o.character = character;
	o.safelock = safelock;
	o.stopOnWalk = true;
	o.stopOnRun = true;
	o.maxTime = time;
	o.toLock = toLock;
    o.isKeyLocked = isKeyLocked;
    o.password = password;
	if character:HasTrait("Handy") then
		o.maxTime = time - 20;
    end
    if character:isTimedActionInstant() then
        o.maxTime = 1;
    end
	return o;
end