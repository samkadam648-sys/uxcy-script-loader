-- HideAndSeek.lua
-- Author: uxcy
-- Example child script for Hide & Seek game

local PlayerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "uxcyNoticeHNS"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 280, 0, 70)
Frame.Position = UDim2.new(0.5, -140, 0.1, 0)
Frame.BackgroundColor3 = Color3.fromRGB(10, 50, 120)
Frame.BackgroundTransparency = 0.1
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 12)
Corner.Parent = Frame

local Label = Instance.new("TextLabel")
Label.Size = UDim2.new(1, 0, 1, 0)
Label.BackgroundTransparency = 1
Label.Text = "Loaded uxcy Hub for Hide & Seek!"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.Font = Enum.Font.GothamBold
Label.TextScaled = true
Label.Parent = Frame

task.wait(3)
ScreenGui:Destroy()
print("[uxcy] Hide & Seek script loaded successfully.")
