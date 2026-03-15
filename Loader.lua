local scripts = {
    [994732206] = { -- Blox Fruits
       "loadstring(game:HttpGet("https://api.rubis.app/v2/scrap/BrlLMOhOlQX2AjJl/raw?accessKey=Unknown", true))()",
    }
}

local cfg = scripts[game.GameId]
if not cfg then
    game:GetService("Players").LocalPlayer:Kick("Game not supported")
    return
end
