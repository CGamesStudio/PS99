local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Chris Hub", "DarkTheme")

if game.PlaceId == 8737899170 then
    print("Correct Game")
else
    game.Players.LocalPlayer:Kick("Incorrect game")
end
