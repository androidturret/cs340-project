--creating the table
songs={}

--adding a song onto the table
function addSong( p, message, teamChat )

    if string.match(message, "!addsong") then
        print( "Adding a song to the table!" );
        
        --remove the comand so we're left with the url
        url = string.Replace(message, "!addsong ", "")

        --insert will always append to the end
        table.insert( songs, url );
    end
end

--remove song from end of table
function removeSong(p, message, teamChat)

    if string.match(message, "!removesong") then
        print( "Removing a song from the table!" );
        -- will always remove last index of the table but if you give it the index of 1
        -- it removes the first element instead which is technically the oldest since always adding to the end
        --make sure table isn't empty before removing from it
        if !table.IsEmpty(songs) then
            print("entry removed!");
            table.remove(songs, 1);
        end
    end
end

function getSong( index )
    return songs[index];
end