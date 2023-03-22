require "Map/CGlobalObject"

CUVGlobalObject = CGlobalObject:derive("CUVGlobalObject")

function CUVGlobalObject:new(luaSystem, globalObject)
	local o = CGlobalObject.new(self, luaSystem, globalObject)
	return o
end

function CUVGlobalObject:getObject()
	return self:getIsoObject()
end