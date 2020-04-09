--save in lua\autorun\server
--include functions for creating and managing the table
include( "server/songTable.lua" );
creatTable();
addSong();
removeSong();
getSong();
--create hook to watch the chat with
