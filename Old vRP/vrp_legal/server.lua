local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_legal")

RegisterServerEvent("desempregado")
AddEventHandler("desempregado", function()
  local source = source
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Desempregado"})
	vRPclient._notify(player,{"Agora você é um Desempregado"})
  end
end)

RegisterServerEvent("pescador")
AddEventHandler("pescador", function()
  local source = source
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Pescador"})
	vRPclient._notify(player, {"Agora você é um Pescador"})
  end
end)

RegisterServerEvent("taxi")
AddEventHandler("taxi", function()
  local source = source
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Taxi"})
	vRPclient._notify(player, {"Agora você é um Taxista"})
  end
end)

RegisterServerEvent("mecanico")
AddEventHandler("mecanico", function()
  local source = source
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Mecânico"})
	vRPclient._notify(player, {"Agora você é um Mecânico"})
  end
end)

RegisterServerEvent("transportador")
AddEventHandler("transportador", function()
  local source = source
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Transportador de Valores"})
	vRPclient._notify(player, {"Agora você é um Transportador de Valores"})
  end
end)

RegisterServerEvent("onibus")
AddEventHandler("onibus", function()
  local source = source
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Motorista de Ônibus"})
	vRPclient._notify(player, {"Agora você é um Motorista de Ônibus"})
  end
end)

RegisterServerEvent("eletricista")
AddEventHandler("eletricista", function()
  local source = source
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Eletricista"})
	vRPclient._notify(player, {"Agora você é um Eletricista"})
  end
end)

RegisterServerEvent("motoboy")
AddEventHandler("motoboy", function()
  local source = source
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Moto Boy"})
	vRPclient._notify(player, {"Agora você é um Moto Boy"})
  end
end)

RegisterServerEvent("mineradima")
AddEventHandler("mineradima", function()
  local source = source
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Minerador Diamante"})
	vRPclient._notify(player, {"Agora você é um Minerador de Diamantes"})
  end
end)

RegisterServerEvent("mineraouro")
AddEventHandler("mineraouro", function()
  local source = source
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Minerador Ouro"})
	vRPclient._notify(player, {"Agora você é um Minerador de Ouro"})
  end
end)

RegisterServerEvent("mineracobre")
AddEventHandler("mineracobre", function()
  local source = source
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Minerador Cobre"})
	vRPclient._notify(player, {"Agora você é um Minerador de Cobre"})
  end
end)

--[[RegisterServerEvent("cacador")
AddEventHandler("cacador", function()
  local source = source
  local user_id = vRP.getUserId({source})
  
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Caçador"})
	vRPclient._notify(source, {"Agora você é um Caçador"})
  end
end)--]]

--[[RegisterServerEvent("caminhoneiro")
AddEventHandler("caminhoneiro", function()
  local source = source
  local user_id = vRP.getUserId({source})
  
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Caminhoneiro"})
	vRPclient._notify(source, {"Agora você é um Caminhoneiro")
  end
end)--]]


