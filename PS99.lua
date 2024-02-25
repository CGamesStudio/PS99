local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Chris Hub", "DarkTheme")

-- localplayer

local localplayer = Window:NewTab("LocalPlayer")
local lpsection = localplayer:NewSection("LocalPlayer")
lpsection:NewSlider("Walkspeed", "SliderInfo", 500, 0, function(s))
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end
