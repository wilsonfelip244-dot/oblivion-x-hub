local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- ====================== SUA INTRO ORIGINAL (SEM MUDANÇA) ======================
local TEMPO_NA_TELA = 3
local DISCORD_LINK = "https://discord.gg/AwvY9XBRG"

pcall(function()
    if setclipboard then setclipboard(DISCORD_LINK) elseif toclipboard then toclipboard(DISCORD_LINK) end
end)

local ScreenGuiIntro = Instance.new("ScreenGui")
ScreenGuiIntro.Name = "OblivionIntro"
ScreenGuiIntro.Parent = game:GetService("CoreGui")

local Frame = Instance.new("Frame", ScreenGuiIntro)
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundColor3 = Color3.fromRGB(10,5,20)

local UIGradient = Instance.new("UIGradient", Frame)
UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(20,0,40)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0,0,0))}

local LogoCorner = Instance.new("ImageLabel")
LogoCorner.Name = "LogoCorner"
LogoCorner.Parent = Frame
LogoCorner.Size = UDim2.new(0, 60, 0, 60)
LogoCorner.Position = UDim2.new(1, -70, 0, 10)
LogoCorner.BackgroundTransparency = 1
LogoCorner.Image = "rbxassetid://125845067585359"
LogoCorner.ScaleType = Enum.ScaleType.Fit
LogoCorner.ZIndex = 999
LogoCorner.ImageTransparency = 1

local Corner = Instance.new("UICorner", LogoCorner)
Corner.CornerRadius = UDim.new(1, 0)

task.spawn(function()
    task.wait(0.2)
    TweenService:Create(LogoCorner, TweenInfo.new(1), {ImageTransparency = 0}):Play()
end)

local Sound = Instance.new("Sound", Frame)
Sound.SoundId = "rbxassetid://9118823102"
Sound.Volume = 2
Sound:Play()

local Title = Instance.new("TextLabel", Frame)
Title.AnchorPoint = Vector2.new(0.5,0.5)
Title.Position = UDim2.new(0.5,0,0.4,30)
Title.Size = UDim2.new(0.8,0,0,80)
Title.BackgroundTransparency = 1
Title.Text = "OBLIVION X HUB"
Title.TextColor3 = Color3.fromRGB(170, 0, 255)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBlack
Title.TextTransparency = 1

local Glow = Title:Clone()
Glow.Parent = Frame
Glow.TextColor3 = Color3.fromRGB(100, 0, 255)
Glow.TextTransparency = 1

local Status = Instance.new("TextLabel", Frame)
Status.AnchorPoint = Vector2.new(0.5,0.5)
Status.Position = UDim2.new(0.5,0,0.52,30)
Status.Size = UDim2.new(0.8,0,0,30)
Status.BackgroundTransparency = 1
Status.Text = "Loading script..."
Status.TextColor3 = Color3.fromRGB(200,200,200)
Status.TextScaled = true
Status.Font = Enum.Font.Gotham
Status.TextTransparency = 1

local JoinText = Instance.new("TextLabel", Frame)
JoinText.AnchorPoint = Vector2.new(0.5,0.5)
JoinText.Position = UDim2.new(0.5,0,0.68,30)
JoinText.Size = UDim2.new(0.8,0,0,30)
JoinText.BackgroundTransparency = 1
JoinText.Text = "Join the Discord (link copiado)"
JoinText.TextColor3 = Color3.fromRGB(180,150,255)
JoinText.TextScaled = true
JoinText.Font = Enum.Font.GothamBold
JoinText.TextTransparency = 1

local Link = Instance.new("TextLabel", Frame)
Link.AnchorPoint = Vector2.new(0.5,0.5)
Link.Position = UDim2.new(0.5,0,0.74,30)
Link.Size = UDim2.new(0.8,0,0,25)
Link.BackgroundTransparency = 1
Link.Text = DISCORD_LINK
Link.TextColor3 = Color3.fromRGB(140,100,255)
Link.TextScaled = true
Link.Font = Enum.Font.Gotham
Link.TextTransparency = 1

