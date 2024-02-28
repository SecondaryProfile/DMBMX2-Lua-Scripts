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


--- returns the player x,y,z position
-- local function getPlayerPos()
--     if core.game_ID == "" then
--         return {X=ReadValueFloat(0x803F9BB8), Y=ReadValueFloat(0x803F9BBC), Z=ReadValueFloat(0x803F9BC0)}
--     elseif core.game_ID == "" then
--         return {X=0.0, Y=0.0, Z=0.0}
--     end
--     
--     return {X=0.0, Y=0.0, Z=0.0}
-- end
-- core.getPlayerPos = getPlayerPos






-- normal
--speed
-- 0x801eb834
-- 0x801eb864

-- lua core versions
--speed
-- 0x001EB834
-- 0x001EB864

--position
--0x001862C0
--0x001862C4
--0x001862C8
--0x001AA6F0
--0x001AA6F4
--0x001AA6F8





return core