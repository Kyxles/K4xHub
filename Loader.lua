-- K4xHub Loader

local games = {
    [{6516141723}] = "https://raw.githubusercontent.com/Kyxles/K4xHub/main/Doors.lua",
}

for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        loadstring(game:HttpGet(url))(); break
    end
end
