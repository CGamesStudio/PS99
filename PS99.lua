local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Chris Hub", "DarkTheme")

-- localplayer

local localplayer = Window:NewTab("LocalPlayer")
local lpsection = localplayer:NewSection("LocalPlayer")
lpsection:NewSlider("Walkspeed", "Change your speed !", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

lpsection:NewSlider("JumpPower", "Jump higher !", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

lpsection:NewToggle("Noclip", '"What does collision mean ?"', function(state)
    if state then
            while task.wait() do
                for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    v.CanCollide = false
                end
            end
        else
            while task.wait() do
                for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    v.CanCollide = true
                end
            end
        end
    end)

local othertab = Window:NewTab("Other Scripts")
local otsection = othertab:NewSection("Other Scripts")

otsection:NewButton("Infinite Yield", "Fe Admin", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

otsection:NewButton("Redz Hub", "OP Pet Simulator 99 Hub ! (Keyless)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()
end)

otsection:NewButton("SkyHub", "OP Pet Simulator 99 Hub ! (Has a key system)", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/SKOIXLL/RIVERHUB-SKYHUB/main/WL.lua'))();
end)
