require "Map/CGlobalObjectSystem"

CUVSystem = CGlobalObjectSystem:derive("CUVSystem")

function CUVSystem:new()
	local o = CGlobalObjectSystem.new(self, "uvlamp")
	return o
end

function CUVSystem:isValidIsoObject(isoObject)
	return instanceof(isoObject, "IsoObject") and isoObject:getName() == "Lamp"
end

function CUVSystem:newLuaObject(globalObject)
	return CUVGlobalObject:new(self, globalObject)
end

CGlobalObjectSystem.RegisterSystemClass(CUVSystem)

