--save in lua\autorun\server
--include functions for creating and managing the table
include( "server/songTable.lua" );
include ( "server/playerTable.lua" );

--create hooks to watch the chat with
--adding songs
hook.Add("PlayerSay", "addsongtoqueue", addSong);

--removing songs
hook.Add("PlayerSay", "removesongfromqueue", removeSong);

--including players
hook.Add("PlayerSay", "playeroptin", includePlayer);

--removing players
hook.Add("PlayerSay", "playeroptout", excludePlayer);

-- for testing only. Remove when done
hook.Add("PlayerSay", "playerlistcheck", printPlayer);
