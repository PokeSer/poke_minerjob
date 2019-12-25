RegisterServerEvent('poke_minero:comjob')
AddEventHandler('poke_minero:comjob', function()
    TriggerEvent('redemrp:getPlayerFromId', source, function(user)
        if user.getJob() == Config.JobName then
            TriggerClientEvent('poke_minero:comienzo', source)
            TriggerClientEvent('chatMessage', source, Language.translate[Config.lang]['miner'], {243, 159, 0}, Language.translate[Config.lang]['gopos'])
        else
            TriggerClientEvent('chatMessage', source, Language.translate[Config.lang]['miner'], {243, 159, 0}, Language.translate[Config.lang]['nojob'])
        end
    end)
end)

RegisterServerEvent('poke_minero:cobrar')
AddEventHandler('poke_minero:cobrar', function(dinero)
    TriggerEvent('redemrp:getPlayerFromId', source, function(user)
        user.addMoney(dinero)
	end)
end)