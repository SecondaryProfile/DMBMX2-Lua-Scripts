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
    text = text .. string.format("Speed: %.3f\n", core.getPlayerSpeed() * 1e43)
    text = text .. string.format("X Position: %.3f\n", core.getXpos() * 1e2)
    text = text .. string.format("Y Position: %.3f\n", core.getYpos() * 1e2)
    text = text .. string.format("Z Position: %.3f\n", core.getZpos() * 1e2)

    SetScreenText(text)
end