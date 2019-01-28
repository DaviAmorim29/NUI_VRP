local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_ilegal")

RegisterServerEvent("desempregado")
AddEventHandler("desempregado", function()
  local source = source
  local user_id = vRP.getUserId({source})
  
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Desempregado"})
	vRPclient._notify(source,{"Agora você é um Desempregado"})
  end
end)

RegisterServerEvent("ladraocarro")
AddEventHandler("ladraocarro", function()
  local source = source
  local user_id = vRP.getUserId({source})
  
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Ladrão de Carros"})
	vRPclient._notify(source, {"Agora você é um Ladrão de Carros"})
  end
end)

RegisterServerEvent("traficante")
AddEventHandler("traficante", function()
  local source = source
  local user_id = vRP.getUserId({source})
  
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Traficante De Drogas"})
	vRPclient._notify(source, {"Agora você é um Traficante De Drogas"})
  end
end)

RegisterServerEvent("traficatortuga")
AddEventHandler("traficatortuga", function()
  local source = source
  local user_id = vRP.getUserId({source})
  
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Traficante de Tartaruga"})
	vRPclient._notify(source, {"Agora você é um Traficante de Tartaruga"})
  end
end)

RegisterServerEvent("hacker")
AddEventHandler("hacker", function()
  local source = source
  local user_id = vRP.getUserId({source})
  
  if vRP.hasGroup({user_id, "user"}) then
	vRP.addUserGroup({user_id, "Hacker"})
	vRPclient._notify(source, {"Agora você é um Hacker"})
  end
end)