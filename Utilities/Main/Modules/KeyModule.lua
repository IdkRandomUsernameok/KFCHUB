-- Services

local Players = game:GetService("Players")

-- Variables

local Plr = Players.LocalPlayer

local Functions = {
    IsClosure = is_synapse_function or iskrnlclosure or isexecutorclosure,
    SetIdentity = (syn and syn.set_thread_identity) or set_thread_identity or setthreadidentity or setthreadcontext,
    GetIdentity = (syn and syn.get_thread_identity) or get_thread_identity or getthreadidentity or getthreadcontext,
    Request = (syn and syn.request) or http_request or request,
    QueueOnTeleport = (syn and syn.queue_on_teleport) or queue_on_teleport,
    GetAsset = getsynasset or getcustomasset,
}

local function gen(length)
	local String = ""
	for i = 1,length do
		String ..= utf8.char(math.random(923,10175))
	end

	return String
end

Functions.CreateRandomKey = function(args)
    return gen(args["Amount"])
end

return Functions