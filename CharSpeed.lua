local SpeedGUI = Instance.new("ScreenGui")
SpeedGUI.Name = "SpeedGUI"
SpeedGUI.DisplayOrder = 1000
SpeedGUI.IgnoreGuiInset = true
SpeedGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local SmallerFrame = Instance.new("Frame")
SmallerFrame.Name = "SmallerSpeedFrame"
SmallerFrame.Size = UDim2.new(0, 50, 0, 50)
SmallerFrame.Position = UDim2.new(0.05, 0, 0.9, -60) -- Adjusted position
SmallerFrame.BackgroundColor3 = Color3.new(0.4, 0, 0.7)
SmallerFrame.BackgroundTransparency = 0.5
SmallerFrame.Parent = SpeedGUI

local PlusButton = Instance.new("TextButton")
PlusButton.Name = "PlusButton"
PlusButton.Size = UDim2.new(1, 0, 1, 0)
PlusButton.Position = UDim2.new(0, 0, 0, 0)
PlusButton.BackgroundColor3 = Color3.new(0.4, 0, 0.7)
PlusButton.TextColor3 = Color3.new(1, 1, 1)
PlusButton.Text = "+"
PlusButton.FontSize = Enum.FontSize.Size18
PlusButton.Parent = SmallerFrame

local SpeedLabel = Instance.new("TextLabel")
SpeedLabel.Name = "SpeedLabel"
SpeedLabel.Size = UDim2.new(0, 200, 0, 50)
SpeedLabel.Position = UDim2.new(1, 10, 0, 0)
SpeedLabel.BackgroundColor3 = Color3.new(0.4, 0, 0.7)
SpeedLabel.BackgroundTransparency = 0.5
SpeedLabel.TextColor3 = Color3.new(1, 1, 1)
SpeedLabel.Text = "Longer Legs"
SpeedLabel.FontSize = Enum.FontSize.Size18
SpeedLabel.Parent = SmallerFrame

local FullFrame = Instance.new("Frame")
FullFrame.Name = "FullSpeedFrame"
FullFrame.Size = UDim2.new(0, 350, 0, 150)
FullFrame.Position = UDim2.new(0.05, 0, 0.5, -75)
FullFrame.BackgroundColor3 = Color3.new(0.4, 0, 0.7)
FullFrame.BackgroundTransparency = 0.5
FullFrame.Parent = SpeedGUI
FullFrame.Visible = false

local SetSpeedLabel = Instance.new("TextLabel")
SetSpeedLabel.Name = "SetSpeedLabel"
SetSpeedLabel.Size = UDim2.new(1, 0, 0.2, 0)
SetSpeedLabel.Position = UDim2.new(0, 0, 0, 0)
SetSpeedLabel.BackgroundColor3 = Color3.new(0.4, 0, 0.7)
SetSpeedLabel.TextColor3 = Color3.new(1, 1, 1)
SetSpeedLabel.Text = ";) hi baby"
SetSpeedLabel.FontSize = Enum.FontSize.Size18
SetSpeedLabel.Parent = FullFrame

local SpeedInput = Instance.new("TextBox")
SpeedInput.Name = "SpeedInput"
SpeedInput.Size = UDim2.new(0.7, 0, 0.2, 0)
SpeedInput.Position = UDim2.new(0.15, 0, 0.3, 0)
SpeedInput.BackgroundColor3 = Color3.new(1, 1, 1)
SpeedInput.PlaceholderText = "<3 U"
SpeedInput.FontSize = Enum.FontSize.Size18
SpeedInput.Parent = FullFrame

local SetSpeedButton = Instance.new("TextButton")
SetSpeedButton.Name = "SetSpeedButton"
SetSpeedButton.Size = UDim2.new(0.8, 0, 0.2, 0)
SetSpeedButton.Position = UDim2.new(0.15, 0, 0.6, 0)
SetSpeedButton.BackgroundColor3 = Color3.new(0, 0, 0)
SetSpeedButton.TextColor3 = Color3.new(1, 1, 1)
SetSpeedButton.Text = "Make Chars Legs Longer"
SetSpeedButton.FontSize = Enum.FontSize.Size18
SetSpeedButton.Parent = FullFrame

local MinusButton = Instance.new("TextButton")
MinusButton.Name = "MinusButton"
MinusButton.Size = UDim2.new(0.1, 0, 0.1, 0)
MinusButton.Position = UDim2.new(0.9, 0, 0, 0)
MinusButton.BackgroundColor3 = Color3.new(0, 0, 0)
MinusButton.TextColor3 = Color3.new(1, 1, 1)
MinusButton.Text = "-"
MinusButton.FontSize = Enum.FontSize.Size18
MinusButton.Parent = FullFrame

-- 
local CreditLabel = Instance.new("TextLabel")
CreditLabel.Name = "CreditLabel"
CreditLabel.Size = UDim2.new(1, 0, 0.1, 0)
CreditLabel.Position = UDim2.new(0, 0, 0.9, 0)
CreditLabel.BackgroundColor3 = Color3.new(0.4, 0, 0.7)
CreditLabel.BackgroundTransparency = 0.5
CreditLabel.TextColor3 = Color3.new(1, 1, 1)
CreditLabel.Text = "Made by Daddy Finest <3"
CreditLabel.FontSize = Enum.FontSize.Size14
CreditLabel.Parent = FullFrame

-- 
local function expandFullGUI()
    SmallerFrame.Visible = false
    FullFrame.Visible = true
end

-- 
MinusButton.MouseButton1Click:Connect(function()
    SmallerFrame.Visible = true
    FullFrame.Visible = false
end)

-- 
SetSpeedButton.MouseButton1Click:Connect(function()
    local newSpeed = tonumber(SpeedInput.Text)
    if newSpeed then
        SpeedLabel.Text = "Speed: " .. newSpeed
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = newSpeed
    else
        warn("Invalid speed input")
    end
end)

-- 
PlusButton.MouseButton1Click:Connect(function()
    if FullFrame.Visible then
        SmallerFrame.Visible = true
        FullFrame.Visible = false
    else
        expandFullGUI()
    end
end)