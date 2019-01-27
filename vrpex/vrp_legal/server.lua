-- ###################################
--
--       Credits: Shadow
--
-- ###################################
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPjb = {}
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
Tunnel.bindInterface("vrp_jobs",vRPjb)

function vRPjb.jobCitizen()
  local source = source
  local user_id = vRP.getUserId(source)
  
  if vRP.hasGroup(user_id, "user") then
	vRP.addUserGroup(user_id, "Desempregado")
	vRPclient._notify(source, "Agora você é um Desempregado")
  end
end

function vRPjb.jobPescador()
  local source = source
  local user_id = vRP.getUserId(source)
  
  if vRP.hasGroup(user_id, "user") then
	vRP.addUserGroup(user_id, "Pescador")
	vRPclient._notify(source, "Agora você é um Pescador")
  end
end

function vRPjb.jobTaxi()
  local source = source
  local user_id = vRP.getUserId(source)
  
  if vRP.hasGroup(user_id, "user") then
	vRP.addUserGroup(user_id, "Taxi")
	vRPclient._notify(source, "Agora você é um Taxista")
  end
end

function vRPjb.jobMecanico()
  local source = source
  local user_id = vRP.getUserId(source)
  
  if vRP.hasGroup(user_id, "user") then
	vRP.addUserGroup(user_id, "Mecanico")
	vRPclient._notify(source, "Agora você é um Mecanico")
  end
end

function vRPjb.jobTransportador()
  local source = source
  local user_id = vRP.getUserId(source)
  
  if vRP.hasGroup(user_id, "user") then
	vRP.addUserGroup(user_id, "Transportador")
	vRPclient._notify(source, "Agora você é um Transportador")
  end
end

function vRPjb.jobOnibus()
  local source = source
  local user_id = vRP.getUserId(source)
  
  if vRP.hasGroup(user_id, "user") then
	vRP.addUserGroup(user_id, "Motorista de Ônibus")
	vRPclient._notify(source, "Agora você é um Motorista de Ônibus")
  end
end

function vRPjb.jobCacador()
  local source = source
  local user_id = vRP.getUserId(source)
  
  if vRP.hasGroup(user_id, "user") then
	vRP.addUserGroup(user_id, "Caçador")
	vRPclient._notify(source, "Agora você é um Caçador")
  end
end

function vRPjb.jobCaminhoneiro()
  local source = source
  local user_id = vRP.getUserId(source)
  
  if vRP.hasGroup(user_id, "user") then
	vRP.addUserGroup(user_id, "Caminhoneiro")
	vRPclient._notify(source, "Agora você é um Caminhoneiro")
  end
end