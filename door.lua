local radar = peripheral.wrap("left")
local players = radar.getPlayers()
 
local playerName = ""
local distance = 0
 
while true do
players = radar.getPlayers()
    for i = 1, #players do
        for k, v in pairs(players) do
            if players[i]["name"] ~= "" or players[i]["name"] ~= nil then
                playerName = players[i]["name"]
            end
            if players[i]["distance"] ~= nil then
                distance = players[i]["distance"]
                if distance <= 2.0 then
                redstone.setOutput("top",true)
                print("opened")
                sleep(0.8)
                redstone.setOutput("top",false)
                end
            end
         end
    end
    sleep(0.5)
end
