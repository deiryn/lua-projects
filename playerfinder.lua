--local PLAYERS = game:GetService("Players")
--imagine there is a list i made up ok shutup!!

playerList = {"deisnake", "adamshot", "nori"}


local function returnName(name)
    local concurrences = 0
    local foundNames = {}
    
    for index, username in pairs(playerList) do
    
        local checkString = username
    
        if string.find(checkString, name) ~= nil then
            concurrences = concurrences + 1
            table.insert(foundNames, checkString)
        end
    
    end
    
    if concurrences == 0 then
        return "No user found, try to specify"
    elseif concurrences == 1 then
        for index, value in pairs(foundNames) do
            return value
        end
    elseif concurrences > 1 then
        return "More than one name found, try to specify!"
    else
        return "Error!"
    end

end

print(returnName("dei")) -- -> returns deisnake