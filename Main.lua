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
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new( -- gradient
        Color3.fromHex("#ffffff"), 
        Color3.fromHex("#ffffff")
    ),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
})

Window:SetToggleKey(Enum.KeyCode.N) --Keybind to open/close the UI

---[Tab: About]---
local Tab = Window:Tab({
    Title = "About",
    Icon = "info", -- optional
    Locked = false,
})

Tab:Select() -- Select Tab

---[Tab: Main]---
local Tab = Window:Tab({
    Title = "Main",
    Icon = "house", -- optional
    Locked = false,
})

---[Tags]---
Window:Tag({
    Title = "v1.0.0",
    Icon = "github",
    Color = Color3.fromHex("#f71302"),
    Radius = 13, -- from 0 to 13
})
