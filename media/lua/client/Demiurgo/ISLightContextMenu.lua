---@diagnostic disable: undefined-global
local ISLightContextMenu = {}

ISLightContextMenu.doMenu = function(player, context, worldobjects, test)
  if test and ISWorldObjectContextMenu.Test then
    return true
  end

  local thump = nil
  local square = nil
  local isUV = false

  for _, v in ipairs(worldobjects) do
    square = v:getSquare()
    if instanceof(v, 'IsoThumpable') then
      if not v:haveFuel() then
        if v:getModData()['IsLighting'] then
          thump = v
          if v:getModData()['UV'] then
            isUV = true
          end
        end
      end
    end
  end

  if test then
    return ISWorldObjectContextMenu.setTest()
  end

  if isUV then
    print("ISUV TRUE")
    local ls = thump:getLightSource()
    ls:setR(0.0)
    ls:setG(1.0)
    ls:setB(1.0)
    thump:transmitCompleteItemToServer()
  end

  if thump then
    if thump:isLightSourceOn() then
      context:addOption(getText 'ContextMenu_Turn_Off', thump, ISLightContextMenu.onToggleThumpableLight, player)
    elseif thump:getSquare():haveElectricity() or (SandboxVars.ElecShutModifier > -1 and GameTime:getInstance():getNightsSurvived() < SandboxVars.ElecShutModifier) then
      context:addOption(getText 'ContextMenu_Turn_On', thump, ISLightContextMenu.onToggleThumpableLight, player)
    end
  end
end

ISLightContextMenu.onToggleThumpableLight = function(lightSource, player)
  local playerObj = getSpecificPlayer(player)
  if luautils.walkAdj(playerObj, lightSource:getSquare()) then
    ISTimedActionQueue.add(ISToggleLight:new(playerObj, lightSource, 5))
  end
end

Events.OnFillWorldObjectContextMenu.Add(ISLightContextMenu.doMenu)