require('NPCs/MainCreationMethods');
require('sharedUtils')


local ISSafeStorageContextMenu = {}
ISSafeStorageContextMenu.DigitNumber = 5;
ISSafeStorageContextMenu.EnteredDigits = "";
ISSafeStorageContextMenu.EnteredCount = 0;
ISSafeStorageContextMenu.GetPassword = false;
ISSafeStorageContextMenu.SetPassword = false;
ISSafeStorageContextMenu.Safelock = nil;


ISSafeStorageContextMenu.doMenu = function(player, context, worldObjects, test)
    local safelock = nil
    local isSafelock, isKey, isLocked, isSpecial = false, false, false, false

    for _,v in ipairs(worldObjects) do
        isSafelock, isLocked, isKey, isSpecial = GetSafelockOptions(v)
        if isSafelock then
            safelock = v
            break
        end
    end

    if safelock then
        context:removeOptionByName(getText 'ContextMenu_Disassemble')
        if isLocked then
            if isKey then
                context:addOption(getText 'ContextMenu_RemovePadlock', safelock, ISSafeStorageContextMenu.toggleSafelockKey, player, true)
            else
                context:addOption(getText 'ContextMenu_RemoveCombinationPadlock', safelock, ISSafeStorageContextMenu.toggleSafelockPsw, player, true)
            end
        else
            if isKey then
                context:addOption(getText 'ContextMenu_PutPadlock', safelock, ISSafeStorageContextMenu.toggleSafelockKey, player, false)
            else
                context:addOption(getText 'ContextMenu_PutCombinationPadlock', safelock, ISSafeStorageContextMenu.toggleSafelockPsw, player, false)
            end
        end
    end
end

ISSafeStorageContextMenu.toggleSafelockKey = function(safelock, player, isLocked)
    local playerObj = getSpecificPlayer(player)
    if isLocked then
        local items = playerObj:getInventory():getAllEvalRecurse(function(item) return luautils.stringStarts(item:getType(), "SafeKey") end)
        local safeID = safelock:getModData().safeID
        for i = 0, items:size() - 1 do
            local item = items:get(i)
            if item:getType() == "SafeKey" and item:getModData().safeID == safeID then
                ISTimedActionQueue.add(ISSafelockAction:new(playerObj, safelock, false, true, nil, 200))
                return
            end
        end
        playerObj:Say("I don't have the right key. . .")
    else
        ISTimedActionQueue.add(ISSafelockAction:new(playerObj, safelock, true, true, nil, 200))
    end
end

ISSafeStorageContextMenu.toggleSafelockPsw = function(safelock, player, isLocked)
    local playerObj = getSpecificPlayer(player)
    playerObj:Say("*Enter " .. tostring(ISSafeStorageContextMenu.DigitNumber).. " Digit Combination* \n *End key or move to Cancel*");
    ISSafeStorageContextMenu.Safelock = safelock
    if isLocked then
        ISSafeStorageContextMenu.GetPassword = true;
        ISSafeStorageContextMenu.SetPassword = false;
    else
        ISSafeStorageContextMenu.SetPassword = true;
        ISSafeStorageContextMenu.GetPassword = false;
    end
    Events.OnKeyPressed.Add(ISSafeStorageContextMenu.ListenCombo)
    Events.OnPlayerMove.Add(ISSafeStorageContextMenu.StopListening);
    ISSafeStorageContextMenu.EnteredDigits = ""
    ISSafeStorageContextMenu.EnteredCount = 0;
   
end

