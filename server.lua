-- Optional: log to server console when a player toggles the logo
RegisterNetEvent('logo:logToggle', function(isVisible)
    local src = source
    local status = isVisible and "shown" or "hidden"
   -- print(("[Logo Script] Player [%s] toggled logo: %s"):format(src, status))
end)
