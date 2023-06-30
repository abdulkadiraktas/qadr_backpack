fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

name "qadr_backpack"
author "Abdulkadir AKTAŞ"
description "backpack script for redemrp base"
version '0.1'

shared_scripts {
	'config.lua',
	'shared/*.lua',
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/server.lua',
}

lua54 'yes'