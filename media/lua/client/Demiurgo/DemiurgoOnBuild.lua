---@diagnostic disable: undefined-global
if not getDEMIInstance then
    require("Demiurgo/DemiurgoMain")
end

local DEMI = getDEMIInstance()

function DEMI.buildObject(object, name, player, recipe, options)
    object.name = name
    object.player = player

    if not recipe then
        -- TODO: default recipe
        return
    end

    -- set material requirements
    if recipe.materials ~= nil then
        for _, mat in pairs(recipe.materials) do
            if mat.Material == "Base.BlowTorch" or mat.Material == "Base.WeldingRods" or mat.Material == "Base.Wire" then
                object.modData["use:" .. mat.Material] = mat.Amount
            else
                object.modData["need:" .. mat.Material] = mat.Amount
            end
        end
    end

    -- set skill requirements
    if recipe.skills ~= nil then
        for _, skill in pairs(recipe.skills) do
            object.modData["xp:" .. skill.Skill] = skill.Amount
        end
    end

    -- equip tools
    if recipe.tools ~= nil then
        -- TODO: equip *multiple* tools? (e.g mask)
        DEMI.equipToolPrimary(object, player, recipe.tools[1])
    end

    -- set options as defined by the definition and onbuild
    if options ~= nil then
        for k, v in pairs(options) do
            local exclusions = {
                "health"
            }

            if not exclusions[k] then
                if k == "modData" then
                    for mk, mv in pairs(v) do
                        object.modData[mk] = mv
                    end
                else
                    object[k] = v
                end
            end
        end

        if options.containerType ~= nil then
            function object:getHealth()
                if options.health ~= nil then
                    return options.health
                else
                    return buildUtil.getWoodHealth(self)
                end
            end
        end
    end

    getCell():setDrag(object, player)
end

DEMI.OnBuildWoodenContainer = function(_, sprite, name, player, recipe, options)
    local obj = ISWoodenContainer:new(sprite.sprite, sprite.northSprite)

    if sprite.eastSprite then
        obj:setEastSprite(sprite.eastSprite)
    end

    if sprite.southSprite then
        obj:setSouthSprite(sprite.southSprite)
    end

    DEMI.buildObject(obj, name, player, recipe, options)
end


DEMI.OnBuildMetalContainer = function(_, sprite, name, player, recipe, options)
    local obj = ISWoodenContainer:new(sprite.sprite, sprite.northSprite)

    if sprite.eastSprite then
        obj:setEastSprite(sprite.eastSprite)
    end

    if sprite.southSprite then
        obj:setSouthSprite(sprite.southSprite)
    end

    DEMI.buildObject(obj, name, player, recipe, options)
end

DEMI.OnBuildDoubleTileFurniture = function(_, sprite, name, player, recipe, options)
    local obj = ISDoubleTileFurniture:new(name, sprite.sprite, sprite.sprite2, sprite.northSprite, sprite.northSprite2)

    if sprite.eastSprite then
        obj:setEastSprite(sprite.eastSprite)
    end

    if sprite.southSprite then
        obj:setSouthSprite(sprite.southSprite)
    end

    DEMI.buildObject(obj, name, player, recipe, options)
end


DEMI.OnBuildLRMDoubleTileFurniture = function(_, sprite, name, player, recipe, options)
    local obj = ISLRMDoubleTileFurniture:new(name, sprite.sprite, sprite.sprite2, sprite.northSprite, sprite.northSprite2)

    if sprite.eastSprite then
        obj:setEastSprite(sprite.eastSprite)
    end

    if sprite.southSprite then
        obj:setSouthSprite(sprite.southSprite)
    end

    DEMI.buildObject(obj, name, player, recipe, options)
end

DEMI.OnBuildSimpleFurniture = function(_, sprite, name, player, recipe, options)
    local obj = ISSimpleFurniture:new(name, sprite.sprite, sprite.northSprite)

    if sprite.eastSprite then
        obj:setEastSprite(sprite.eastSprite)
    end

    if sprite.southSprite then
        obj:setSouthSprite(sprite.southSprite)
    end

    DEMI.buildObject(obj, name, player, recipe, options)
end

DEMI.OnBuildWoodenDoorFrame = function(_, sprite, name, player, recipe, options)
    local obj = ISWoodenDoorFrame:new(sprite.sprite, sprite.northSprite, sprite.corner)

    obj.canBePlastered = DEMI.playerCanPlaster(player)

    DEMI.buildObject(obj, name, player, recipe, options)
end

