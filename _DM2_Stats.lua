-- Globals
package.path = GetScriptsDir() .. "Core/DM2_Core.lua"
local core = require "DM2_Core"

function onScriptStart()
    if not core.gameIsDM2() then
        CancelScript()
    end
end

function onScriptCancel()
    SetScreenText("")
end

function onScriptUpdate()

    text = ""
    text = text .. "Player Info\n\n"
    text = text .. string.format("Frame Count: %.0f\n", GetFrameCount())
    text = text .. string.format("Speed: %.3f\n", core.getPlayerSpeed())
    text = text .. string.format("X Position: %.3f\n", core.getXpos())
    text = text .. string.format("Y Position: %.3f\n", core.getYpos())
    text = text .. string.format("Z Position: %.3f\n", core.getZpos())
    -- text = text .. string.format("Session Timer: %.2f\n", core.getSessionCounter())
    text = text .. string.format("Is Airborne: %s\n", core.isAirborne())

    SetScreenText(text)
end