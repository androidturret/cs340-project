--creating the table
songs={}

--adding a song onto the table
function addSong( url )
    print( "Adding a song to the table!" );
    --insert will always append to the end
    table.insert( songs, url );
end

--remove song from end of table
function removeSong()
    print( "Removing a song from the table!" );
    -- weird way to get the last index of a table but ok
    table.remove(songs);
    
end

function getSong( index )
    return songs[index];
end