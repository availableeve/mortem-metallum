loadstring(game:HttpGet('https://raw.githubusercontent.com/availableeve/mortem-metallum/main/dupe.lua'))()
wait(0.2)
loadstring(game:HttpGet('https://raw.githubusercontent.com/availableeve/mortem-metallum/main/destroy.lua'))()
wait(0.2)
loadstring(game:HttpGet('https://raw.githubusercontent.com/availableeve/mortem-metallum/main/sprint.lua'))()






local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

local walkspeed = 16
local increasedWalkspeed = 24.11

local function onKey2Press(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
        player.Character:FindFirstChild("Humanoid").WalkSpeed = increasedWalkspeed
    end
end

local function onKey2Release(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
        player.Character:FindFirstChild("Humanoid").WalkSpeed = walkspeed
    end
end

UserInputService.InputBegan:Connect(onKey2Press)
UserInputService.InputEnded:Connect(onKey2Release)