ISSafeStorageContextMenu.ListenCombo = function(keynum)
	local player = getPlayer();
	--[[
			1 = 2 or 79
			2 = 3 or 80
			3 = 4 or 81
			4 = 5 or 75
			5 = 6 or 76
			6 = 7 or 77
			7 = 8 or 71
			8 = 9 or 72
			9 = 10 or 73
			0 = 11 or 82
	]]

	if (ISSafeStorageContextMenu.EnteredCount < ISSafeStorageContextMenu.DigitNumber) then

		if(keynum == 2) or (keynum == 79) then
            ISSafeStorageContextMenu.EnteredCount = ISSafeStorageContextMenu.EnteredCount + 1;
            ISSafeStorageContextMenu.EnteredDigits = ISSafeStorageContextMenu.EnteredDigits .. "1";
		elseif(keynum == 3) or (keynum == 80) then
            ISSafeStorageContextMenu.EnteredCount = ISSafeStorageContextMenu.EnteredCount + 1;
            ISSafeStorageContextMenu.EnteredDigits = ISSafeStorageContextMenu.EnteredDigits .. "2";
		elseif(keynum == 4) or (keynum == 81) then
            ISSafeStorageContextMenu.EnteredCount = ISSafeStorageContextMenu.EnteredCount + 1;
            ISSafeStorageContextMenu.EnteredDigits = ISSafeStorageContextMenu.EnteredDigits .. "3";
		elseif(keynum == 5) or (keynum == 75) then
            ISSafeStorageContextMenu.EnteredCount = ISSafeStorageContextMenu.EnteredCount + 1;
            ISSafeStorageContextMenu.EnteredDigits = ISSafeStorageContextMenu.EnteredDigits .. "4";
		elseif(keynum == 6) or (keynum == 76) then
            ISSafeStorageContextMenu.EnteredCount = ISSafeStorageContextMenu.EnteredCount + 1;
            ISSafeStorageContextMenu.EnteredDigits = ISSafeStorageContextMenu.EnteredDigits .. "5";
		elseif(keynum == 7) or (keynum == 77) then
            ISSafeStorageContextMenu.EnteredCount = ISSafeStorageContextMenu.EnteredCount + 1;
            ISSafeStorageContextMenu.EnteredDigits = ISSafeStorageContextMenu.EnteredDigits .. "6";
		elseif(keynum == 8) or (keynum == 71) then
            ISSafeStorageContextMenu.EnteredCount = ISSafeStorageContextMenu.EnteredCount + 1;
            ISSafeStorageContextMenu.EnteredDigits = ISSafeStorageContextMenu.EnteredDigits .. "7";
		elseif(keynum == 9) or (keynum == 72) then
            ISSafeStorageContextMenu.EnteredCount = ISSafeStorageContextMenu.EnteredCount + 1;
            ISSafeStorageContextMenu.EnteredDigits = ISSafeStorageContextMenu.EnteredDigits .. "8";
		elseif(keynum == 10) or (keynum == 73) then
            ISSafeStorageContextMenu.EnteredCount = ISSafeStorageContextMenu.EnteredCount + 1;
            ISSafeStorageContextMenu.EnteredDigits = ISSafeStorageContextMenu.EnteredDigits .. "9";
		elseif(keynum == 11) or (keynum == 82) then
            ISSafeStorageContextMenu.EnteredCount = ISSafeStorageContextMenu.EnteredCount + 1;
            ISSafeStorageContextMenu.EnteredDigits = ISSafeStorageContextMenu.EnteredDigits .. "0";
		elseif(keynum == 207) then
            ISSafeStorageContextMenu.StopListening()
            getPlayer():Say("*Setting Canceled* ");
            sendClientCommand(getPlayer(), "Demiurgo", "Say", {saythis = "*Setting Canceled* "});	
		end
		getPlayer():Say(tostring(ISSafeStorageContextMenu.EnteredDigits));
		sendClientCommand(getPlayer(), "Demiurgo", "Say", {saythis = tostring(ISSafeStorageContextMenu.EnteredCount)});
        if (ISSafeStorageContextMenu.EnteredCount == ISSafeStorageContextMenu.DigitNumber) then
                ISSafeStorageContextMenu.StopListening()
            if ISSafeStorageContextMenu.Safelock and ISSafeStorageContextMenu.SetPassword then
                ISTimedActionQueue.add(ISSafelockAction:new(player, ISSafeStorageContextMenu.Safelock, true, false, ISSafeStorageContextMenu.EnteredDigits, 200))
                
            elseif ISSafeStorageContextMenu.Safelock and ISSafeStorageContextMenu.GetPassword then
                if ISSafeStorageContextMenu.EnteredDigits == ISSafeStorageContextMenu.Safelock:getModData().password then
                    ISTimedActionQueue.add(ISSafelockAction:new(player, ISSafeStorageContextMenu.Safelock, false, false, ISSafeStorageContextMenu.EnteredDigits, 200))
                else
                    getPlayer():Say("*Incorrect Combination* ");
                    sendClientCommand(getPlayer(), "Demiurgo", "Say", {saythis = "*Incorrect Combination*"});           
                end
            end
        end
    end
end

ISSafeStorageContextMenu.StopListening = function()
    Events.OnKeyPressed.Remove(ISSafeStorageContextMenu.ListenCombo)
    Events.OnPlayerMove.Remove(ISSafeStorageContextMenu.StopListening);
end

Events.OnFillWorldObjectContextMenu.Add(ISSafeStorageContextMenu.doMenu)