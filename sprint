local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

local walkspeed = 16
local increasedWalkspeed = 24.11

local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
        player.Character:FindFirstChild("Humanoid").WalkSpeed = increasedWalkspeed
    end
end

local function onKeyRelease(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
        player.Character:FindFirstChild("Humanoid").WalkSpeed = walkspeed
    end
end

UserInputService.InputBegan:Connect(onKeyPress)
UserInputService.InputEnded:Connect(onKeyRelease)
