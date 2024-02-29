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

return core