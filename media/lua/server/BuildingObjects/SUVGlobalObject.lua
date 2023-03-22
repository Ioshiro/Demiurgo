
if isClient() then return end

require "Map/SGlobalObject"

SUVGlobalObject = SGlobalObject:derive("SUVGlobalObject")

function SUVGlobalObject:new(luaSystem, globalObject)
	local o = SGlobalObject.new(self, luaSystem, globalObject)
	return o
end

function SUVGlobalObject:initNew()
	self.qualcosa = "qualcosa"
end

function SUVGlobalObject:stateFromIsoObject(isoObject)
	-- This is called for IsoObjects that did not have a Lua object when loaded.
	-- This can happen when the gos_NAME.bin file was deleted.
	-- This is where you would init the fields of this Lua object from
	-- isoObject:getModData().
	print("override this method")
end

function SUVGlobalObject:stateToIsoObject(isoObject)
	-- This is called for IsoObjects that already have a Lua object.
	-- This is where you would synchronize the state of the IsoObject
	-- with this Lua object's current state.
	print("override this method")
end