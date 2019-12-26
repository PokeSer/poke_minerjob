RegisterServerEvent('poke_minero:comjob')
AddEventHandler('poke_minero:comjob', function()
    TriggerEvent('redemrp:getPlayerFromId', source, function(user)
        if user.getJob() == Config.JobName then
            TriggerClientEvent('poke_minero:comienzo', source)
            TriggerClientEvent("redemrp_notification:start", source, Language.translate[Config.lang]['gopos'], 5)
        else
            TriggerClientEvent("redemrp_notification:start", source, Language.translate[Config.lang]['nojob'], 5)
        end
    end)
end)

RegisterServerEvent('poke_minero:cobrar')
AddEventHandler('poke_minero:cobrar', function(dinero, xp)
    TriggerEvent('redemrp:getPlayerFromId', source, function(user)
        user.addMoney(dinero)
        user.addXP(xp)
	end)
end)