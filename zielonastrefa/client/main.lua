ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

Citizen.CreateThread(function()

		while true do
			Citizen.Wait(0)

			local ped = GetPlayerPed(-1)
			local playercoord = GetEntityCoords(ped)

			for k,v in pairs(Config.Zones) do
				for i=1, #v.szef, 1 do
					if Vdist2(v.szef[i], playercoord) < Config.InteractDistance then
						DrawText3Ds(v.szef[i].x, v.szef[i].y, v.szef[i].z, ('Zielona Strefa'))
					end
				end
			end
		end
end)

Citizen.CreateThread(function()
		while true do

			Citizen.Wait(10)

			local ped = GetPlayerPed(-1)
			local playercoord = GetEntityCoords(ped)

			for k,v in pairs(Config.Zones) do
				for i=1, #v.szef, 1 do
	
					if Vdist2(v.szef[i], playercoord) < Config.InteractDistance then
						NetworkSetFriendlyFireOption(false)

						DisableControlAction(2, 37, true)
						DisablePlayerFiring(player, true)
						DisableControlAction(0, 106, true)
							if IsDisabledControlJustPressed(2, 37) then
								SetCurrentPedWeapon(player, GetHashKey("WEAPON_UNARMED"),true)
									ESX.ShowNotification('~r~nie możesz ~w~tego zrobić na ~g~green zone', 'nie mozesz')
							end
							
							if IsDisabledControlJustPressed(0, 106) then
								SetCurrentPedWeapon(player, GetHashKey("WEAPON_UNARMED"),true)
									ESX.ShowNotification('~r~nie możesz ~w~tego zrobić na ~g~green zone', 'nie mozesz')
							end
					end
				end
			end
		end

end)

function DrawText3Ds(x, y, z, text)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	local factor = #text / 460
	local px,py,pz=table.unpack(GetGameplayCamCoords())
			
	SetTextScale(Config.TextX, Config.TextY)
	SetTextFont(Config.FontType)
	SetTextProportional(1)
	SetTextColour(Config.Red, Config.Green, Config.Blue, Config.Alpha)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	DrawRect(_x,_y + Config.RectangleX, Config.RectangleW + factor, Config.RectangleH, Config.RectRed, Config.RectGreen, Config.RectBlue, Config.RectAlpha)
end

Citizen.CreateThread(function()

		while true do
			Citizen.Wait(0)

			local ped = GetPlayerPed(-1)
			local playercoord = GetEntityCoords(ped)

			for k,v in pairs(Config.Zones) do
				for i=1, #v.szef, 1 do
					if Vdist2(v.szef[i], playercoord) < Config.InteractDistance then
						DrawMarker(28, v.szef[i], 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 32.0, 32.0, 32.0, 0, 216, 0, 100, false, true, 2, true, false, false, false)
					end
				end
			end
		end
end)

---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999