local Powered = Instance.new("TextLabel", Frame)
Powered.AnchorPoint = Vector2.new(0.5,0.5)
Powered.Position = UDim2.new(0.5,0,0.9,0)
Powered.Size = UDim2.new(0.8,0,0,20)
Powered.BackgroundTransparency = 1
Powered.Text = "Powered by Oblivion System"
Powered.TextColor3 = Color3.fromRGB(100,80,150)
Powered.TextScaled = true
Powered.Font = Enum.Font.Gotham
Powered.TextTransparency = 1

TweenService:Create(Title, TweenInfo.new(1), {Position = UDim2.new(0.5,0,0.4,0), TextTransparency = 0}):Play()
TweenService:Create(Glow, TweenInfo.new(1), {Position = UDim2.new(0.5,0,0.4,0), TextTransparency = 0.5}):Play()

task.wait(0.8)
for i = 1,5 do
    Title.Position = Title.Position + UDim2.new(0, math.random(-2,2), 0, math.random(-2,2))
    task.wait(0.03)
end
task.wait(0.3)

TweenService:Create(Status, TweenInfo.new(1), {Position = UDim2.new(0.5,0,0.52,0), TextTransparency = 0}):Play()
task.wait(0.5)

TweenService:Create(JoinText, TweenInfo.new(1), {Position = UDim2.new(0.5,0,0.68,0), TextTransparency = 0}):Play()
TweenService:Create(Link, TweenInfo.new(1), {Position = UDim2.new(0.5,0,0.74,0), TextTransparency = 0}):Play()
TweenService:Create(Powered, TweenInfo.new(1), {TextTransparency = 0}):Play()

TweenService:Create(Glow, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {TextTransparency = 0.8}):Play()

task.wait(1.5)
Status.Text = "Loaded successfully"

task.wait(TEMPO_NA_TELA)

TweenService:Create(Frame, TweenInfo.new(1), {BackgroundTransparency = 1}):Play()
TweenService:Create(Title, TweenInfo.new(1), {TextTransparency = 1}):Play()
TweenService:Create(Glow, TweenInfo.new(1), {TextTransparency = 1}):Play()
TweenService:Create(Status, TweenInfo.new(1), {TextTransparency = 1}):Play()
TweenService:Create(JoinText, TweenInfo.new(1), {TextTransparency = 1}):Play()
TweenService:Create(Link, TweenInfo.new(1), {TextTransparency = 1}):Play()
TweenService:Create(Powered, TweenInfo.new(1), {TextTransparency = 1}):Play()
TweenService:Create(LogoCorner, TweenInfo.new(1), {ImageTransparency = 1}):Play()

task.wait(1)
ScreenGuiIntro:Destroy()

-- ====================== KEY SYSTEM ======================
local KeyGui = Instance.new("ScreenGui")
KeyGui.Name = "OblivionKeySystem"
KeyGui.ResetOnSpawn = false
KeyGui.Parent = playerGui

local KeyFrame = Instance.new("Frame")
KeyFrame.Size = UDim2.new(0, 420, 0, 280)
KeyFrame.Position = UDim2.new(0.5, -210, 0.5, -140)
KeyFrame.BackgroundColor3 = Color3.fromRGB(18, 6, 28)
KeyFrame.Parent = KeyGui

local KeyCorner = Instance.new("UICorner", KeyFrame)
KeyCorner.CornerRadius = UDim.new(0, 14)

local KeyGradient = Instance.new("UIGradient", KeyFrame)
KeyGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 0, 60)), ColorSequenceKeypoint.new(1, Color3.fromRGB(12, 0, 25))}

