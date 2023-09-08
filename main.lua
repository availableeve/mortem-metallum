local players = game:GetService("Players"):GetPlayers()
local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

local function dupe(input)
    if input.KeyCode == Enum.KeyCode.P then
        for _ = 1, 30 do
            local ohNumber1 = 27
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
                if item:IsA("Tool") and item.Name ~= "Fire bomb" then
                    item:Destroy()
                end
            end
        end
    end
end
UserInputService.InputBegan:Connect(destroy)

local function destroy(input)
    if input.KeyCode == Enum.KeyCode.I then
        local backpack = player:FindFirstChild("Backpack")
        if backpack then
            for _, item in pairs(backpack:GetChildren()) do
                if item:IsA("Tool") and item.Name ~= "C4" then
                    item:Destroy()
                end
            end
        end
    end
end
UserInputService.InputBegan:Connect(destroy)

local function destroy(input)
    if input.KeyCode == Enum.KeyCode.U then
        local backpack = player:FindFirstChild("Backpack")
        if backpack then
            for _, item in pairs(backpack:GetChildren()) do
                if item:IsA("Tool") and item.Name ~= "Grenade" then
                    item:Destroy()
                end
            end
        end
    end
end
UserInputService.InputBegan:Connect(destroy)

local function destroy(input)
    if input.KeyCode == Enum.KeyCode.Y then
        local backpack = player:FindFirstChild("Bear trap")
        if backpack then
            for _, item in pairs(backpack:GetChildren()) do
                if item:IsA("Tool") and item.Name ~= "Fire bomb" then
                    item:Destroy()
                end
            end
        end
    end
end
UserInputService.InputBegan:Connect(destroy)

local function destroy(input)
    if input.KeyCode == Enum.KeyCode.T then
        local backpack = player:FindFirstChild("Backpack")
        if backpack then
            for _, item in pairs(backpack:GetChildren()) do
                if item:IsA("Tool") and item.Name ~= "Long bow" then
                    item:Destroy()
                end
            end
        end
    end
end
UserInputService.InputBegan:Connect(destroy)

local function destroy(input)
    if input.KeyCode == Enum.KeyCode.R then
        local backpack = player:FindFirstChild("Backpack")
        if backpack then
            for _, item in pairs(backpack:GetChildren()) do
                if item:IsA("Tool") and item.Name ~= "Chainsaw" then
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
