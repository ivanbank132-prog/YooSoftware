-- [[ MADE BY IVAN | LOST FRONT V1 + AIMBOT & KEY SYSTEM ]] --

local CorrectKey = "8888833390AbcIdg$8WoqNs729KsnwUsjw82"
local KeyLink = "https://t.me/scriptettd_bot?start=tasklist319"
local TG_Channel = "https://t.me/chillwsoft"

-- [[ ОКНО ПРОВЕРКИ КЛЮЧА ]] --
local KeyGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
local KeyMain = Instance.new("Frame", KeyGui)
KeyMain.Size = UDim2.new(0, 300, 0, 240)
KeyMain.Position = UDim2.new(0.5, -150, 0.5, -120)
KeyMain.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
KeyMain.Active = true
KeyMain.Draggable = true
Instance.new("UICorner", KeyMain)

local KeyStroke = Instance.new("UIStroke", KeyMain)
KeyStroke.Thickness = 2
KeyStroke.Color = Color3.new(0, 0.8, 1)

local KeyTitle = Instance.new("TextLabel", KeyMain)
KeyTitle.Size = UDim2.new(1, 0, 0, 45)
KeyTitle.Text = "LOST FRONT | KEY SYSTEM"
KeyTitle.TextColor3 = Color3.new(1, 1, 1)
KeyTitle.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
KeyTitle.Font = Enum.Font.GothamBold
Instance.new("UICorner", KeyTitle)

-- ИКОНКА ТЕЛЕГРАМ
local TG_Btn = Instance.new("ImageButton", KeyMain)
TG_Btn.Size = UDim2.new(0, 32, 0, 32)
TG_Btn.Position = UDim2.new(0.5, -16, 0.82, 0)
TG_Btn.Image = "rbxassetid://15112533031" 
TG_Btn.BackgroundTransparency = 1

local TG_Label = Instance.new("TextLabel", KeyMain)
TG_Label.Size = UDim2.new(1, 0, 0, 20)
TG_Label.Position = UDim2.new(0, 0, 0.72, 0)
TG_Label.Text = "JOIN TELEGRAM"
TG_Label.TextColor3 = Color3.new(0, 0.7, 1)
TG_Label.Font = Enum.Font.GothamBold
TG_Label.BackgroundTransparency = 1

local KeyBox = Instance.new("TextBox", KeyMain)
KeyBox.Size = UDim2.new(0.8, 0, 0, 35)
KeyBox.Position = UDim2.new(0.1, 0, 0.28, 0)
KeyBox.PlaceholderText = "Paste Key Here..."
KeyBox.Text = ""
KeyBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
KeyBox.TextColor3 = Color3.new(1, 1, 1)
Instance.new("UICorner", KeyBox)

local GetKeyBtn = Instance.new("TextButton", KeyMain)
GetKeyBtn.Size = UDim2.new(0.35, 0, 0, 35)
GetKeyBtn.Position = UDim2.new(0.1, 0, 0.5, 0)
GetKeyBtn.Text = "GET KEY"
GetKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 100, 200)
GetKeyBtn.TextColor3 = Color3.new(1, 1, 1)
Instance.new("UICorner", GetKeyBtn)

local CheckBtn = Instance.new("TextButton", KeyMain)
CheckBtn.Size = UDim2.new(0.35, 0, 0, 35)
CheckBtn.Position = UDim2.new(0.55, 0, 0.5, 0)
CheckBtn.Text = "CHECK"
CheckBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
CheckBtn.TextColor3 = Color3.new(1, 1, 1)
Instance.new("UICorner", CheckBtn)

-- ЛОГИКА КНОПОК КЛЮЧА
GetKeyBtn.MouseButton1Click:Connect(function()
    if setclipboard then setclipboard(KeyLink) end
    game:GetService("GuiService"):OpenBrowserWindow(KeyLink)
    GetKeyBtn.Text = "OPENING..."
    task.wait(2)
    GetKeyBtn.Text = "GET KEY"
end)

