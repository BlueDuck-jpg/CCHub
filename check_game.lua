local key;
key = game.HttpService:JSONDecode(readfile("cchub.json"))
local requests = request or syn.request
local check_key = requests({
    Url="https://cchub.smktd.repl.co/findkey?key=" .. key.cchubkey,
    Method="GET",
    Headers=headers
})
local check_blacklist = game.HttpService:JSONEncode(check_key.Body):split('"')[16]:split(":")[2]:split("}")[1]

if check_blacklist ~= "true" then
    if game.PlaceId == 1962086868 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BlueDuck-jpg/CCHub/main/toh.lua"))()
    elseif game.PlaceId == 6067050638 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BlueDuck-jpg/CCHub/main/tyt.lua"))()
    elseif game.PlaceId == 286090429 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BlueDuck-jpg/CCHub/main/ars.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BlueDuck-jpg/CCHub/main/univ.lua"))()
    end
else
    game.Players.LocalPlayer:Kick("Your account have been blacklisted!")
end
