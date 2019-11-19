function alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function notify(string)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(string)
    DrawNotification(true, false)
end

function giveweapon(WeaponHash)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashkey(WeaponHash), 999, false, false)
end
