SafeStorage = {}

SafeStorage.OnClientCommand = function(module, command, player, args)
	if not isServer() then return end
	if module ~= "Demiurgo" then return end;

 	if command == "Say" then
        player:Say(args.saythis);
	elseif command == "SetSafeWeight" then
		local square = getWorld():getCell():getGridSquare(args.x,args.y,args.z);
		local Objs = square:getWorldObjects();
		for i=0, Objs:size()-1 do
			if Objs:get(i):getItem():getKeyId() == args.id then
				local safe = Objs:get(i):getItem():getItemContainer():getItemFromType("MetalSafe");
				safe:setActualWeight(1000.0);
				break;
			end
		end
	end
end


SafeStorage.ISMoveableCursor_isValid = ISMoveableCursor.isValid
function ISMoveableCursor:isValid(square)
    if ISMoveableCursor.mode[self.player] == "pickup" or ISMoveableCursor.mode[self.player] == "scrap" then
        local objects = self:getObjectList() -- self.objectListCache or
        if #objects > 0 then
            local object = objects[self.objectIndex]
            if object and object.object then --
                local obj = object.object
                local _, isLocked, _ = GetSafelockOptions(obj)
                if obj:getSprite() then
                    if isLocked or obj:getSprite():getProperties():Val("GroupName") == "UV" then
                        getPlayer():setHaloNote(getText("Nope:V"))
                        SafeStorage.ISMoveableCursor_isValid(self, square)
                        return false
                    end
                end
            end
        end
    end
    return SafeStorage.ISMoveableCursor_isValid(self, square)
end

SafeStorage.ISDestroyCursor_isValid = ISDestroyCursor.isValid
function ISDestroyCursor:isValid(square)
    local objects = self:getObjectList()
    if #objects > 0 then
        local object = objects[self.objectIndex]
        local _, isLocked,_ = GetSafelockOptions(object)
        if object and object:getSprite() then
            local isUv = object:getSprite():getProperties():Val("GroupName") == "UV"
            if isLocked or isUv then
                SafeStorage.ISDestroyCursor_isValid(self, square)
                return false
            end
        end
    end
    return SafeStorage.ISDestroyCursor_isValid(self, square)
end

Events.OnClientCommand.Add(SafeStorage.OnClientCommand);