-- ###################################
--
--       Credits: Shadow
--
-- ###################################
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
JBserver = Tunnel.getInterface("vrp_jobs","vrp_jobs")

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
		DrawMarker(27, -266.821,-960.292,31.223-1.0001, 0, 0, 0, 0, 0, 0, 1.0001,1.0001,1.0001, 0, 232, 255, 155, 0, 0, 0, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -266.821,-960.292,31.223, true ) < 1 then
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
	JBserver.jobCitizen()
  	cb('ok')
end)

RegisterNUICallback('pescador', function(data, cb)
	JBserver.jobPescador()
  	cb('ok')
end)

RegisterNUICallback('taxi', function(data, cb)
	JBserver.jobTaxi()
  	cb('ok')
end)

RegisterNUICallback('mecanico', function(data, cb)
	JBserver.jobMecanico()
  	cb('ok')
end)

RegisterNUICallback('entregador', function(data, cb)
	JBserver.jobEntregador()
  	cb('ok')
end)

RegisterNUICallback('transportador', function(data, cb)
	JBserver.jobTransportador()
  	cb('ok')
end)

RegisterNUICallback('onibus', function(data, cb)
	JBserver.jobOnibus()
  	cb('ok')
end)

RegisterNUICallback('cacador', function(data, cb)
	JBserver.jobCacador()
  	cb('ok')
end)

RegisterNUICallback('caminhoneiro', function(data, cb)
	JBserver.jobCaminhoneiro()
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
