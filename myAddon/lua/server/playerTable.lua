-- creating the table
players={}

--removePlayer and addPlayer are already gmod functions. want to avoid any possible overlap
--adding a player to the table
function includePlayer( p, message, teamChat )
    if string.match(message, "!joinradio") then

        --adding the player's userID to the table
        table.insert( players, p:UserID());

        print ("Player ", p, " has been added!");
    end
end

--removing a player from the table
function excludePlayer( p, message, teamChat )
    if string.match(message, "!leaveradio") then
        -- need to loop through the table until we find the matching value
        local thisPlayer = p:UserID();
        local key = nil
        --to fix. loop currently doesn't work
        for k,v in players(thisPlayer) do
            if v==thisPlayer then key = k end
        end

        if key == nil then 
            print("player ", p:Nick(), "Has not opted in yet and cannot be removed");
        else
            table.remove(songs, key);
            print("Player ", p.Nick(), " has be removed!");
        end
    end
end


function printPlayer ( p, message, teamchat ) 
    print(table.ToString(players));
    print("test", p:Nick(), "test2", p:UserID() );
    print( Player(3) );
end