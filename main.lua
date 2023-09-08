local players = game:GetService("Players"):GetPlayers()
local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local wae = {
    "Fire bomb"
}

local function dupe(input)
    if input.KeyCode == Enum.KeyCode.P then
        for _ = 1, 30 do
            local ohNumber1 = 0
            local ohString2 = "0:0:0:0"
            game:GetService("ReplicatedStorage").Item:FireServer(ohNumber1, ohString2)
        end
    end
end
UserInputService.InputBegan:Connect(dupe)
local function destroy(input)
    if input.KeyCode == Enum.KeyCode.O then
        local backpack = player:FindFirstChild("Backpack")
        if backpack then
            for _, item in pairs(backpack:GetChildren()) do
                if item:IsA("Tool") and table.find(wae, item.Name)
                    item:Destroy()
                end
            end
        end
    end
end
UserInputService.InputBegan:Connect(destroy)
local function walkspeed24(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
        player.Character:FindFirstChild("Humanoid").WalkSpeed = 24.11
    end
end
UserInputService.InputBegan:Connect(walkspeed24)
local function walkspeed16(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
        player.Character:FindFirstChild("Humanoid").WalkSpeed = 16
    end
end
UserInputService.InputEnded:Connect(walkspeed16)

for _, player in pairs(players) do
    if player.Character and player.Character:FindFirstChild("JumpCooldown") then
        player.Character.JumpCooldown.Disabled = true
    end
end
