addEventHandler("onClientResourceStart", resourceRoot, function()
    bindKey("r", "down", "givePlayerWeapon")
    bindKey("r", "up", "takeAwayWeapon")
end)

function givePlayerWeapon()
    triggerServerEvent("givePlayerWeapon", localPlayer) -- Sunucuya Colt-45 silahını eline vermek için talepte bulunur
end

function takeAwayWeapon()
    triggerServerEvent("takeAwayWeapon", localPlayer) -- Sunucudan elindeki silahı almak için talepte bulunur
end
