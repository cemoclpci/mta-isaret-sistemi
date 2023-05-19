local coltID = 22 -- Colt-45 silahının ID'si (MTA'nın silah tablosuna göre değişebilir)
local playerWeapon = {} -- Oyuncunun elindeki silahları saklayan tablo

function givePlayerWeapon()
    local player = source
    if not playerWeapon[player] then
        playerWeapon[player] = giveWeapon(player, coltID, 1, true) -- Oyuncuya Colt-45 silahını verir ve elinde saklar
    end
end
addEvent("givePlayerWeapon", true)
addEventHandler("givePlayerWeapon", root, givePlayerWeapon)

function takeAwayWeapon()
    local player = source
    if playerWeapon[player] and isElement(playerWeapon[player]) then
        takeWeapon(player, playerWeapon[player]) -- Oyuncunun elindeki silahı alır
        playerWeapon[player] = nil
    end
end
addEvent("takeAwayWeapon", true)
addEventHandler("takeAwayWeapon", root, takeAwayWeapon)
