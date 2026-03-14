local scripts = {
    [0] = { -- Re:Level
        
    },
    [994732206] = { -- Blox Fruits
       "",
    }
}

local cfg = scripts[game.GameId]
if not cfg then
    game:GetService("Players").LocalPlayer:Kick("Game not supported")
    return
end
