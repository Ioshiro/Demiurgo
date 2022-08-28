---@diagnostic disable: undefined-global
DemiurgoClientCommands = {}
local BuildCommands = {}
DemiurgoClientCommands.Lightpoles = {}
BuildCommands.object = {}

DemiurgoClientCommands.wantNoise = getDebug()
local noise = function(msg)
  if (DemiurgoClientCommands.wantNoise) then
    print('ClientCommand: ' .. msg)
  end
end

local getThumpableElectricLight = function(x, y, z)
  local gs = getCell():getGridSquare(x, y, z)
  if not gs then
    return nil
  end
  for i = 0, gs:getSpecialObjects():size() - 1 do
    local o = gs:getSpecialObjects():get(i)
    if o and instanceof(o, 'IsoThumpable') then
      if not o:haveFuel() then
        if o:getModData()['IsLighting'] then
          return o
        end
      end
    elseif o and instanceof(o, 'IsoLightSwitch') then
      if o:getModData()['UV'] then
        return o
      end
    end
  end
  return nil
end

BuildCommands.object.toggleElectricLight = function(player, args)
  local o = getThumpableElectricLight(args.x, args.y, args.z)
  if o then
    if o:getSquare():haveElectricity() or (SandboxVars.ElecShutModifier > -1 and GameTime:getInstance():getNightsSurvived() < SandboxVars.ElecShutModifier) then
      o:toggleLightSource(not o:isLightSourceOn())
      o:sendObjectChange('lightSource')
      if instanceof(o, 'IsoLightSwitch') then
        o:setSprite(modData["spriteOn"])
      end
    else
      o:toggleLightSource(false)
      o:sendObjectChange('lightSource')
    end
    if o:isLightSourceOn() then
      DemiurgoClientCommands.addPole(o:getSquare())
    else
      DemiurgoClientCommands.removePole(o:getSquare())
    end
  end
end

function DemiurgoClientCommands.removePole(square)
  for i, v in ipairs(DemiurgoClientCommands.Lightpoles) do
    if v.x == square:getX() and v.y == square:getY() and v.z == square:getZ() then
      table.remove(DemiurgoClientCommands.Lightpoles, i)
      break
    end
  end
end

function DemiurgoClientCommands.addPole(square)
  local Lightpole = {}
  Lightpole.x = square:getX()
  Lightpole.y = square:getY()
  Lightpole.z = square:getZ()
  table.insert(DemiurgoClientCommands.Lightpoles, Lightpole)
end

DemiurgoClientCommands.OnClientCommand = function(module, command, player, args)
  if BuildCommands[module] and BuildCommands[module][command] then
    local argStr = ''
    for k, v in pairs(args) do
      argStr = argStr .. ' ' .. k .. '=' .. tostring(v)
    end
    noise('received ' .. module .. ' ' .. command .. ' ' .. tostring(player) .. argStr)
    BuildCommands[module][command](player, args)
  end
end

function DemiurgoClientCommands.findObject(square)
  if not square then
    return nil
  end
  for i = 0, square:getSpecialObjects():size() - 1 do
    local o = square:getSpecialObjects():get(i)
    if o and instanceof(o, 'IsoThumpable') then
      if not o:haveFuel() then
        if o:getModData()['IsLighting'] then
          return o
        end
      end
    end
  end
  return nil
end

function DemiurgoClientCommands.checkPower()
  if isClient() then
    return
  end
  local temptable = DemiurgoClientCommands.Lightpoles
  for i, v in ipairs(temptable) do
    local square = getCell():getGridSquare(v.x, v.y, v.z)
    if square then
      if not (square:haveElectricity() or (SandboxVars.ElecShutModifier > -1 and GameTime:getInstance():getNightsSurvived() < SandboxVars.ElecShutModifier)) then
        local obj = DemiurgoClientCommands.findObject(square)
        if obj then
          obj:toggleLightSource(false)
          obj:sendObjectChange('lightSource')
          DemiurgoClientCommands.removePole(square)
        else
          DemiurgoClientCommands.removePole(square)
        end
      end
    end
  end
end

DemiurgoClientCommands.OnObjectAdded = function(o)
  if isClient() then
    return
  end

  if o and instanceof(o, 'IsoThumpable') then
    if not o:haveFuel() then
      if o:getModData()['IsLighting'] then
        if o:isLightSourceOn() then
          DemiurgoClientCommands.addPole(o:getSquare())
        end
      end
    end
  end
end

function DemiurgoClientCommands.OnDestroyIsoThumpable(o, player)
  if isClient() then
    return
  end
  if not o:getSquare() or not (o:getModData()['IsLighting']) then
    return
  end
  local sq = o:getSquare()
  DemiurgoClientCommands.removePole(sq)
end

Events.EveryTenMinutes.Add(DemiurgoClientCommands.checkPower)
Events.OnObjectAdded.Add(DemiurgoClientCommands.OnObjectAdded)
Events.OnDestroyIsoThumpable.Add(DemiurgoClientCommands.OnDestroyIsoThumpable)
Events.OnClientCommand.Add(DemiurgoClientCommands.OnClientCommand)