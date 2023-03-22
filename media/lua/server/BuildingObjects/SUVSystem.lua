if isClient() then return end

require "Map/SGlobalObjectSystem"

SUVSystem = SGlobalObjectSystem:derive("SUVSystem")

function SUVSystem:new()
	local o = SGlobalObjectSystem.new(self, "uvlamp")
	return o
end

function SUVSystem:initSystem()
	SGlobalObjectSystem.initSystem(self)

	-- Specify GlobalObjectSystem fields that should be saved.
	self.system:setModDataKeys({})
	
	-- Specify GlobalObject fields that should be saved.
	self.system:setObjectModDataKeys({'qualcosa'})

	--self:convertOldModData()
end


function SUVSystem:newLuaObject(globalObject)
	return SUVGlobalObject:new(self, globalObject)
end

function SUVSystem:isValidIsoObject(isoObject)
	return instanceof(isoObject, "IsoLightSwitch")
end

function SUVSystem:addUV(grid)
	if not grid then return end
	if self:getIsoObjectOnSquare(grid) then return nil end

	local luaObject = self:newLuaObjectOnSquare(grid)
	luaObject:initNew()
	luaObject:addObject()
	luaObject:getIsoObject():transmitCompleteItemToClients()

	self:noise("#uvlamps="..self:getLuaObjectCount())
	luaObject:saveData()
	return luaObject;
end

function SUVSystem:OnClientCommand(command, playerObj, args)
	DemiurgoClientCommands.OnClientCommand(command, playerObj, args)
	SUVSystem:addUV(getCell():getGridSquare(args.x, args.y, args.z))
end


SGlobalObjectSystem.RegisterSystemClass(SUVSystem)