local KeyTitle = Instance.new("TextLabel")
KeyTitle.Size = UDim2.new(1, 0, 0, 60)
KeyTitle.BackgroundTransparency = 1
KeyTitle.Text = "OBLIVION X HUB"
KeyTitle.TextColor3 = Color3.fromRGB(170, 0, 255)
KeyTitle.TextScaled = true
KeyTitle.Font = Enum.Font.GothamBlack
KeyTitle.Parent = KeyFrame

local KeyGlow = KeyTitle:Clone()
KeyGlow.TextColor3 = Color3.fromRGB(110, 0, 255)
KeyGlow.TextTransparency = 0.5
KeyGlow.ZIndex = -1
KeyGlow.Parent = KeyFrame

local KeyLabel = Instance.new("TextLabel")
KeyLabel.Size = UDim2.new(1, 0, 0, 30)
KeyLabel.Position = UDim2.new(0, 0, 0, 70)
KeyLabel.BackgroundTransparency = 1
KeyLabel.Text = "Key System"
KeyLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
KeyLabel.TextScaled = true
KeyLabel.Font = Enum.Font.GothamSemibold
KeyLabel.Parent = KeyFrame

local KeyBox = Instance.new("TextBox")
KeyBox.Size = UDim2.new(0.85, 0, 0, 45)
KeyBox.Position = UDim2.new(0.075, 0, 0, 120)
KeyBox.BackgroundColor3 = Color3.fromRGB(30, 10, 45)
KeyBox.PlaceholderText = "Cole sua key aqui..."
KeyBox.TextColor3 = Color3.new(1,1,1)
KeyBox.TextScaled = true
KeyBox.Font = Enum.Font.Gotham
KeyBox.Parent = KeyFrame

local BoxCorner = Instance.new("UICorner", KeyBox)
BoxCorner.CornerRadius = UDim.new(0, 8)

local SubmitBtn = Instance.new("TextButton")
SubmitBtn.Size = UDim2.new(0.4, 0, 0, 50)
SubmitBtn.Position = UDim2.new(0.3, 0, 0, 185)
SubmitBtn.BackgroundColor3 = Color3.fromRGB(120, 0, 200)
SubmitBtn.Text = "Verificar Key"
SubmitBtn.TextColor3 = Color3.new(1,1,1)
SubmitBtn.TextScaled = true
SubmitBtn.Font = Enum.Font.GothamBold
SubmitBtn.Parent = KeyFrame

local SubmitCorner = Instance.new("UICorner", SubmitBtn)
SubmitCorner.CornerRadius = UDim.new(0, 10)

local SaveBtn = Instance.new("TextButton")
SaveBtn.Size = UDim2.new(0.4, 0, 0, 35)
SaveBtn.Position = UDim2.new(0.3, 0, 0, 240)
SaveBtn.BackgroundColor3 = Color3.fromRGB(80, 0, 140)
SaveBtn.Text = "💾 Salvar Config"
SaveBtn.TextColor3 = Color3.new(1,1,1)
SaveBtn.TextScaled = true
SaveBtn.Font = Enum.Font.Gotham
SaveBtn.Parent = KeyFrame

local SaveCorner = Instance.new("UICorner", SaveBtn)
SaveCorner.CornerRadius = UDim.new(0, 8)

local KeyStatus = Instance.new("TextLabel")
KeyStatus.Size = UDim2.new(1, 0, 0, 20)
KeyStatus.Position = UDim2.new(0, 0, 1, -25)
KeyStatus.BackgroundTransparency = 1
KeyStatus.Text = ""
KeyStatus.TextColor3 = Color3.fromRGB(255, 100, 100)
KeyStatus.TextScaled = true
KeyStatus.Font = Enum.Font.Gotham
KeyStatus.Parent = KeyFrame

