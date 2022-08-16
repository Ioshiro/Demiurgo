if not getDEMIInstance then
    require("Demiurgo/DemiurgoMain")
end

local DEMI = getDEMIInstance()

function DEMIInitDefinitions()
    DEMI.Tools = {
        Hammer = {
            "Base.Hammer",
            "Base.HammerStone",
            "Base.BallPeenHammer",
            "Base.WoodenMallet",
            "Base.ClubHammer"
        },
        Screwdriver = {
            "Base.Screwdriver"
        },
        HandShovel = {
            "farming.HandShovel"
        },
        Saw = {
            "Base.Saw",
            "Base.GardenSaw"
        },
        Shovel = {
            "Base.Shovel",
            "Base.Shovel2"
        }
    }

    if not DEMI.InitStructureDefs then
        require("Demiurgo/definitions/DemiurgoStructure")
    end
    if not DEMI.InitDecorationDefs then
        require("Demiurgo/definitions/DemiurgoDecoration")
    end
    if not DEMI.InitFurnitureDefs then
        require("Demiurgo/definitions/DemiurgoFurniture")
    end

    DEMI.InitStructureDefs()
    DEMI.InitDecorationDefs()
    DEMI.InitFurnitureDefs()

end