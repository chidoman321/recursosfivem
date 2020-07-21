-- Resource Metadata
fx_version 'bodacious'
games { 'rdr3', 'gta5' }

author 'Jon Doe'
description 'Example resource'
version '1.0.0'

ui_page 'index.html'

-- What to run
client_script 'client.lua'

server_scripts {'server.lua'
,'@mysql-async/lib/MySQL.lua'
}

files{
	"index.html",
	"style.css",
	"reset.css",
	"listener.js"
	


}