-- ====================== INTERFACE PRINCIPAL (AGORA ARRASTÁVEL) ======================
local MainGui = Instance.new("ScreenGui")
MainGui.Name = "OblivionXHub"
MainGui.ResetOnSpawn = false
MainGui.Enabled = false
MainGui.Parent = playerGui

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 460, 0, 380)
MainFrame.Position = UDim2.new(0.5, -230, 0.5, -190)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 5, 25)
MainFrame.Parent = MainGui
MainFrame.Active = true
MainFrame.Draggable = true   -- ← Torna a interface arrastável

local MainCorner = Instance.new("UICorner", MainFrame)
MainCorner.CornerRadius = UDim.new(0, 16)

local MainGradient = Instance.new("UIGradient", MainFrame)
MainGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 0, 55)), ColorSequenceKeypoint.new(1, Color3.fromRGB(12, 0, 22))}

local MainTitle = Instance.new("TextLabel")
MainTitle.Size = UDim2.new(1, 0, 0, 70)
MainTitle.BackgroundTransparency = 1
MainTitle.Text = "OBLIVION X HUB"
MainTitle.TextColor3 = Color3.fromRGB(180, 0, 255)
MainTitle.TextScaled = true
MainTitle.Font = Enum.Font.GothamBlack
MainTitle.Parent = MainFrame

local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 45, 0, 45)
CloseBtn.Position = UDim2.new(1, -55, 0, 15)
CloseBtn.BackgroundColor3 = Color3.fromRGB(170, 0, 60)
CloseBtn.Text = "✕"
CloseBtn.TextColor3 = Color3.new(1,1,1)
CloseBtn.TextScaled = true
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Parent = MainFrame

Instance.new("UICorner", CloseBtn).CornerRadius = UDim.new(1,0)

local Content = Instance.new("Frame")
Content.Size = UDim2.new(1, -40, 1, -100)
Content.Position = UDim2.new(0, 20, 0, 80)
Content.BackgroundTransparency = 1
Content.Parent = MainFrame

-- ==================== PAINEL DE VELOCIDADE ====================
local SpeedFrame = Instance.new("Frame")
SpeedFrame.Size = UDim2.new(1, 0, 0, 110)
SpeedFrame.Position = UDim2.new(0, 0, 0, 10)
SpeedFrame.BackgroundColor3 = Color3.fromRGB(25, 10, 40)
SpeedFrame.Parent = Content

Instance.new("UICorner", SpeedFrame).CornerRadius = UDim.new(0, 12)

local SpeedTitle = Instance.new("TextLabel")
SpeedTitle.Size = UDim2.new(1, 0, 0, 30)
SpeedTitle.BackgroundTransparency = 1
SpeedTitle.Text = "Painel de Velocidade"
SpeedTitle.TextColor3 = Color3.fromRGB(180, 0, 255)
SpeedTitle.TextScaled = true
SpeedTitle.Font = Enum.Font.GothamBold
SpeedTitle.Parent = SpeedFrame

local SpeedSlider = Instance.new("TextBox")
SpeedSlider.Size = UDim2.new(0.7, 0, 0, 40)
SpeedSlider.Position = UDim2.new(0.15, 0, 0, 50)
SpeedSlider.BackgroundColor3 = Color3.fromRGB(40, 15, 60)
SpeedSlider.Text = "16"
SpeedSlider.TextColor3 = Color3.new(1,1,1)
SpeedSlider.TextScaled = true
SpeedSlider.Font = Enum.Font.Gotham
SpeedSlider.Parent = SpeedFrame

Instance.new("UICorner", SpeedSlider).CornerRadius = UDim.new(0, 8)

local SpeedValue = Instance.new("TextLabel")
SpeedValue.Size = UDim2.new(0.15, 0, 0, 40)
SpeedValue.Position = UDim2.new(0.85, 0, 0, 50)
SpeedValue.BackgroundTransparency = 1
SpeedValue.Text = "x1"
SpeedValue.TextColor3 = Color3.fromRGB(0, 255, 100)
SpeedValue.TextScaled = true
SpeedValue.Font = Enum.Font.GothamBold
SpeedValue.Parent = SpeedFrame

