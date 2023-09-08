local players = game:GetService("Players"):GetPlayers()
local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
--functions
--dupe
local function dupe(input)
    if input.KeyCode == Enum.KeyCode.K then
		
		local ohNumber1 = 16
		local ohString2 = "0:0:0:0"

		game:GetService("ReplicatedStorage").Item:FireServer(ohNumber1, ohString2)
		
		local ohNumber1 = 16
		local ohString2 = "0:0:0:0"

		game:GetService("ReplicatedStorage").Item:FireServer(ohNumber1, ohString2)
		
		local ohNumber1 = 16
		local ohString2 = "0:0:0:0"

		game:GetService("ReplicatedStorage").Item:FireServer(ohNumber1, ohString2)
		
		
		
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

-- jumpcooldown
for _, player in pairs(players) do
    -- Check if the player has a character and a "JumpCooldown" property
    if player.Character and player.Character:FindFirstChild("JumpCooldown") then
        -- Disable the "JumpCooldown" property for the player's character
        player.Character.JumpCooldown.Disabled = true
    end
end
