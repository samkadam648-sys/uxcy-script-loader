-- Main.lua
-- Author: uxcy
-- Created: 2025-10-26
-- Description: Bootstrap loader that loads different scripts depending on PlaceId.

local Config = {
    ThemeID = 1,
    PlaceScriptMap = {
        [2753915549] = "https://raw.githubusercontent.com/uxcy/uxcy-hub/main/BloxFruits.lua",
        [1234567890] = "https://raw.githubusercontent.com/uxcy/uxcy-hub/main/HideAndSeek.lua"
    },
    DefaultScript = "https://raw.githubusercontent.com/uxcy/uxcy-hub/main/Default.lua"
}

local function safeLoadRemote(url)
    assert(type(url) == "string", "URL must be string")
    local ok, resp = pcall(function() return game:HttpGet(url, true) end)
    if not ok then
        warn("[uxcy] HttpGet failed:", resp)
        return
    end
    local func, err = loadstring(resp)
    if not func then
        warn("[uxcy] loadstring error:", err)
        return
    end
    local success, runErr = pcall(func)
    if not success then
        warn("[uxcy] Runtime error:", runErr)
    end
end

local placeId = game.PlaceId
local targetUrl = Config.PlaceScriptMap[placeId] or Config.DefaultScript

print(string.format("[uxcy] Loading script for PlaceId %s → %s", tostring(placeId), targetUrl))
safeLoadRemote(targetUrl)
