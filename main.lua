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

local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.P then
        for _ = 1, 50 do
            local args = {
                [1] = 0,
                [2] = "0:0:0:0"
            }

            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local ItemRemote = ReplicatedStorage:FindFirstChild("Item")
            if ItemRemote then
                ItemRemote:FireServer(unpack(args))
            end
        end
    end
end

UserInputService.InputBegan:Connect(onKeyPress)

local function onKey1Press(input)
    if input.KeyCode == Enum.KeyCode.O then
        local backpack = player:FindFirstChild("Backpack")
        if backpack then
            for _, item in pairs(backpack:GetChildren()) do
                if item:IsA("Tool") and not table.find(theseones, item.Name) then
                    item:Destroy()
                end
            end
        end
    end
end

UserInputService.InputBegan:Connect(onKey1Press)
