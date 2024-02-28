local core = {}

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
    return ReadValueFloat(0x001EB834)
end
core.getPlayerSpeed = getPlayerSpeed

local function getXpos()
    return ReadValueFloat(0x001862C0)
end
core.getXpos = getXpos

local function getYpos()
    return ReadValueFloat(0x001862C4)
end
core.getYpos = getYpos

local function getZpos()
    return ReadValueFloat(0x001862C8)
end
core.getZpos = getZpos

return core