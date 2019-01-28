vRP = Proxy.getInterface("vRP")

local menuEnabled = false

RegisterNetEvent("ToggleActionmenu")
AddEventHandler("ToggleActionmenu", function()
	ToggleActionMenu()
end)

function ToggleActionMenu()
	Citizen.Trace("tutorial launch")
	menuEnabled = not menuEnabled
	if ( menuEnabled ) then
		SetNuiFocus( true, true )
		SendNUIMessage({
			showPlayerMenu = true
		})
	else
		SetNuiFocus( false )
		SendNUIMessage({
			showPlayerMenu = false
		})
	end
end

function killTutorialMenu()
SetNuiFocus( false )
		SendNUIMessage({
			showPlayerMenu = false
		})
		menuEnabled = false

end


RegisterNUICallback('close', function(data, cb)
  ToggleActionMenu()
  cb('ok')
end)

Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(27, 705.682189941406,-966.919067382813,30.3953418731689-1.0001, 0, 0, 0, 0, 0, 0, 1.0001,1.0001,1.0001, 0, 232, 255, 155, 0, 0, 0, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 705.682189941406,-966.919067382813,30.3953418731689, true ) < 1 then
			DisplayHelpText("Pressione ~g~E~s~ para acessar a agencia de empregos")
		 if (IsControlJustReleased(1, 51)) then
			SetNuiFocus( true, true )
			SendNUIMessage({
				showPlayerMenu = true
			})
		 end
		end
	end
end)

RegisterNUICallback('desempregado', function(data, cb)
	TriggerServerEvent("desempregado")
  	cb('ok')
end)

RegisterNUICallback('ladraocarro', function(data, cb)
	TriggerServerEvent("ladraocarro")
  	cb('ok')
end)

RegisterNUICallback('traficante', function(data, cb)
	TriggerServerEvent("traficante")
  	cb('ok')
end)

RegisterNUICallback('traficatortuga', function(data, cb)
	TriggerServerEvent("traficatortuga")
  	cb('ok')
end)

RegisterNUICallback('hacker', function(data, cb)
	TriggerServerEvent("hacker")
  	cb('ok')
end)


RegisterNUICallback('closeButton', function(data, cb)
	killTutorialMenu()
  	cb('ok')
end)

function DrawSpecialText(m_text, showtime)
	SetTextEntry_2("STRING")
	AddTextComponentString(m_text)
	DrawSubtitleTimed(showtime, 1)
end

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end