DEMI.OnBuildWoodenDoor = function(_, sprite, name, player, recipe, options)
    local obj = ISWoodenDoor:new(sprite.sprite, sprite.northSprite, sprite.openSprite, sprite.openNorthSprite)

    obj.canBePlastered = DEMI.playerCanPlaster(player)

    DEMI.buildObject(obj, name, player, recipe, options)
end

DEMI.OnBuildGarageDoor = function(_, sprite, name, player, recipe, options)
    local obj = ISGarageDoor:new(sprite.sprite, sprite.index)

    DEMI.buildObject(obj, name, player, recipe, options)
end

DEMI.OnBuildWoodenWall = function(_, sprite, name, player, recipe, options)
    local obj = ISWoodenWall:new(sprite.sprite, sprite.northSprite, nil)

    obj.canBePlastered = DEMI.playerCanPlaster(player)

    DEMI.buildObject(obj, name, player, recipe, options)
end

DEMI.OnBuildHighMetalFence = function(_, sprite, name, player, recipe, options)
    local obj = ISHighMetalFence:new(sprite.sprite, sprite.sprite2, sprite.northSprite, sprite.northSprite2)

    DEMI.buildObject(obj, name, player, recipe, options)
end

DEMI.OnBuildImpassableHighMetalFence = function(_, sprite, name, player, recipe, options)
    local obj = ISImpassableHighMetalFence:new(sprite.sprite, sprite.sprite2, sprite.northSprite, sprite.northSprite2)

    DEMI.buildObject(obj, name, player, recipe, options)
end

DEMI.OnBuildStove = function(_, sprite, name, player, recipe, options)
    local obj = ISStove:new(sprite.sprite, sprite.northSprite, player)

    DEMI.buildObject(obj, name, player, recipe, options)
end

DEMI.OnBuildWoodenFloor = function(_, sprite, name, player, recipe, options)
    local obj = ISWoodenFloor:new(sprite.sprite, sprite.northSprite)

    -- set east and south sprite
    if sprite.eastSprite then
        obj:setEastSprite(sprite.eastSprite)
    end

    if sprite.southSprite then
        obj:setSouthSprite(sprite.southSprite)
    end

    DEMI.buildObject(obj, name, player, recipe, options)
end

DEMI.OnBuildLightSource = function(_, sprite, name, player, recipe, options)
    local obj
	if sprite.northSprite then
		obj = ISLightSource:new(sprite.sprite, sprite.northSprite, getSpecificPlayer(player))
		if sprite.eastSprite then
			obj:setEastSprite(sprite.eastSprite)
		end

		if sprite.southSprite then
			obj:setSouthSprite(sprite.southSprite)
		end
	else
		obj = ISLightSource:new(sprite.sprite, sprite.sprite, getSpecificPlayer(player))
	end
    
    --obj.javaObject:setLifeDelta(0.0000000009)
    DEMI.buildObject(obj, name, player, recipe, options)
end

DEMI.OnBuildLightSourceUV = function(_, sprite, name, player, recipe, options)
    local obj
	if sprite.northSprite then
		obj = ISLightSourceUV:new(sprite.sprite, sprite.northSprite, getSpecificPlayer(player))
		if sprite.eastSprite then
			obj:setEastSprite(sprite.eastSprite)
		end

		if sprite.southSprite then
			obj:setSouthSprite(sprite.southSprite)
		end
	else
		obj = ISLightSourceUV:new(sprite.sprite, sprite.sprite, getSpecificPlayer(player))
    end


    DEMI.buildObject(obj, name, player, recipe, options)
end


DEMI.OnBuildWoodenStairs = function(_, sprite, name, player, recipe, options)
    local obj = ISWoodenStairs:new(sprite.upToLeft01, sprite.upToLeft02, sprite.upToLeft03, sprite.upToRight01, sprite.upToRight02, sprite.upToRight03, sprite.pillar, sprite.pillarNorth)

    DEMI.buildObject(obj, name, player, recipe, options)
end

DEMI.OnBuildWindowWall = function(_, sprite, name, player, recipe, options)
    local obj = ISWindowWallObj:new(sprite.sprite, sprite.northSprite, getSpecificPlayer(player))

    DEMI.buildObject(obj, name, player, recipe, options)
end

DEMI.OnBuildWindow = function(_, sprite, name, player, recipe, options)
    local obj = ISWindowObj:new(sprite.sprite, sprite.northSprite, getSpecificPlayer(player))

    DEMI.buildObject(obj, name, player, recipe, options)
end
