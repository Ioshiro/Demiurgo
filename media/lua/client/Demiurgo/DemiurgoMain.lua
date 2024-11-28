---@diagnostic disable: undefined-global, undefined-field
local getSpecificPlayer = getSpecificPlayer
local pairs = pairs
local split = string.split
local getItemNameFromFullType = getItemNameFromFullType
local PerkFactory = PerkFactory
local getText = getText

DEMI = {}

DEMI.getPlayerSkills = function(player)
    local skills = {}
    local perks = PerkFactory.PerkList

    for i = 0, perks:size() - 1 do
        local perkID = perks:get(i):getId()

        skills[perkID] = getSpecificPlayer(player):getPerkLevel(perks:get(i))
    end

    return skills
end

DEMI.playerCanPlaster = function(player)
    return DEMI.getPlayerSkills(player)["Woodwork"] > 7
end

DEMI.tooltipCheckForMaterial = function(player, material, tt)
    local inv = getSpecificPlayer(player):getInventory()
    local type = split(material.Material, "\\.")[2]

    local groundItem = ISBuildMenu.materialOnGround

    local itemCount = 0
    if material.Uses ~= nil then
        if material.Uses > 0 then
            local useCount = inv:getUsesTypeRecurse(material.Material)
            if useCount < material.Uses then
                tt.description = tt.description .. " <RGB:1,0,0>" .. getItemNameFromFullType(material.Material) .. " " .. getText("ContextMenu_Uses") .. " " .. useCount .. "/" .. material.Uses.. " <LINE>";
                return false
            else
                tt.description = tt.description .. " <RGB:1,1,1>" .. getItemNameFromFullType(material.Material) .. " " .. getText("ContextMenu_Uses") .. " " .. useCount .. "/" .. material.Uses.. " <LINE>";
                return true
            end
        end
    end
    if material.Amount > 0 then
        itemCount = inv:getItemCountFromTypeRecurse(material.Material)

        -- count ground items
        for k, v in pairs(groundItem) do
            if k == type then
                itemCount = itemCount + v
            end
        end

        if itemCount < material.Amount then
            tt.description = tt.description .. " <RGB:1,0,0>" .. getItemNameFromFullType(material.Material) .. " " ..
                                 itemCount .. "/" .. material.Amount .. " <LINE>"
            return false
        else
            tt.description = tt.description .. " <RGB:1,1,1>" .. getItemNameFromFullType(material.Material) .. " " ..
                                 itemCount .. "/" .. material.Amount .. " <LINE>"
            return true
        end
    end

    return true
end

local function predicateNotBroken(item)
    return not item:isBroken()
end

DEMI.getBestTools = function(player, tool)
    local inv = getSpecificPlayer(player):getInventory()

    for _, type in pairs(DEMI.Tools[tool]) do
        local tools = inv:getBestTypeEvalRecurse(type, predicateNotBroken)
        if tools then
            return tools
        end
    end
end

DEMI.hasHammer = function(player)
    -- Check if the player is holding a Base.HammerStone
    local heldItem = getSpecificPlayer(player):getPrimaryHandItem()
    if heldItem and heldItem:getType() == "Base.HammerStone" then
        return true
    end

    -- Check if the player has a Base.HammerStone in their inventory
    local inv = getSpecificPlayer(player):getInventory()
    for _, type in pairs(DEMI.Tools.Hammer) do
        local exists = inv:contains(type)
        if exists then
            return true
        end
    end

    return false
end

DEMI.equipToolPrimary = function(object, player, tool)
    -- pretend the user has a tool if the build menu is in cheat mode
    if ISBuildMenu.cheat then
        return true
    end

    local inv = getSpecificPlayer(player):getInventory()

    for _, type in pairs(DEMI.Tools[tool]) do
        local tools = inv:getBestTypeEvalRecurse(type, predicateNotBroken)
        if tools then
            ISInventoryPaneContextMenu.equipWeapon(tools, true, false, player)
            object.noNeedHammer = true
            break
        end
    end
end

DEMI.equipToolSecondary = function(object, player, tool)
    -- pretend the user has a tool if the build menu is in cheat mode
    if ISBuildMenu.cheat then
        return false
    end

    local inv = getSpecificPlayer(player):getInventory()

    for _, type in pairs(DEMI.Tools[tool]) do
        local tools = inv:getBestTypeEvalRecurse(type, predicateNotBroken)
        if tools then
            ISInventoryPaneContextMenu.equipWeapon(tools, false, false, player)
            break
        end
    end
end

