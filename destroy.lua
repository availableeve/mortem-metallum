local function onKey1Press(input)
    if input.KeyCode == Enum.KeyCode.Delete then
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
