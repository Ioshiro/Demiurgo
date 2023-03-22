require 'Items/ProceduralDistributions'
require 'Vehicles/Distributions'


local function initBuildGeneratorMagazineDistributions()

    local generatorItem = ScriptManager.instance:getItem("Demiurgo.Generator")

    if generatorItem then
        generatorItem:DoParam("Weight =	30")
    end
end


Events.OnPreDistributionMerge.Add(initBuildGeneratorMagazineDistributions)