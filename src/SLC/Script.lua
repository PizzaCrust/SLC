--[[
 Enable HTTP Service to make the script work.
 ]]

local folder = script.Parent
local url = script.Parent.ServerListServerURL.Value
local authCode = script.Parent.AuthenticationCode.Value

local instanceId = game.JobId
local currentPlayers = #(game.Players:GetPlayers())
local placeId = game.PlaceId

local httpService = game:GetService("HttpService")

local link = url .. "/registerserver?code=" .. authCode .. "&instance_id=" .. instanceId .. "&place_id=" .. placeId .. "&regpc=" .. currentPlayers

game:BindToClose(function()
    print("got the game is closing")
    local closeLink = script.Parent.ServerListServerURL.Value .. "/delserver?code=" .. script.Parent.AuthenticationCode.Value .. "&instance_id=" .. game.JobId
    print("sending del server")
    local potato = game:GetService("HttpService")
    potato:PostAsync(closeLink, "")
    print("sent")
end)

print("sending code")
--print(link)
httpService:PostAsync(link, "")
print("code sent to server")