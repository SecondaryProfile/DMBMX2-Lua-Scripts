local core = {}
local posMult = 1e2 -- multiplier for position values. all would be the same


--- the game ID.
core.game_ID = ReadValueString(0x0, 6)

local function gameIsDM2()
    local valid_game_IDs = {"GBXP51", "GBXE51"}
    for index, value in ipairs(valid_game_IDs) do
        if value == core.game_ID then
            return true
        end
    end
    return false
end
core.gameIsDM2 = gameIsDM2


local function getPlayerSpeed()
    return ReadValueFloat(0x001EB834) * 1e43
end
core.getPlayerSpeed = getPlayerSpeed

local function getXpos()
    return ReadValueFloat(0x001862C0) * posMult
end
core.getXpos = getXpos

local function getYpos()
    return ReadValueFloat(0x001862C4) * posMult
end
core.getYpos = getYpos

local function getZpos()
    return ReadValueFloat(0x001862C8) * posMult
end
core.getZpos = getZpos

-- local function getSessionCounter()
--     return ReadValueFloat(0x00185FB8) * 1e43
-- end
-- core.getSessionCounter = getSessionCounter

local function isAirborne()
    airValue = ReadValueFloat(0x001E7D48)
    if airValue < 5e-45 then
        airValue = "No"
    else
        airValue = "Yes"
    end
    return airValue
end
core.isAirborne = isAirborne

local function getCharacter()
    local characterValue = ReadValue16(0x0022022A)
    if characterValue == 0 then
        characterName= "Dave Mirra"
    elseif characterValue == 1 then
        characterName= "Ryan Nyquist"
    elseif characterValue == 2 then
        characterName= "Troy McMurray"
    elseif characterValue == 3 then
        characterName= "Mike Laird"
    elseif characterValue == 4 then
        characterName= "Tim Mirra"
    elseif characterValue == 5 then
        characterName= "Kenen Harkin"
    elseif characterValue == 6 then
        characterName= "Leigh Ramsdell"
    elseif characterValue == 7 then
        characterName= "Joey Garcia"
    elseif characterValue == 8 then
        characterName= "Rick M."
    elseif characterValue == 9 then
        characterName= "Todd Lyons"
    elseif characterValue == 10 then
        characterName= "Luc-E"
    elseif characterValue == 11 then
        characterName= "Scott Wirch"
    elseif characterValue == 12 then
        characterName= "Colin Mackay"
    elseif characterValue == 13 then
        characterName= "Zach Shaw"
    elseif characterValue == 14 then
        characterName= "Slim Jim Guy"
    else
        characterName= "N/A"
    end
    characterRead = characterName .. " (" .. characterValue .. ")"
    return characterRead
end
core.getCharacter = getCharacter

local function getBike()
    local bikeValue = ReadValue16(0x00220232)
    if bikeValue == 0 then
        bikeName= "Base Bike (1)"
    elseif bikeValue == 1 then 
        bikeName= "Bike 2"
    elseif bikeValue == 2 then
        bikeName= "Bike 3"
    elseif bikeValue == 3 then
        bikeName= "Bike 4"
    elseif bikeValue == 4 then
        bikeName= "Max Bike (5)"
    else
        bikeName = "N/A"
    end
    return bikeName
end
core.getBike = getBike

local function getStage()
    local stageValue = ReadValue16(0x0022088A)
    if stageValue == 0 then
        stageName= "Woodward"
    elseif stageValue == 1 then
        stageName= "Trainyards"
    elseif stageValue == 2 then
        stageName= "Swamp Trails"
    elseif stageValue == 3 then
        stageName= "Commercial"
    elseif stageValue == 4 then
        stageName= "Greeneville"
    elseif stageValue == 5 then
        stageName= "Galloon"
    elseif stageValue == 6 then
        stageName= "HWY 47"
    elseif stageValue == 7 then
        stageName= "Devil's Peak"
    elseif stageValue == 8 then
        stageName= "Airport"
    elseif stageValue == 9 then
        stageName= "Venice"
    elseif stageValue == 10 then
        stageName= "CUSTOM"
    else
        stageName= "N/A"
    end
    stageRead = stageName .. " (" .. stageValue .. ")"
    return stageRead
end
core.getStage = getStage

-- Final
return core