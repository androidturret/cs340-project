--save in lua\autorun\server
--include functions for creating and managing the table
include( "server/songTable.lua" );

--create hooks to watch the chat with
--adding songs

hook.Add("PlayerSay", "addsongtoqueue", addSong);

--removing songs
hook.Add("PlayerSay", "removesongfromqueue", removeSong);