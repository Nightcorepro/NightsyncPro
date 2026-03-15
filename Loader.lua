local scripts = {
    [994732206] = { -- Blox Fruits
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Nightcorepro/NightsyncPro/refs/heads/main/Main.lua"))(),
    }
}

local cfg = scripts[game.GameId]
if not cfg then
    game:GetService("Players").LocalPlayer:Kick("Game not supported")
    return
end
