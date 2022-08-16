---@diagnostic disable: undefined-global
require 'TimedActions/ISBaseTimedAction'

ISToggleLight = ISBaseTimedAction:derive('ISToggleLight')

function ISToggleLight:isValid()
  if self.lightSource:getSquare():haveElectricity() or (SandboxVars.ElecShutModifier > -1 and GameTime:getInstance():getNightsSurvived() < SandboxVars.ElecShutModifier) or self.lightSource:isLightSourceOn() then
    return true
  end
  return false
end

function ISToggleLight:start()
end

function ISToggleLight:update()
end

function ISToggleLight:stop()
  ISBaseTimedAction.stop(self)
end

function ISToggleLight:perform()
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
  local modData = self.lightSource:getModData()
  if self.lightSource:isLightSourceOn() then
    self.lightSource:setSprite(modData["spriteOn"])
  else
    self.lightSource:setSprite(modData["spriteOff"])
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