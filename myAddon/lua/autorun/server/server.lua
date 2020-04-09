--save in lua\autorun\server
--include functions for creating and managing the table
include(songTable.lua);
creatTable();
addSong();
removeSong();
getSong();
--create hook to watch the chat with
