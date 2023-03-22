require "TimedActions/ISBaseTimedAction"

ISUVAction = ISBaseTimedAction:derive("ISUVAction");

function ISUVAction:isValid()
    return true
end


function ISUVAction:update()
end

function ISUVAction:stop()
end

function ISUVAction:start()
end

function ISUVAction:perform()
   
    local args = {x = self.sq:getX(), y = self.sq:getY(), z = self.sq:getZ()}
    CUVSystem.instance:sendCommand(self.character, 'addUV', args)
	ISBaseTimedAction.perform(self);
end

function ISUVAction:new(character, sq, time)
	local o = {}
	setmetatable(o, self)
	self.__index = self
	o.character = character;
	o.stopOnWalk = true;
	o.stopOnRun = true;
	o.maxTime = time;
    o.sq = sq;
    return o
end