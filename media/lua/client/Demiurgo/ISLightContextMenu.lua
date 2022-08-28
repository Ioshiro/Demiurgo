---@diagnostic disable: undefined-global
local ISLightContextMenu = {}

ISLightContextMenu.doMenu = function(player, context, worldobjects, test)
  if test and ISWorldObjectContextMenu.Test then
    return true
  end

  local thump = nil
  local square = nil
  local isUV = false
  local lightSwitch = nil
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

    if v:getModData()['UV'] then
      isUV = true
      lightSwitch = v
      print("ISUV TRUE")
    end

  end

  if test then
    return ISWorldObjectContextMenu.setTest()
  end

  if isUV then
    context:removeOptionByName(getText("ContextMenu_AddLightbulb"))
    local playerObj = getSpecificPlayer(player)
    local items = playerObj:getInventory():getAllEvalRecurse(function(item) return luautils.stringStarts(item:getType(), "LightBulbUV") end)
    -- ADD BULB OPTION
    local cache = {};
    local found = false;
    for i=0, items:size()-1 do
        local testitem = items:get(i);
        if cache[testitem:getType()]==nil then
            cache[testitem:getType()]=testitem;
            found = true;
        end
    end

    if found then
      local bulbOption = context:insertOptionBefore(getText("ContextMenu_Walk_to"), getText("ContextMenu_AddLightbulb"), worldobjects, nil);
        local subMenuBulb = ISContextMenu:getNew(context);
        context:addSubMenu(bulbOption, subMenuBulb);
        for _,bulb in pairs(cache) do
            subMenuBulb:addOption(bulb:getName(), worldobjects, ISWorldObjectContextMenu.onLightBulb, lightSwitch, player, false, bulb);
        end
    end

  end

  if thump then
    if thump:isLightSourceOn() then
      context:addOption(getText 'ContextMenu_Turn_Off', thump, ISLightContextMenu.onToggleThumpableLight, player)
    elseif thump:getSquare():haveElectricity() or (SandboxVars.ElecShutModifier > -1 and GameTime:getInstance():getNightsSurvived() < SandboxVars.ElecShutModifier) then
      context:addOption(getText 'ContextMenu_Turn_On', thump, ISLightContextMenu.onToggleThumpableLight, player)
    end
  elseif lightSwitch then
    if lightSwitch:isActivated() then
      context:addOption(getText 'ContextMenu_Turn_Off', lightSwitch, ISLightContextMenu.onToggleIsoLightSwitch, player)      
    elseif lightSwitch:getHasBattery() then 
      context:addOption(getText 'ContextMenu_Turn_On', lightSwitch, ISLightContextMenu.onToggleIsoLightSwitch, player)
    end
  end
end

ISLightContextMenu.onToggleThumpableLight = function(lightSource, player)
  local playerObj = getSpecificPlayer(player)
  if luautils.walkAdj(playerObj, lightSource:getSquare()) then
    ISTimedActionQueue.add(ISToggleLight:new(playerObj, lightSource, 5))
  end
end

ISLightContextMenu.onToggleIsoLightSwitch = function(lightSwitch, player)
  local playerObj = getSpecificPlayer(player)
  if luautils.walkAdj(playerObj, lightSwitch:getSquare()) then
    ISTimedActionQueue.add(ISToggleLight:new(playerObj, lightSwitch, 5))
  end
end

Events.OnFillWorldObjectContextMenu.Add(ISLightContextMenu.doMenu)