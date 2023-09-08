local players = game:GetService("Players"):GetPlayers()
local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local w = {"Fire bomb"}
--functions
--dupe
local function dupe(input)
    
    if input.KeyCode == Enum.KeyCode.K then
		
        for _ = 1, 30 do
		game:GetService("ReplicatedStorage").Item:FireServer(0, "0:0:0:0")	
		
    end
end

-- destroy items
local function destroy(input)
    if input.KeyCode == Enum.KeyCode.J then
        local backpack = player:FindFirstChild("Backpack")
        if backpack then
            for _, item in pairs(backpack:GetChildren()) do
                if item:IsA("Tool") and not table.find(item.Name, "w") then
                    item:Destroy()
                end
            end
        end
    end
end

-- walkspeed
local function walkspeed24(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
        player.Character:FindFirstChild("Humanoid").WalkSpeed = 24.11
    end
end

local function walkspeed16(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
        player.Character:FindFirstChild("Humanoid").WalkSpeed = 16
    end
end
-- walkspeed
UserInputService.InputBegan:Connect(walkspeed24)
UserInputService.InputEnded:Connect(walkspeed16)

-- dupe
UserInputService.InputBegan:Connect(dupe)

-- destroy
UserInputService.InputBegan:Connect(destroy)

-- jumpcooldown
for _, player in pairs(players) do
    -- Check if the player has a character and a "JumpCooldown" property
    if player.Character and player.Character:FindFirstChild("JumpCooldown") then
        -- Disable the "JumpCooldown" property for the player's character
        player.Character.JumpCooldown.Disabled = true
    end
end
