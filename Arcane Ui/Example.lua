local Arcane = loadstring(game:HttpGet("https://raw.githubusercontent.com/Da7mu/Ui-Collection/refs/heads/main/Arcane%20Ui/Library.lua"))()

local Window = Arcane:Window({
    Name = "ARCANE",
    User = game.Players.LocalPlayer.Name,
    Logo = "97741915311873"
})



-- Pages
local Combat = Window:Page({ 
    Name = "Combat", 
    Icon = "swords" 
})

local Player = Window:Page({ 
    Name = "Player", 
    Icon = "user" 
})

local Settings = Window:Page({ 
    Name = "Settings", 
    Icon = "settings" 
})



-- Subpages
local Home = Combat:SubPage({ 
    Name = "Home", 
    Icon = "home" 
})

local Aim = Combat:SubPage({ 
    Name = "Aim", 
    Icon = "crosshair" 
})

local PlayerMain = Player:SubPage({ 
    Name = "Main", 
    Icon = "user" 
})

local PlayerMisc = Player:SubPage({ 
    Name = "Misc", 
    Icon = "list", 
    OneColumn = true 
})

local ConfigSub = Settings:SubPage({ 
    Name = "Configs", 
    Icon = "save" 
})



-- Sections
local HomeLeft = Home:Section({ 
    Name = "Aimbot", 
    Side = 1 
})
local HomeRight = Home:Section({ 
    Name = "Visuals", 
    Side = 2 
})

local HomeLeft2 = Home:Section({ 
    Name = "Triggerbot", 
    Side = 1 
})

local HomeRight2 = Home:Section({ 
    Name = "World", 
    Side = 2 
})

local AimLeft = Aim:Section({ 
    Name = "Prediction", 
    Side = 1 
})

local AimRight = Aim:Section({ 
    Name = "Smoothing", 
    Side = 2 
})

local PlayerLeft = PlayerMain:Section({ 
    Name = "Movement", 
    Side = 1 
})

local PlayerRight = PlayerMain:Section({ 
    Name = "Character", 
    Side = 2 
})

local PlayerMiscSection = PlayerMisc:Section({ 
    Name = "Misc", 
    Side = 1 
})



-- Toggles
local AimbotToggle = HomeLeft:Toggle({
    Name = "Aimbot",
    Default = true,
    Flag = "Aimbot",
    Tooltip = "aimbot switch",
    Callback = function(State)
        Arcane:Notification({ -- Toggle Notification
            Name = "Aimbot",
            Description = State and "Enabled" or "Disabled",
            Duration = 3,
            Icon = "zap",
            Color = Color3.fromRGB(254, 0, 67)
        })
    end
})

local ESPToggle = HomeRight:Toggle({ 
    Name = "ESP", 
    Default = false, 
    Flag = "ESP" 
})

HomeLeft2:Toggle({ 
    Name = "Triggerbot", 
    Default = false, 
    Flag = "Triggerbot"
 })

HomeRight2:Toggle({ 
    Name = "Fullbright", 
    Default = true, 
    Flag = "Fullbright" 
})

AimLeft:Toggle({ 
    Name = "Prediction", 
    Default = true, 
    Flag = "Prediction" 
})

AimRight:Toggle({ 
    Name = "Smoothing", 
    Default = false, 
    Flag = "Smoothing" 
})

local FlyToggle = PlayerLeft:Toggle({ 
    Name = "Fly", 
    Default = false, 
    Flag = "Fly", 
    Tooltip = "fly around" -- Tooltip
})

PlayerRight:Toggle({ 
    Name = "Noclip", 
    Default = false, 
    Flag = "Noclip" 
})

PlayerMiscSection:Toggle({ 
    Name = "Anti AFK", 
    Default = true, 
    Flag = "AntiAFK" 
})



-- Sliders
HomeLeft:Slider({ 
    Name = "FOV", 
    Min = 0, 
    Max = 100, 
    Default = 90, 
    Suffix = "°", 
    Flag = "FOV", 
    Tooltip = "fov size"
})

HomeLeft2:Slider({ 
    Name = "Delay", 
    Min = 0, 
    Max = 500, 
    Default = 120, 
    Suffix = "ms", 
    Flag = "TriggerDelay" 
})

AimLeft:Slider({ 
    Name = "Amount", 
    Min = 0, 
    Max = 1, 
    Default = 0.4, 
    Decimals = 0.01, 
    Flag = "PredAmount" 
})

AimRight:Slider({ 
    Name = "Amount", 
    Min = 0, 
    Max = 50, 
    Default = 12, 
    Flag = "SmoothAmount" 
})

PlayerLeft:Slider({ 
    Name = "Speed", 
    Min = 16, 
    Max = 500, 
    Default = 50, 
    Flag = "WalkSpeed" 
})

PlayerLeft:Slider({ 
    Name = "Jump", 
    Min = 50, 
    Max = 500, 
    Default = 50, 
    Flag = "JumpPower" 
})



-- Range Sliders
HomeLeft:RangeSlider({ 
    Name = "Flash Power", 
    Min = 0, 
    Max = 100, 
    Default = { 53, 100 }, 
    Suffix = "%", 
    Flag = "FlashPower" 
})