TG_Btn.MouseButton1Click:Connect(function()
    if setclipboard then setclipboard(TG_Channel) end
    game:GetService("GuiService"):OpenBrowserWindow(TG_Channel)
    TG_Label.Text = "LINK COPIED!"
    task.wait(2)
    TG_Label.Text = "JOIN TELEGRAM"
end)

CheckBtn.MouseButton1Click:Connect(function()
    if KeyBox.Text == CorrectKey then
        KeyGui:Destroy()
        StartSoftware()
    else
        CheckBtn.Text = "WRONG!"
        KeyStroke.Color = Color3.new(1, 0, 0)
        task.wait(2)
        CheckBtn.Text = "CHECK"
        KeyStroke.Color = Color3.new(0, 0.8, 1)
    end
end)

-- [[ ФУНКЦИЯ ОСНОВНОГО СОФТА С АИМОМ ]] --
function StartSoftware()
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local LP = Players.LocalPlayer
    local Camera = workspace.CurrentCamera

    _G.Aim = true
    _G.FovSize = 150 -- Размер круга автонаводки

    -- Круг FOV на экране
    local Circle = Drawing.new("Circle")
    Circle.Thickness = 2
    Circle.NumSides = 64
    Circle.Visible = true
    Circle.Filled = false

    -- ГУИ УПРАВЛЕНИЯ
    local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
    local Main = Instance.new("Frame", ScreenGui)
    Main.Size = UDim2.new(0, 220, 0, 220)
    Main.Position = UDim2.new(0.05, 0, 0.15, 0)
    Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    Main.Active = true
    Main.Draggable = true
    Instance.new("UICorner", Main)

    local UIStroke = Instance.new("UIStroke", Main)
    UIStroke.Thickness = 2

    local Title = Instance.new("TextLabel", Main)
    Title.Size = UDim2.new(1, 0, 0, 35)
    Title.Text = "LOST FRONT | BY IVAN"
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Title.Font = Enum.Font.GothamBold
    Instance.new("UICorner", Title)

    local function Btn(txt, y, cb)
        local b = Instance.new("TextButton", Main)
        b.Size = UDim2.new(0.9, 0, 0, 32)
        b.Position = UDim2.new(0.05, 0, 0, y)
        b.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        b.Text = txt
        b.TextColor3 = Color3.new(1, 1, 1)
        Instance.new("UICorner", b)
        b.MouseButton1Click:Connect(function() cb(b) end)
    end

    Btn("AIMBOT: ON/OFF", 45, function() _G.Aim = not _G.Aim end)
    Btn("FOV +50", 85, function() _G.FovSize = _G.FovSize + 50 end)
    Btn("FOV -50", 125, function() _G.FovSize = _G.FovSize - 50 end)

    -- ЛОГИКА АВТОНАВОДКИ И РАДУГИ
    RunService.RenderStepped:Connect(function()
        -- Радужный эффект для рамок и круга
        local hue = tick() % 5 / 5
        local color = Color3.fromHSV(hue, 1, 1)
        UIStroke.Color = color
        Circle.Color = color

        -- Настройки круга FOV
        Circle.Radius = _G.FovSize
        Circle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
        Circle.Visible = _G.Aim

        -- Сам Аимбот (Автонаводка в центр круга)
        if _G.Aim then
            local target = nil
            local shortestDist = _G.FovSize

            for _, p in pairs(Players:GetPlayers()) do
                if p ~= LP and p.Character and p.Character:FindFirstChild("Head") and p.Character:FindFirstChild("Humanoid") and p.Character.Humanoid.Health > 0 then
                    local headPos, onScreen = Camera:WorldToViewportPoint(p.Character.Head.Position)
                    
                    if onScreen then
                        local screenDist = (Vector2.new(headPos.X, headPos.Y) - Circle.Position).Magnitude
                        if screenDist < shortestDist then
                            shortestDist = screenDist
                            target = p.Character.Head
                        end
                    end
                end
            end

            if target then
                Camera.CFrame = CFrame.new(Camera.CFrame.Position, target.Position)
            end
        end
    end)
end
