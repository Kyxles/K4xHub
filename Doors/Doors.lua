-- K4xHub by: Kyxles x3#6087

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("K4xHub - DOORS", "DarkTheme")

local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom
local ChaseStart = game:GetService("ReplicatedStorage").GameData.ChaseStart

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
local Local = Window:NewTab("LocalPlayer")
local LocalSection = Local:NewSection("LocalPlayer")
MainSection:NewButton("Infinite Yield FE", "Gives you some epic FE commands", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

LocalSection:NewSlider("Walkspeed", "Change how fast you walk", 50, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
	game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)
end)
end)


LocalSection:NewButton("Fly (E)", "Lets you fly, toggle is E", function()
loadstring(game:HttpGet("https://pastebin.com/raw/G3GnBCyC", true))()
end)

MainSection:NewButton("Remove Doors", "Removes Doors", function()
loadstring(game:HttpGet("https://pastebin.com/raw/4m2Nw1Kr", true))()
end)

MainSection:NewButton("Remove Fake Doors", "Removes Fake Doors", function()
loadstring(game:HttpGet("https://pastebin.com/raw/ZcNPGJfQ", true))()
end)

MainSection:NewButton("FullBright", "Makes dark rooms more bright", function()
loadstring(game:HttpGet("https://pastebin.com/raw/4LDKiJ5a"))()
end)

MainSection:NewButton("Full Bright Flashlight +20", "Makes flashlight more brighter", function()
loadstring(game:HttpGet('https://pastebin.com/raw/CbRsLfts'))()
end)

MainSection:NewButton("Flashlight Range +10", "Extends Flashlight Range", function()
loadstring(game:HttpGet('https://pastebin.com/raw/9EPskYHr'))()
end)

MainSection:NewButton("Complete Breaker Box Minigame", "Breaks the minigame", function()
game:GetService("ReplicatedStorage").Bricks.EBF:FireServer()
end)