AimRight:RangeSlider({ 
    Name = "Range", 
    Min = 0, 
    Max = 50, 
    Default = { 5, 20 }, 
    Flag = "SmoothRange" 
})



-- Dropdowns
HomeLeft:Dropdown({ 
    Name = "Target Part", 
    Items = { "Head", "Torso", "Legs", "Arms", "Random" }, 
    Default = "Head", 
    Flag = "TargetPart", 
    SearchBarEnabled = true 
})

HomeRight:Dropdown({ 
    Name = "Features", 
    Items = { "Box", "Name", "Health", "Distance" }, 
    Multi = true, 
    Default = { "Box", "Name" }, 
    Flag = "ESPFeatures" 
})

HomeRight2:Dropdown({ 
    Name = "Quality", 
    Items = { "Low", "Medium", "High" }, 
    Default = "Medium", 
    Flag = "WorldQuality" 
})

PlayerRight:Dropdown({ 
    Name = "Rig", 
    Items = { "R6", "R15" }, 
    Default = "R15", 
    Flag = "RigType" 
})



-- Buttons
HomeLeft:Button({ 
    Name = "Reset", 
    Callback = function() 
        print("reset") 
    end 
})

HomeLeft2:Button({ 
    Name = "Apply", 
    Callback = function() 
        print("apply") 
    end 
})

PlayerLeft:Button({ 
    Name = "Reset", 
    Callback = function() 
        print("reset char") 
    end 
})

PlayerMiscSection:Button({ 
    Name = "Rejoin", 
    Callback = function() 
        print("rejoin") 
    end 
})



-- Elements Settings
local AimbotSettings = AimbotToggle:Settings()

local ESPSettings = ESPToggle:Settings()



-- Keybinds
AimbotToggle:Keybind({ 
    Default = Enum.KeyCode.E, 
    Mode = "Toggle", 
    Flag = "AimbotKey" 
})

ESPToggle:Keybind({ 
    Default = Enum.KeyCode.T, 
    Mode = "Hold", 
    Flag = "ESPKey" 
})

FlyToggle:Keybind({ 
    Default = Enum.KeyCode.F, 
    Mode = "Toggle", 
    Flag = "FlyKey" 
})



-- Settings Extras
AimbotSettings:Toggle({ 
    Name = "Team Check", 
    Default = true, 
    Flag = "AimTeamCheck",
    Callback = function(State)
    end
})

AimbotSettings:Slider({ 
    Name = "Strength", 
    Min = 0, 
    Max = 100, 
    Default = 60, 
    Suffix = "%", 
    Flag = "AimStrength" 
})

AimbotSettings:Dropdown({ 
    Name = "Hitbox", 
    Items = { "Head", "Torso", "Random" }, 
    Default = "Head", 
    Flag = "AimHitbox" 
})

ESPSettings:Slider({ 
    Name = "Distance", 
    Min = 100, 
    Max = 5000, 
    Default = 1500, 
    Suffix = "m", 
    Flag = "ESPDistance" 
})



-- Colorpickers
ESPSettings:Colorpicker({ 
    Name = "Box Color", 
    Default = Color3.fromRGB(254, 0, 67), 
    Flag = "ESPBoxColor" 
})

HomeRight:Colorpicker({ 
    Name = "ESP Color", 
    Default = Color3.fromRGB(254, 0, 67), 
    Flag = "ESPColor" 
})

HomeRight2:Colorpicker({ 
    Name = "Sky Color", 
    Default = Color3.fromRGB(120, 180, 255), 
    Flag = "SkyColor" 
})

AimRight:Colorpicker({ 
    Name = "FOV Color", 
    Default = Color3.fromRGB(0, 255, 200), 
    Flag = "FOVColor" 
})



-- Selectors
HomeRight:Selector({ 
    Name = "Shader", 
    Items = { "Upper Corners", "Grid Shader" }, 
    Default = "Upper Corners", 
    Flag = "ShaderMode", 
    Tooltip = "shader style" 
})

AimLeft:Selector({ 
    Name = "Target Mode", 
    Items = { "Closest", "Lowest HP", "Crosshair" }, 
    Default = "Closest", 
    Flag = "TargetMode" 
})

PlayerMiscSection:Selector({ 
    Name = "Spawn", 
    Items = { "Default", "Last Spot", "Safe Zone" }, 
    Default = "Default", 
    Flag = "SpawnLocation" 
})



-- Textboxes
HomeRight:Textbox({ 
    Name = "Target", 
    Placeholder = "username", 
    Flag = "Target" 
})

PlayerRight:Textbox({ 
    Name = "Display", 
    Placeholder = "name", 
    Flag = "DisplayName" 
})



-- Config Load
ConfigSub:Config()



-- Notification
Arcane:Notification({ 
    Name = "ARCANE", 
    Description = "Loaded — Right Ctrl to toggle.", 
    Duration = 5, 
    Icon = "check", 
    Color = Color3.fromRGB(52, 255, 164) 
})



-- Watermark
Window:Watermark({ 
    Title = "This is a watermark" 
})
