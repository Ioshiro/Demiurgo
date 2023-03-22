---@diagnostic disable: undefined-global
require 'TimedActions/ISBaseTimedAction'

ISToggleLight = ISBaseTimedAction:derive('ISToggleLight')

function ISToggleLight:isValid()
  return true
end

function ISToggleLight:start()
end

function ISToggleLight:update()
end

function ISToggleLight:stop()
  ISBaseTimedAction.stop(self)
end

function ISToggleLight:perform()
  if instanceof(lightsource, "IsoThumpable") then
    if isClient() then
    --  local sq = self.lightSource:getSquare()
    --  local args = {x = sq:getX(), y = sq:getY(), z = sq:getZ()}
    --  sendClientCommand(self.character, 'object', 'toggleLight', args) -- toggleElectricLight old
      DemiurgoClientCommands.addPole(self.lightSource:getSquare())
      self.lightSource:toggleLightSource(not self.lightSource:isLightSourceOn())
    else
      DemiurgoClientCommands.addPole(self.lightSource:getSquare())
      self.lightSource:toggleLightSource(not self.lightSource:isLightSourceOn())
    end
  end
  if self.lightSource:getSprite():getProperties():Val("GroupName") == "UV" then
    self.lightSource:setSpriteFromName(GetOppositeSprite(self.lightSource:getSprite():getName()))
    self.lightSource:toggle()
    self.lightSource:transmitUpdatedSpriteToServer();
    if self.lightSource:isActivated() then
        self.lightSource:addToWorld()
    end
  end
  ISBaseTimedAction.perform(self)
end

function ISToggleLight:new(character, lightSource, time)
  local o = ISBaseTimedAction.new(self, character)
  o.stopOnWalk = true
  o.stopOnRun = true
  o.maxTime = time
  o.lightSource = lightSource
  return o
end



-- OVERWRITES --

function ISLightActions:performRemoveLightBulb()
  if self:isValidRemoveLightBulb() then
  if self.lightswitch:getBulbItem() == "Demiurgo.LightBulbUV" and self.lightswitch:isActivated() then
    self.lightswitch:setSpriteFromName(GetOppositeSprite(self.lightswitch:getSprite():getName()))
    self.lightswitch:transmitUpdatedSpriteToServer();
  end
      self.lightswitch:removeLightBulb(self.character);
  end
end
