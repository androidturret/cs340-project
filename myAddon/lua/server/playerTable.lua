-- creating the table
players={}

--removePlayer and addPlayer are already gmod functions. want to avoid any possible overlap
--adding a player to the table
function includePlayer( p, message, teamChat )
    if string.match(message, "!joinradio") then

        --adding the player's userID to the table
        table.insert( players, p:UserID());

        print ("Player ", p:Nick(), " has been added!");
    end
end

--removing a player from the table
function excludePlayer( p, message, teamChat )
    if string.match(message, "!leaveradio") then
        -- need to loop through the table until we find the matching value
        local key = nil

        for k,v in ipairs(players) do
            if v==p:UserID() then key = k end
        end

        if key == nil then 
            print("player", p:Nick(), "Has not opted in yet and cannot be removed");
        else
            table.remove(songs, key);
            print("Player", p:Nick(), "has been removed!");
        end
    end
end