local currentSpeed = 16
SpeedSlider.FocusLost:Connect(function()
    local num = tonumber(SpeedSlider.Text)
    if num then
        currentSpeed = num
        if humanoid then
            humanoid.WalkSpeed = currentSpeed
        end
        SpeedValue.Text = "x" .. math.floor(currentSpeed / 16)
    end
end)

-- ==================== INFINITY JUMP ====================
local InfJumpFrame = Instance.new("Frame")
InfJumpFrame.Size = UDim2.new(1, 0, 0, 80)
InfJumpFrame.Position = UDim2.new(0, 0, 0, 140)
InfJumpFrame.BackgroundColor3 = Color3.fromRGB(25, 10, 40)
InfJumpFrame.Parent = Content

Instance.new("UICorner", InfJumpFrame).CornerRadius = UDim.new(0, 12)

local InfTitle = Instance.new("TextLabel")
InfTitle.Size = UDim2.new(1, 0, 0, 30)
InfTitle.BackgroundTransparency = 1
InfTitle.Text = "Infinity Jump"
InfTitle.TextColor3 = Color3.fromRGB(180, 0, 255)
InfTitle.TextScaled = true
InfTitle.Font = Enum.Font.GothamBold
InfTitle.Parent = InfJumpFrame

local InfToggle = Instance.new("TextButton")
InfToggle.Size = UDim2.new(0.5, 0, 0, 45)
InfToggle.Position = UDim2.new(0.25, 0, 0, 35)
InfToggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
InfToggle.Text = "OFF"
InfToggle.TextColor3 = Color3.new(1,1,1)
InfToggle.TextScaled = true
InfToggle.Font = Enum.Font.GothamBold
InfToggle.Parent = InfJumpFrame

Instance.new("UICorner", InfToggle).CornerRadius = UDim.new(0, 10)

local infinityJumpEnabled = false
local jumpConnection

InfToggle.MouseButton1Click:Connect(function()
    infinityJumpEnabled = not infinityJumpEnabled
    InfToggle.Text = infinityJumpEnabled and "ON" or "OFF"
    InfToggle.BackgroundColor3 = infinityJumpEnabled and Color3.fromRGB(0, 170, 80) or Color3.fromRGB(40, 40, 40)

    if infinityJumpEnabled then
        jumpConnection = UserInputService.JumpRequest:Connect(function()
            if humanoid then
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    else
        if jumpConnection then
            jumpConnection:Disconnect()
            jumpConnection = nil
        end
    end
end)

-- ====================== LÓGICA DA KEY ======================
local correctKey = "OBLIVION2026"  -- Troque pela sua key real

local function CheckKey()
    if KeyBox.Text == correctKey then
        KeyStatus.Text = "Key correta! Abrindo hub..."
        KeyStatus.TextColor3 = Color3.fromRGB(0, 255, 100)
        task.wait(1)
        KeyGui:Destroy()
        
        MainGui.Enabled = true
        MainFrame.Size = UDim2.new(0, 420, 0, 320)
        TweenService:Create(MainFrame, TweenInfo.new(0.6, Enum.EasingStyle.Back), {Size = UDim2.new(0, 460, 0, 380)}):Play()
    else
        KeyStatus.Text = "Key inválida!"
        KeyStatus.TextColor3 = Color3.fromRGB(255, 80, 80)
    end
end

SubmitBtn.MouseButton1Click:Connect(CheckKey)
KeyBox.FocusLost:Connect(function(enter) if enter then CheckKey() end end)

SaveBtn.MouseButton1Click:Connect(function()
    KeyStatus.Text = "Config salva!"
    KeyStatus.TextColor3 = Color3.fromRGB(100, 200, 255)
end)

CloseBtn.MouseButton1Click:Connect(function()
    MainGui:Destroy()
end)

-- ====================== INICIAR ======================
task.wait(1.2)
