RegisterCommand("clear", function()
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    notify("~r~Cleared All Weapons.")
end)
Citizen.CreateThread(function()
    local h_key = 74
    local x_key = 73
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1, h_key --[[ H key ]]) then
            print("the key".. h_key .."was pressed")
            giveweapon("weapon_pistol")
            giveweapon("weapon_knife")
            alert("~b~Given weapons with ~INPUT_VEH_HEADLIGHT~")
        end
        if IsControlJustReleased(1,  x_key --[[ X key ]]) then
            giveWeapon("weapon_combatmg")
            alert("~g~Given weapons with ~INPUT_VEH_DUCK~")
        end
    end
end)