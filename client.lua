local logoVisible = true

-- Show logo on map start
AddEventHandler('onClientMapStart', function()
    Citizen.CreateThread(function()
        logoVisible = true
        SetNuiFocus(false, false)
        SendNUIMessage({ type = "toggleLogo", show = true })
    end)
end)

-- Register toggle command
RegisterCommand("logo", function()
    logoVisible = not logoVisible
    SendNUIMessage({ type = "toggleLogo", show = logoVisible })

    -- Notify using ox_lib
    exports['ox_lib']:notify({
        --title = 'Logo Display',
        description = logoVisible and 'Logo shown.' or 'Logo hidden.',
        type = logoVisible and 'success' or 'info'
    })
end, false)

-- Optional chat suggestion
TriggerEvent('chat:addSuggestion', '/logo', 'Toggle the server logo visibility')
