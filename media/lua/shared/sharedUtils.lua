local OppositeSprites = {}
-- lampione uv on/off
OppositeSprites["la_resistenza_market_56"]="la_resistenza_market_57"
OppositeSprites["la_resistenza_market_57"]="la_resistenza_market_56"
OppositeSprites["la_resistenza_market_59"]="la_resistenza_market_58"
OppositeSprites["la_resistenza_market_58"]="la_resistenza_market_59"

-- safelock open/close
OppositeSprites["la_resistenza_market_40"]="la_resistenza_market_42"
OppositeSprites["la_resistenza_market_41"]="la_resistenza_market_43"
OppositeSprites["la_resistenza_market_42"]="la_resistenza_market_40"
OppositeSprites["la_resistenza_market_43"]="la_resistenza_market_41"
OppositeSprites["la_resistenza_market_44"]="la_resistenza_market_46"
OppositeSprites["la_resistenza_market_45"]="la_resistenza_market_47"
OppositeSprites["la_resistenza_market_46"]="la_resistenza_market_44"
OppositeSprites["la_resistenza_market_47"]="la_resistenza_market_45"
OppositeSprites["la_resistenza_market_48"]="la_resistenza_market_50"
OppositeSprites["la_resistenza_market_49"]="la_resistenza_market_51"
OppositeSprites["la_resistenza_market_50"]="la_resistenza_market_48"
OppositeSprites["la_resistenza_market_51"]="la_resistenza_market_49"

-- old safelock?
OppositeSprites["la_resistenza_market_special_0"]="la_resistenza_market_special_2"
OppositeSprites["la_resistenza_market_special_1"]="la_resistenza_market_special_3"
OppositeSprites["la_resistenza_market_special_2"]="la_resistenza_market_special_0"
OppositeSprites["la_resistenza_market_special_3"]="la_resistenza_market_special_1"
OppositeSprites["la_resistenza_market_special_4"]="la_resistenza_market_special_6"
OppositeSprites["la_resistenza_market_special_5"]="la_resistenza_market_special_7"
OppositeSprites["la_resistenza_market_special_6"]="la_resistenza_market_special_4"
OppositeSprites["la_resistenza_market_special_7"]="la_resistenza_market_special_5"
OppositeSprites["la_resistenza_market_special_8"]="la_resistenza_market_special_10"
OppositeSprites["la_resistenza_market_special_9"]="la_resistenza_market_special_11"
OppositeSprites["la_resistenza_market_special_10"]="la_resistenza_market_special_8"
OppositeSprites["la_resistenza_market_special_11"]="la_resistenza_market_special_9"


function GetSafelockOptions(object)
    local isSafelock, isKey, isLocked, isSpecial = false, false, false, false
    if object then
        if object:getSprite() then
            local spriteProperties = object:getSprite():getProperties()
            if spriteProperties:Is("CustomName") and luautils.stringStarts( spriteProperties:Val("CustomName"), "Safelock") then
                isSafelock = true
                isKey = luautils.stringEnds(spriteProperties:Val("CustomName"), "Key") or false
                isLocked = luautils.stringStarts(spriteProperties:Val("GroupName"), "Closed") or false
                isSpecial = spriteProperties:Val("PickUpWeight") == "1000" or false
            end
        end
    end
    return isSafelock,isLocked,isKey,isSpecial
end

function GetOppositeSprite(spriteName)
    return OppositeSprites[spriteName]
end