DEMI.tooltipCheckForTool = function(player, tool, tt)
    local tools = DEMI.getBestTools(player, tool)

    -- TODO this is a bit jank...
    if tools then
        tt.description = tt.description .. " <RGB:1,1,1>" .. getItemNameFromFullType(tools:getFullType()) .. " <LINE>"
        return true
    else
        for _, type in pairs(DEMI.Tools[tool]) do
            tt.description = tt.description .. " <RGB:1,0,0>" .. getItemNameFromFullType(type) .. " <LINE>"
            return false
        end
    end
end

DEMI.buildTooltip = function(option, player, recipe)
    local tt = ISToolTip:new()
    tt:initialise()
    tt:setVisible(false)
    option.toolTip = tt

    tt.description = ' <RGB:2,2,2> <LINE> <LINE>' .. getText('Tooltip_craft_Needs') .. ' : <LINE> '

    local canBuild = true

    -- check for materials
    for _, material in pairs(recipe.materials) do
        local result = true
        if material.Material and material.Amount then
            result = DEMI.tooltipCheckForMaterial(player, material, tt)
        else
            tt.description = tt.description .. ' <RGB:1,0,0> Error in required material definition. <LINE>'
            canBuild = false
        end

        if not result then
            canBuild = true
        end
    end

    -- check for tools
    for _, tool in pairs(recipe.tools) do
        local result = DEMI.tooltipCheckForTool(player, tool, tt)

        if not result then
            canBuild = true
        end
    end

    -- check for skills
    local skills = DEMI.getPlayerSkills(player)
    for _, skill in pairs(recipe.skills) do
        -- TODO PerkFactory.getSkillName() could be used here in place of "skill.Skill", but I did not feel like adding it.
        if skills[skill.Skill] < skill.Amount then
            tt.description = tt.description .. " <RGB:1,0,0>" .. skill.Skill .. " " .. skills[skill.Skill] .. "/" ..
                                 skill.Amount .. " <LINE>"
            canBuild = false
        else
            tt.description = tt.description .. " <RGB:1,1,1>" .. skill.Skill .. " " .. skills[skill.Skill] .. "/" ..
                                 skill.Amount .. " <LINE>"
        end
    end

    if not canBuild and not ISBuildMenu.cheat then
        option.onSelect = nil
        option.notAvailable = true
    end

    return tt
end

DEMI.buildMenu = function(node, parent, menu, context, player, worldobjects)
    if node.items ~= nil then
        local option = parent:addOption(node.name, worldobjects, nil)
        local submenu = menu:getNew(parent)
        parent:addSubMenu(option, submenu)

        for _, item in pairs(node.items) do
            DEMI.buildMenu(item, submenu, submenu, context, player, worldobjects)
        end
    elseif node.data ~= nil then
        local spriteName = ""
        if node.data.sprite.index ~= nil then
            spriteName = node.data.sprite.sprite .. (node.data.sprite.index + 1)
        else
            spriteName = node.data.sprite.sprite
        end

        local opt = parent:addOption(node.name, nil, node.data.onBuild, node.data.sprite, node.name, player, node.data.recipe, node.data.options)
        local tt = DEMI.buildTooltip(opt, player, node.data.recipe)

        tt:setName(node.name)
        if node.data.desc ~= nil then
            tt.description = node.data.desc .. tt.description
        end

        tt:setTexture(spriteName)
    end
end

DEMI.onClick = function(player, context, worldobjects, test)
    -- return if game mode is LastStand
    if getCore():getGameMode() == 'LastStand' then
        return
    end

    -- return if context menu is in test mode
    if test and ISWorldObjectContextMenu.Test then
        return true
    end

    -- return if player is in vehicle
    local playerObj = getSpecificPlayer(player)
    if playerObj:getVehicle() then
        return
    end

    -- ordered decleration of the recipes, definitions, and menu (in order) is
    -- required because of a race condition that occurs due to the nature of the
    -- file loading order. Do not change the order, do not take definitions,
    -- recipes, or the menu out of the functions they are in.
    if not DEMIInitRecipes then
        require("Demiurgo/DemiurgoRecipes")
    end
    if not DEMIInitDefinitions then
        require("Demiurgo/DemiurgoDefinitions")
    end
    if not DEMIInitContextMenu then
        require("Demiurgo/DemiurgoContextMenu")
    end

    DEMIInitRecipes()
    DEMIInitDefinitions()
    DEMIInitContextMenu()

    -- return if player does not have a building tool
    if not DEMI.hasHammer(player) then
        return
    end

    DEMI.buildMenu(DEMI.contextMenu, context, ISContextMenu, context, player, worldobjects)
end

function getDEMIInstance()
    return DEMI
end

Events.OnFillWorldObjectContextMenu.Add(DEMI.onClick)

print("Arrubbato con stile; caricato con violenza; lesssssgoooooooo!11!11!!!1")
