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
