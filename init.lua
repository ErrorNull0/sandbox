villagers = {}
villagers.mods = {}
--villagers.villager_ids = {}

if minetest.get_modpath("cottages") then villagers.mods["cottages"] = true end

local modpaths = minetest.get_modpath("villagers")
dofile(modpaths.."/constants.lua")
dofile(modpaths.."/items.lua")
dofile(modpaths.."/functions.lua")
dofile(modpaths.."/attributes.lua")
dofile(modpaths.."/chatting.lua")
dofile(modpaths.."/actions.lua")
dofile(modpaths.."/dialogue.lua")
dofile(modpaths.."/trading.lua")
dofile(modpaths.."/spawn.lua")
dofile(modpaths.."/callbacks.lua")
dofile(modpaths.."/chat_commands.lua")
