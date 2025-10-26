-- Default.lua
-- Author: uxcy
-- Runs when no specific PlaceId is matched.

print("[uxcy] Default script loaded. No specific game script found.")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
Player:Kick("This place is not supported by uxcy Hub yet.")
