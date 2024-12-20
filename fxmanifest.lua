fx_version 'cerulean'
game 'gta5'

lua54 'yes' -- Enables Lua 5.4 for ox_lib

author 'Enzonami'
description 'Context..'
version '1.0.0'

-- Client-side scripts
client_scripts {
    'config.lua', -- Load the configuration first
    'client.lua'  -- Main script
    
}

-- Shared scripts
shared_scripts {
    '@ox_lib/init.lua' -- Initializes ox_lib
}

-- Dependencies
dependencies {
    'ox_target',   -- For interaction zones
    'ox_lib'       -- For notifications and other utilities
}
