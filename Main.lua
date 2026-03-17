local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "NightSyncPro",
    Icon = "rbxassetid://93446863308514",
    Author = "by NightSync",
    Folder = "SaveConfigs",
    
    ----{UI Settings}----
    Size = UDim2.fromOffset(850, 560),
    MinSize = Vector2.new(560, 350),
    MaxSize = Vector2.new(850, 560),
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 200,
    BackgroundImageTransparency = 0.42,
    HideSearchBar = false,
    ScrollBarEnabled = true,

    ----{User Profile}----
    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function()
        end,
    },

    ----{KeySystem}----
    KeySystem = { 
        Key = { "mzgammz", "botishuman" },
        Note = "Premium Key System.",
        
        Thumbnail = {
            Image = "rbxassetid://93446863308514",
            Title = "",
        },

        URL = "YOUR LINK TO GET KEY (Discord, Linkvertise, Pastebin, etc.)",

        SaveKey = true, -- automatically save and load the key.
        
        -- ↓ Optional. You can remove it.
        -- API = {} ← Services. Read about it below ↓
    },
})

--{UI Open Notify}--
WindUI:Notify({
    Title = "Welcome to NightSyncPro!",
    Content = "Join our Discord for support and updates.",
    Duration = 10, -- 10 seconds
    Icon = "code",
})

---[Open Ui]---
Window:EditOpenButton({ --Button to open/close the UI
    Title = "",
    Icon = "rbxassetid://93446863308514",
    CornerRadius = UDim.new(1, 0),
    StrokeThickness = 3,
    Color = ColorSequence.new( -- gradient
        Color3.fromHex("#ffffff"), 
        Color3.fromHex("#ffffff")
    ),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
})

Window:SetToggleKey(Enum.KeyCode.N) --Keybind to open/close the UI

---[Tags]---
Window:Tag({
    Title = "v1.0.0",
    Icon = "github",
    Color = Color3.fromHex("#f71302"),
    Radius = 13, -- from 0 to 13
})

Window:Tag({
    Title = "discord.gg/ZDzce24QEw",
    Icon = "link",
    Color = Color3.fromHex("#ffffff"),
    Radius = 13, -- from 0 to 13
})

---[Tab: About]---
local AboutTab = Window:Tab({
    Title = "About",
    Icon = "info", -- optional
    Locked = false,
})

local Paragraph = AboutTab:Paragraph({
    Title = "About NightSyncPro",
    Desc = "NightSyncPro is a powerful Roblox script designed to enhance your gaming experience. With a user-friendly interface and a variety of features, it allows you to customize your gameplay and access exclusive content. Whether you're looking for new skins, enhanced abilities, or just want to explore the game in a new way, NightSyncPro has got you covered. Join our community and discover all the amazing possibilities that await you with NightSyncPro!",
    Color = "Red",
    Image = "",
    ImageSize = 30,
    Thumbnail = "",
    ThumbnailSize = 80,
    Locked = false,
})

AboutTab:Select() -- Select About Tab

Window:Divider()

---[Tab: Main]---
local MainTab = Window:Tab({
    Title = "Main",
    Icon = "house", -- optional
    Locked = false,
})

Window:Divider()

---[Tab: UI Settings]---
local UITab = Window:Tab({
    Title = "UI Settings",
    Icon = "frame", -- optional
    Locked = false,
})

local Dropdown = UITab:Dropdown({
    Title = "Theme",
    Desc = "Select your preferred theme.",
    Values = { "Dark", "Light", "Rose", "Plant", "Red", "Indigo", "Sky", "Violet", "Amber", "Emerald", "Midnight", "Crimson", "Cotton Candy", "Rainbow" },
    Value = "Dark", -- default value
    Callback = function(option) 
        Window:SetTheme(option) -- set the theme of the UI
    end
})

WindUI:AddTheme({
    Name = "Cotton Candy", -- theme name
    
    Accent = Color3.fromHex("#ec4899"),
    Dialog = Color3.fromHex("#2d1b3d"),
    Outline = Color3.fromHex("#f9a8d4"),
    Text = Color3.fromHex("#fdf2f8"),
    Placeholder = Color3.fromHex("#8a5fd3"),
    Background = Color3.fromHex("#1a0b2e"),
    Slider = Color3.fromHex("#d946ef"),
    Button = Color3.fromHex("#d946ef"),
    Icon = Color3.fromHex("#06b6d4"),
})
