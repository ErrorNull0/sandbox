-- Costs and Stock of all goods: index 1 is cost, index 2 is stock

local COSTS = {

	["default:grass_1"] = 1,
	["default:junglegrass"] = 1,
	["default:dry_grass_1"] = 1,
	["default:dry_shrub"] = 1,

	["default:dirt"] = 1,
	["default:gravel"] = 2,
	["default:ice"] = 5,

	["default:leaves"] = 2,
	["default:jungleleaves"] = 2,
	["default:pine_needles"] = 2,
	["default:acacia_leaves"] = 2,
	["default:aspen_leaves"] = 2,
	["default:bush_leaves"] = 2,
	["default:acacia_bush_leaves"] = 2,

	["default:apple"] = 3,
	["default:coral_skeleton"] = 5,

	["default:stick"] = 1,
	["default:bush_stem"] = 1,
	["default:acacia_bush_stem"] = 1,
	["default:bush_sapling"] = 4,
	["default:acacia_bush_sapling"] = 4,
	["default:aspen_sapling"] = 5,
	["default:pine_sapling"] = 5,
	["default:sapling"] = 6,
	["default:acacia_sapling"] = 7,
	["default:junglesapling"] = 8,
	["default:papyrus"] = 3,
	["default:cactus"] = 10,
	["default:cobble"] = 4,
	["default:mossycobble"] = 5,
	["default:desert_cobble"] = 4,
	["default:sand"] = 3,
	["default:snow"] = 2,
	["default:desert_sand"] = 3,
	["default:silver_sand"] = 3,
	["default:clay_lump"] = 4,
	["default:coal_lump"] = 20,
	["default:iron_lump"] = 100,
	["default:copper_lump"] = 200,
	["default:tin_lump"] = 200,
	["default:gold_lump"] = 400,
	["default:mese_crystal"] = 600,
	["default:diamond"] = 800,
	["default:obsidian"] = 1000,
	
	["wool:black"] = 15,
	["wool:blue"] = 20,
	["wool:brown"] = 15,
	["wool:cyan"] = 20,
	["wool:dark_green"] = 20,
	["wool:dark_grey"] = 15,
	["wool:green"] = 20,
	["wool:grey"] = 15,
	["wool:magenta"] = 20,
	["wool:orange"] = 20,
	["wool:pink"] = 20,
	["wool:red"] = 20,
	["wool:violet"] = 20,
	["wool:white"] = 15,
	["wool:yellow"] = 20,
	
	["flowers:dandelion_white"] = 12,
	["flowers:dandelion_yellow"] = 12,
	["flowers:geranium"] = 12,
	["flowers:mushroom_brown"] = 12,
	["flowers:mushroom_red"] = 12,
	["flowers:rose"] = 12,
	["flowers:tulip"] = 12,
	["flowers:viola"] = 12,
	["flowers:waterlily"] = 20,
}

local cook_multiplier = 1.25
local burntime_multiplier = 1.15
local aspen_modifier = 0
local pine_modifier = 0
local apple_modifier = 0
local acacia_modifier = 1
local jungle_modifier = 2

-- TREES AND WOOD [aspen, pine, apple, acacia, jungle]

COSTS["default:aspen_wood"] = (COSTS["default:stick"] * 4) + aspen_modifier
COSTS["default:aspen_tree"] = COSTS["default:aspen_wood"] * 4

COSTS["default:pine_wood"] = (COSTS["default:stick"] * 4) + pine_modifier
COSTS["default:pine_tree"] = COSTS["default:pine_wood"] * 4

COSTS["default:wood"] = (COSTS["default:stick"] * 4) + apple_modifier
COSTS["default:tree"] = COSTS["default:wood"] * 4
COSTS["default:bush_stem"] = COSTS["default:wood"]

COSTS["default:acacia_wood"] = (COSTS["default:stick"] * 4) + acacia_modifier
COSTS["default:acacia_tree"] = COSTS["default:acacia_wood"] * 4
COSTS["default:acacia_bush_stem"] = COSTS["default:acacia_wood"]

COSTS["default:junglewood"] = (COSTS["default:stick"] * 4) + jungle_modifier
COSTS["default:jungletree"] = COSTS["default:junglewood"] * 4

COSTS["default:paper"] = COSTS["default:papyrus"] * 3
COSTS["default:book"] = COSTS["default:paper"] * 3

-- EARTH AND MINERALS

COSTS["default:coalblock"] = villagers.round(COSTS["default:coal_lump"] * 9 * burntime_multiplier)
COSTS["default:snowblock"] = COSTS["default:snow"] * 9
COSTS["default:glass"] = villagers.round(COSTS["default:sand"] * cook_multiplier)

COSTS["default:stone"] = villagers.round(COSTS["default:cobble"] * cook_multiplier)
COSTS["default:stonebrick"] = COSTS["default:stone"]
COSTS["default:stone_block"] = COSTS["default:stone"]

COSTS["default:desert_stone"] = villagers.round(COSTS["default:desert_cobble"] * cook_multiplier)
COSTS["default:desert_stonebrick"] = COSTS["default:desert_stone"]
COSTS["default:desert_stone_block"] = COSTS["default:desert_stone"]

COSTS["default:sandstone"] = COSTS["default:sand"] * 4
COSTS["default:sandstonebrick"] = COSTS["default:sandstone"]
COSTS["default:sandstone_block"] = COSTS["default:sandstone"]

COSTS["default:desert_sandstone"] = COSTS["default:desert_sand"] * 4
COSTS["default:desert_sandstone_brick"] = COSTS["default:desert_sandstone"]
COSTS["default:desert_sandstone_block"] = COSTS["default:desert_sandstone"]

COSTS["default:silver_sandstone"] = COSTS["default:silver_sand"] * 4
COSTS["default:silver_sandstone_brick"] = COSTS["default:silver_sandstone"]
COSTS["default:silver_sandstone_block"] = COSTS["default:silver_sandstone"]

COSTS["default:clay"] = COSTS["default:clay_lump"] * 4
COSTS["default:clay_brick"] = villagers.round(COSTS["default:clay_lump"] * cook_multiplier)
COSTS["default:brick"] = COSTS["default:clay_brick"] * 4

COSTS["default:steel_ingot"] = villagers.round(COSTS["default:iron_lump"] * cook_multiplier)
COSTS["default:steelblock"] = COSTS["default:steel_ingot"] * 9

COSTS["default:copper_ingot"] = villagers.round(COSTS["default:copper_lump"] * cook_multiplier)
COSTS["default:copperblock"] = COSTS["default:copper_ingot"] * 9

COSTS["default:tin_ingot"] = villagers.round(COSTS["default:tin_lump"] * cook_multiplier)
COSTS["default:tinblock"] = COSTS["default:tin_ingot"] * 9

COSTS["default:bronze_ingot"] = villagers.round(((COSTS["default:copper_ingot"] * 8) + COSTS["default:tin_ingot"]) / 9)
COSTS["default:bronzeblock"] = COSTS["default:bronze_ingot"] * 9

COSTS["default:gold_ingot"] = villagers.round(COSTS["default:gold_lump"] * cook_multiplier)
COSTS["default:goldblock"] = COSTS["default:gold_ingot"] * 9

COSTS["default:mese_crystal_fragment"] = villagers.round(COSTS["default:mese_crystal"] / 9)
COSTS["default:mese"] = COSTS["default:mese_crystal"] * 9

COSTS["default:diamondblock"] = COSTS["default:diamond"] * 9

COSTS["default:obsidian_shard"] = villagers.round(COSTS["default:obsidian"] / 9)
COSTS["default:obsidian_glass"] = villagers.round(COSTS["default:obsidian_shard"] * cook_multiplier)
COSTS["default:obsidianbrick"] = COSTS["default:obsidian"]
COSTS["default:obsidian_block"] = COSTS["default:obsidian"]

COSTS["walls:cobble"] = COSTS["default:cobble"] * 6
COSTS["walls:mossycobble"] = COSTS["default:mossycobble"] * 6
COSTS["walls:desertcobble"] = COSTS["default:desert_cobble"] * 6

-- ITEMS AND TOOLS

COSTS["default:skeleton_key"] = villagers.round(COSTS["default:gold_ingot"] * cook_multiplier)
COSTS["default:key"] = COSTS["default:gold_ingot"]

COSTS["default:sign_wall_wood"] = villagers.round(((COSTS["default:wood"] * 6) + COSTS["default:stick"]) / 3)
COSTS["default:sign_wall_steel"] = villagers.round(((COSTS["default:steel_ingot"] * 6) + COSTS["default:stick"]) / 3)
COSTS["default:ladder_wood"] = villagers.round((COSTS["default:stick"] * 7) / 5)
COSTS["default:ladder_steel"] = villagers.round((COSTS["default:steel_ingot"] * 7) / 15)
COSTS["boats:boat"] = COSTS["default:wood"] * 5
COSTS["bucket:bucket_empty"] = COSTS["default:steel_ingot"] * 3

COSTS["default:torch"] = villagers.round(((COSTS["default:coal_lump"] + COSTS["default:coal_lump"]) * cook_multiplier))
COSTS["default:meselamp"] = COSTS["default:glass"] + COSTS["default:mese_crystal"]
COSTS["default:mese_post_light"] = villagers.round((COSTS["default:glass"] + COSTS["default:wood"] + (COSTS["default:mese_crystal"] * 3)) / 3)

COSTS["default:pick_wood"] = (COSTS["default:wood"] * 3) + (COSTS["default:stick"] * 2)
COSTS["default:pick_stone"] = (COSTS["default:stone"] * 3) + (COSTS["default:stick"] * 2)
COSTS["default:pick_steel"] = (COSTS["default:steel_ingot"] * 3) + (COSTS["default:stick"] * 2)
COSTS["default:pick_bronze"] = (COSTS["default:bronze_ingot"] * 3) + (COSTS["default:stick"] * 2)
COSTS["default:pick_mese"] = (COSTS["default:mese_crystal"] * 3) + (COSTS["default:stick"] * 2)
COSTS["default:pick_diamond"] = (COSTS["default:diamond"] * 3) + (COSTS["default:stick"] * 2)

COSTS["default:shovel_wood"] = COSTS["default:wood"] + (COSTS["default:stick"] * 2)
COSTS["default:shovel_stone"] = COSTS["default:stone"] + (COSTS["default:stick"] * 2)
COSTS["default:shovel_steel"] = COSTS["default:steel_ingot"] + (COSTS["default:stick"] * 2)
COSTS["default:shovel_bronze"] = COSTS["default:bronze_ingot"] + (COSTS["default:stick"] * 2)
COSTS["default:shovel_mese"] = COSTS["default:mese_crystal"] + (COSTS["default:stick"] * 2)
COSTS["default:shovel_diamond"] = COSTS["default:diamond"] + (COSTS["default:stick"] * 2)

COSTS["default:axe_wood"] = (COSTS["default:wood"] * 3) + (COSTS["default:stick"] * 2)
COSTS["default:axe_stone"] = (COSTS["default:stone"] * 3) + (COSTS["default:stick"] * 2)
COSTS["default:axe_steel"] = (COSTS["default:steel_ingot"] * 3) + (COSTS["default:stick"] * 2)
COSTS["default:axe_bronze"] = (COSTS["default:bronze_ingot"] * 3) + (COSTS["default:stick"] * 2)
COSTS["default:axe_mese"] = (COSTS["default:mese_crystal"] * 3) + (COSTS["default:stick"] * 2)
COSTS["default:axe_diamond"] = (COSTS["default:diamond"] * 3) + (COSTS["default:stick"] * 2)

COSTS["default:sword_wood"] = (COSTS["default:wood"] * 2) + COSTS["default:stick"]
COSTS["default:sword_stone"] = (COSTS["default:stone"] * 2) + COSTS["default:stick"]
COSTS["default:sword_steel"] = (COSTS["default:steel_ingot"] * 2) + COSTS["default:stick"]
COSTS["default:sword_bronze"] = (COSTS["default:bronze_ingot"] * 2) + COSTS["default:stick"]
COSTS["default:sword_mese"] = (COSTS["default:mese_crystal"] * 2) + COSTS["default:stick"]
COSTS["default:sword_diamond"] = (COSTS["default:diamond"] * 2) + COSTS["default:stick"]

COSTS["vessels:glass_bottle"] = villagers.round(COSTS["default:glass"] * 5 / 10)
COSTS["vessels:drinking_glass"] = villagers.round(COSTS["default:glass"] * 7 / 14)
COSTS["vessels:steel_bottle"] = COSTS["default:steel_ingot"]
COSTS["vessels:shelf"] = (COSTS["default:wood"] * 6) + COSTS["vessels:glass_bottle"] + COSTS["vessels:drinking_glass"] + COSTS["vessels:steel_bottle"]

COSTS["carts:cart"] = COSTS["default:steel_ingot"] * 5
COSTS["carts:rail"] = villagers.round((COSTS["default:steel_ingot"] * 6) + (COSTS["default:wood"] * 2) / 18)
COSTS["carts:powerrail"] = villagers.round((COSTS["default:steel_ingot"] * 6) + COSTS["default:mese_crystal"] + (COSTS["default:wood"] * 2) / 18)
COSTS["carts:brakerail"] = villagers.round((COSTS["default:steel_ingot"] * 6) + COSTS["default:coal_lump"] + (COSTS["default:wood"] * 2) / 18)

-- DYES

COSTS["dye:black"] = villagers.round(COSTS["default:coal_lump"] / 4)
COSTS["dye:red"] = villagers.round(COSTS["flowers:rose"] / 4)
COSTS["dye:orange"] = villagers.round(COSTS["flowers:tulip"] / 4)
COSTS["dye:yellow"] = villagers.round(COSTS["flowers:dandelion_yellow"] / 4)
COSTS["dye:blue"] = villagers.round(COSTS["flowers:geranium"] / 4)
COSTS["dye:violet"] = villagers.round(COSTS["flowers:viola"] / 4)
COSTS["dye:white"] = villagers.round(COSTS["flowers:dandelion_white"] / 4)
COSTS["dye:brown"] = villagers.round((COSTS["dye:orange"] + COSTS["dye:black"]) / 2)
COSTS["dye:green"] = villagers.round((COSTS["dye:blue"] + COSTS["dye:yellow"]) / 2)
COSTS["dye:cyan"] = villagers.round((COSTS["dye:blue"] + COSTS["dye:green"]) / 2)
COSTS["dye:dark_green"] = villagers.round((COSTS["dye:green"] + COSTS["dye:black"]) / 2)
COSTS["dye:dark_grey"] = villagers.round((COSTS["dye:blue"] + COSTS["dye:orange"] + COSTS["dye:yellow"] + COSTS["dye:violet"]) / 4)
COSTS["dye:grey"] = villagers.round((COSTS["dye:black"] + COSTS["dye:white"]) / 2)
COSTS["dye:pink"] = villagers.round((COSTS["dye:red"] + COSTS["dye:white"]) / 2)
COSTS["dye:magenta"] = villagers.round((COSTS["dye:pink"] + COSTS["dye:violet"]) / 2)

-- FURNITURE

COSTS["default:furnace"] = COSTS["default:stone"] * 8
COSTS["default:chest"] = COSTS["default:wood"] * 8
COSTS["default:chest_locked"] = (COSTS["default:wood"] * 8) + COSTS["default:steel_ingot"]
COSTS["default:bookshelf"] = (COSTS["default:wood"] * 6) + (COSTS["default:book"] * 3)

COSTS["default:fence_aspen_wood"] = (COSTS["default:stick"] * 4) + (COSTS["default:aspen_wood"] * 2)
COSTS["default:fence_pine_wood"] = (COSTS["default:stick"] * 4) + (COSTS["default:pine_wood"] * 2)
COSTS["default:fence_wood"] = (COSTS["default:stick"] * 4) + (COSTS["default:wood"] * 2)
COSTS["default:fence_acacia_wood"] = (COSTS["default:stick"] * 4) + (COSTS["default:acacia_wood"] * 2)
COSTS["default:fence_junglewood"] = (COSTS["default:stick"] * 4) + (COSTS["default:junglewood"] * 2)

COSTS["beds:bed_bottom"] = (COSTS["wool:red"] * 2) + COSTS["wool:white"] + (COSTS["default:wood"] * 3)
COSTS["beds:fancy_bed_bottom"] = (COSTS["wool:red"] * 2) + COSTS["wool:white"] + (COSTS["default:wood"] * 3) + COSTS["default:stick"]

-- ** UNUSED ** Not assigned to any village traders

COSTS["air"] = 1
COSTS["ignore"] = 1
COSTS["unknown"] = 1

COSTS["beds:bed_top"] = 1
COSTS["beds:fancy_bed_top"] = 1
COSTS["bones:bones"] = 1
COSTS["bucket:bucket_lava"] = 1
COSTS["bucket:bucket_river_water"] = 1
COSTS["bucket:bucket_water"] = 1
COSTS["default:book_written"] = 1
COSTS["default:chest_locked_open"] = 1
COSTS["default:chest_open"] = 1
COSTS["default:cloud"] = 1
COSTS["default:coral_brown"] = 1
COSTS["default:coral_orange"] = 1
COSTS["default:dirt_with_dry_grass"] = 1
COSTS["default:dirt_with_grass"] = 1
COSTS["default:dirt_with_grass_footsteps"] = 1
COSTS["default:dirt_with_rainforest_litter"] = 1
COSTS["default:dirt_with_snow"] = 1
COSTS["default:dry_grass_2"] = 1
COSTS["default:dry_grass_3"] = 1
COSTS["default:dry_grass_4"] = 1
COSTS["default:dry_grass_5"] = 1
COSTS["default:furnace_active"] = 1
COSTS["default:grass_2"] = 1
COSTS["default:grass_3"] = 1
COSTS["default:grass_4"] = 1
COSTS["default:grass_5"] = 1
COSTS["default:lava_flowing"] = 1
COSTS["default:lava_source"] = 1
COSTS["default:river_water_flowing"] = 1
COSTS["default:river_water_source"] = 1
COSTS["default:stone_with_coal"] = 1
COSTS["default:stone_with_copper"] = 1
COSTS["default:stone_with_diamond"] = 1
COSTS["default:stone_with_gold"] = 1
COSTS["default:stone_with_iron"] = 1
COSTS["default:stone_with_mese"] = 1
COSTS["default:stone_with_tin"] = 1
COSTS["default:torch_ceiling"] = 1
COSTS["default:torch_wall"] = 1
COSTS["default:water_flowing"] = 1
COSTS["default:water_source"] = 1
COSTS["doors:gate_acacia_wood_open"] = 1
COSTS["doors:gate_aspen_wood_open"] = 1
COSTS["doors:gate_junglewood_open"] = 1
COSTS["doors:gate_pine_wood_open"] = 1
COSTS["doors:gate_wood_open"] = 1
COSTS["doors:trapdoor_open"] = 1
COSTS["doors:trapdoor_steel_open"] = 1
COSTS["doors:hidden"] = 1

COSTS["doors:door_glass_a"] = 1
COSTS["doors:door_glass_b"] = 1
COSTS["doors:door_steel_a"] = 1
COSTS["doors:door_steel_b"] = 1
COSTS["doors:door_wood_a"] = 1
COSTS["doors:door_wood_b"] = 1

COSTS["farming:wheat_1"] = 1
COSTS["farming:wheat_2"] = 1
COSTS["farming:wheat_3"] = 1
COSTS["farming:wheat_4"] = 1
COSTS["farming:wheat_5"] = 1
COSTS["farming:wheat_6"] = 1
COSTS["farming:wheat_7"] = 1
COSTS["farming:wheat_8"] = 1
COSTS["farming:cotton_1"] = 1
COSTS["farming:cotton_2"] = 1
COSTS["farming:cotton_3"] = 1
COSTS["farming:cotton_4"] = 1
COSTS["farming:cotton_5"] = 1
COSTS["farming:cotton_6"] = 1
COSTS["farming:cotton_7"] = 1
COSTS["farming:cotton_8"] = 1

COSTS["stairs:stair_inner_acacia_wood"] = 1
COSTS["stairs:stair_inner_aspen_wood"] = 1
COSTS["stairs:stair_inner_brick"] = 1
COSTS["stairs:stair_inner_bronzeblock"] = 1
COSTS["stairs:stair_inner_clay"] = 1
COSTS["stairs:stair_inner_cobble"] = 1
COSTS["stairs:stair_inner_copperblock"] = 1
COSTS["stairs:stair_inner_desert_cobble"] = 1
COSTS["stairs:stair_inner_desert_sandstone"] = 1
COSTS["stairs:stair_inner_desert_sandstone_block"] = 1
COSTS["stairs:stair_inner_desert_sandstone_brick"] = 1
COSTS["stairs:stair_inner_desert_stone"] = 1
COSTS["stairs:stair_inner_desert_stone_block"] = 1
COSTS["stairs:stair_inner_desert_stonebrick"] = 1
COSTS["stairs:stair_inner_feldweg"] = 1
COSTS["stairs:stair_inner_goldblock"] = 1
COSTS["stairs:stair_inner_ice"] = 1
COSTS["stairs:stair_inner_junglewood"] = 1
COSTS["stairs:stair_inner_loam"] = 1
COSTS["stairs:stair_inner_mossycobble"] = 1
COSTS["stairs:stair_inner_obsidian"] = 1
COSTS["stairs:stair_inner_obsidian_block"] = 1
COSTS["stairs:stair_inner_obsidianbrick"] = 1
COSTS["stairs:stair_inner_pine_wood"] = 1
COSTS["stairs:stair_inner_sandstone"] = 1
COSTS["stairs:stair_inner_sandstone_block"] = 1
COSTS["stairs:stair_inner_sandstonebrick"] = 1
COSTS["stairs:stair_inner_silver_sandstone"] = 1
COSTS["stairs:stair_inner_silver_sandstone_block"] = 1
COSTS["stairs:stair_inner_silver_sandstone_brick"] = 1
COSTS["stairs:stair_inner_snowblock"] = 1
COSTS["stairs:stair_inner_steelblock"] = 1
COSTS["stairs:stair_inner_stone"] = 1
COSTS["stairs:stair_inner_stone_block"] = 1
COSTS["stairs:stair_inner_stonebrick"] = 1
COSTS["stairs:stair_inner_straw"] = 1
COSTS["stairs:stair_inner_tinblock"] = 1
COSTS["stairs:stair_inner_wood"] = 1
COSTS["stairs:stair_outer_acacia_wood"] = 1
COSTS["stairs:stair_outer_aspen_wood"] = 1
COSTS["stairs:stair_outer_brick"] = 1
COSTS["stairs:stair_outer_bronzeblock"] = 1
COSTS["stairs:stair_outer_clay"] = 1
COSTS["stairs:stair_outer_cobble"] = 1
COSTS["stairs:stair_outer_copperblock"] = 1
COSTS["stairs:stair_outer_desert_cobble"] = 1
COSTS["stairs:stair_outer_desert_sandstone"] = 1
COSTS["stairs:stair_outer_desert_sandstone_block"] = 1
COSTS["stairs:stair_outer_desert_sandstone_brick"] = 1
COSTS["stairs:stair_outer_desert_stone"] = 1
COSTS["stairs:stair_outer_desert_stone_block"] = 1
COSTS["stairs:stair_outer_desert_stonebrick"] = 1
COSTS["stairs:stair_outer_feldweg"] = 1
COSTS["stairs:stair_outer_goldblock"] = 1
COSTS["stairs:stair_outer_ice"] = 1
COSTS["stairs:stair_outer_junglewood"] = 1
COSTS["stairs:stair_outer_loam"] = 1
COSTS["stairs:stair_outer_mossycobble"] = 1
COSTS["stairs:stair_outer_obsidian"] = 1
COSTS["stairs:stair_outer_obsidian_block"] = 1
COSTS["stairs:stair_outer_obsidianbrick"] = 1
COSTS["stairs:stair_outer_pine_wood"] = 1
COSTS["stairs:stair_outer_sandstone"] = 1
COSTS["stairs:stair_outer_sandstone_block"] = 1
COSTS["stairs:stair_outer_sandstonebrick"] = 1
COSTS["stairs:stair_outer_silver_sandstone"] = 1
COSTS["stairs:stair_outer_silver_sandstone_block"] = 1
COSTS["stairs:stair_outer_silver_sandstone_brick"] = 1
COSTS["stairs:stair_outer_snowblock"] = 1
COSTS["stairs:stair_outer_steelblock"] = 1
COSTS["stairs:stair_outer_stone"] = 1
COSTS["stairs:stair_outer_stone_block"] = 1
COSTS["stairs:stair_outer_stonebrick"] = 1
COSTS["stairs:stair_outer_straw"] = 1
COSTS["stairs:stair_outer_tinblock"] = 1
COSTS["stairs:stair_outer_wood"] = 1

COSTS["fire:basic_flame"] = 1
COSTS["fire:permanent_flame"] = 1

COSTS["handle_schematics:build"] = 1
COSTS["handle_schematics:dig_here"] = 1
COSTS["handle_schematics:support"] = 1
COSTS["handle_schematics:support_setup"] = 1

COSTS["mg_villages:desert_sand_soil"] = 1
COSTS["mg_villages:lava_flowing_tamed"] = 1
COSTS["mg_villages:lava_source_tamed"] = 1
COSTS["mg_villages:mob_spawner"] = 1
COSTS["mg_villages:mob_workplace_marker"] = 1
COSTS["mg_villages:plotmarker"] = 1
COSTS["mg_villages:road"] = 1
COSTS["mg_villages:soil"] = 1

COSTS["tnt:boom"] = 1
COSTS["tnt:gunpowder_burning"] = 1

COSTS["vessels:glass_fragments"] = 1


-- returns the cost item name and cost amount for the item to be
-- traded as well as how much stock a villager will have of that item
local UNKNOWN_ITEMS = {} -- for testing only
local function getItemCostAndStock(item_name)
	local log = true
	io.write("getItemCS() ")
	
	local amount_in_stock
	if item_name == "villagers:coins" or 
		item_name == "villagers:coins_gold" then
		amount_in_stock = math.random(villagers.stock_min_coins, villagers.stock_max_coins)
		io.write("stock="..amount_in_stock.." ")
	else
		amount_in_stock = math.random(villagers.stock_min_items, villagers.stock_max_items)
		io.write("stock="..amount_in_stock.." ")
	end
	
	local recipe = minetest.get_craft_recipe(item_name)
	local items = recipe.items
	
	--local item_cost = getItemCost(item_name)
	local item_cost = COSTS[item_name]
	if item_cost == nil then
		io.write("unknown="..item_name.." setCost=1 ")
		table.insert(UNKNOWN_ITEMS, item_name)
		item_cost = 1
	end
	
	io.write("getItemCsEND ")
	return {"villagers:coins", item_cost, amount_in_stock}
end 

io.write("\n## Listing all registered items...")
-- creates the main table to holds the cost item name and cost quantity
-- of all registered items that villagers will trade as well as the 
-- stock quantity of the corresponding trade item
local GOODS_DATA = {}
for itemName, def in pairs(minetest.registered_items) do
	io.write("\n  ")
	if itemName == "" then 
		io.write("(empty string) ")
	elseif itemName == nil then
		io.write("(NIL) ")
	else
		io.write(itemName.." ")
		GOODS_DATA[itemName] = getItemCostAndStock(itemName)
	end
end
io.write("\nListing Complete. \n")

io.write("\n## Listing UNKNOWN items...")
for i=1, #UNKNOWN_ITEMS do
	io.write("\n  - "..UNKNOWN_ITEMS[i])
end
io.write("\nListing Complete. \n")

local goodsDataCount = 1
local DEFAULT_ITEM_NAMES = {}
for key,_ in pairs(GOODS_DATA) do
	local modname = string.split(key, ":")[1]
	if (modname == "cottages") or (modname == "farming") then
		-- do nothing
	else 
		table.insert(DEFAULT_ITEM_NAMES, key)
	end
	goodsDataCount = goodsDataCount + 1
end


local function getGoodsData(item_name, quantity, buyback)
	local log = true
	if log then 
		io.write("\ngetGoodsData() ") 
		if buyback then 
			io.write("playerSell ")
		else 
			io.write("villagerSell ") 
		end
		io.write("item_name="..item_name.." ")
	end
	
	-- if the item that villager is selling to player (or player is selling to villager)
	-- is from an optional mod but that is not installed, then use a random item from 
	-- minetest_game instead
	local modname = string.split(item_name, ":")[1]
	if log then io.write("modname="..modname.." ") end
	if (villagers.mods.cottages == nil and modname == "cottages") or
		(villagers.mods.farming == nil and modname == "farming") then
		item_name = DEFAULT_ITEM_NAMES[math.random(#DEFAULT_ITEM_NAMES)]
		if log then io.write("optionalModMissing gotRandomItem="..modname.." ") end
	end
	
	if minetest.registered_items[item_name] == nil then 
		return {"invalid_item", item_name}
	end
	if minetest.registered_items[item_name].description == nil then
		return {"no_description", item_name}
	end
	if GOODS_DATA[item_name] == nil then
		return {"naming_error", item_name}
	end
	
	-- item for player to sell villager for coins
	local goods
	if buyback then
		local quant_received = GOODS_DATA[item_name][2] / 3
		if log then io.write("quant_received="..quant_received.." ") end
		local purch_item = "villagers:coins"
		if quant_received < 1 then 
			quant_received = 1 
		elseif quant_received > 99 then
			quant_received = math.floor(quant_received/100)
			purch_item = "villagers:coins_gold"
		else
			quant_received = math.floor(quant_received)
		end
		local purch_desc = minetest.registered_items[purch_item].description
		
		goods = {
			purch_item, 		-- registered item name that player is purchasing (eg. coins)
			purch_desc, 	-- description of the above item
			quant_received, 	-- quantity of the above item player gets (typically coins and > 1)
			item_name, 			-- cost item that player must give
			minetest.registered_items[item_name].description, 	-- description of the cost item
			quantity,			-- quantity of the cost item player must give (typically 1)
			GOODS_DATA[purch_item][3]	-- stock quantity of purch item (typically coins and lots of stock)
		}
		
	-- item for villager to sell player
	else		
		--print("\n\n##item_name="..item_name)
		local cost_item_amnt = GOODS_DATA[item_name][2]
		
		local cost_item
		if cost_item_amnt > 99 then cost_item = "villagers:coins_gold"
		else cost_item = "villagers:coins" end
		
		goods = {
			item_name, 			-- registered item name that villager is purchasing
			minetest.registered_items[item_name].description, -- description of the above item
			quantity, 			-- quantity of the above item to receive for each purchase (typically 1)
			cost_item, 			-- cost item that player must give (eg. coins)
			minetest.registered_items[cost_item].description, 	-- description of the cost item
			cost_item_amnt, 	-- quantity of the cost item player must give (typically > 1)
			GOODS_DATA[item_name][3] 	-- stock quantity of the itme to be purchased
		}
	end
	
	if log then io.write("returnVal: "..minetest.serialize(goods).." ") end
	--io.write("\ngetGoodsDataEND ")
	return goods

end

-- temporary default goods for villagers until appropriate items are assigned
local DEFAULT_GOODS = { 
	{prob=1, split=0, min=1, max=1}, 
	getGoodsData("default:dirt", 1) 
}

--io.write("\n## Creating villagers.GOODS table..\n")
villagers.GOODS = {
	baker = {
		{prob=1, split=1, min=3, max=4},			
		getGoodsData("farming:bread", 1),
		getGoodsData("farming:baked_potato", 1),
		getGoodsData("farming:donut_apple", 1),
		getGoodsData("farming:donut", 1),
		getGoodsData("farming:muffin_blueberry", 1),
		getGoodsData("farming:pumpkin_bread", 1),
	},

	barkeeper = {
		{prob=1, split=0, min=1, max=3},
		getGoodsData("farming:coffee_cup", 1),
		getGoodsData("farming:smoothie_raspberry", 1),
		getGoodsData("farming:coffee_cup_hot", 1),
	},
	
	blacksmith = {
		{prob=1, split=2, min=4, max=5},
		getGoodsData("default:sword_steel", 1),
		getGoodsData("default:axe_steel", 1),
		getGoodsData("default:pick_steel", 1),
		getGoodsData("default:shovel_steel", 1),
		getGoodsData("farming:hoe_steel", 1),
		getGoodsData("cottages:hatch_steel", 1),
		getGoodsData("default:sign_wall_steel", 1),
		getGoodsData("default:ladder_steel", 1),
		getGoodsData("doors:door_steel", 1),
		getGoodsData("doors:trapdoor_steel", 1),
	},

	carpenter = {
		hot = {
			{prob=1, split=2, min=3, max=4},
			getGoodsData("default:fence_acacia_wood", 1),
			getGoodsData("doors:gate_acacia_wood_closed", 1),
			getGoodsData("doors:gate_wood_closed", 1),
			getGoodsData("default:sign_wall_wood", 1),
			getGoodsData("default:ladder_wood", 1),
			getGoodsData("default:chest", 1),
		},
		cold = {
			{prob=1, split=2, min=3, max=4},
			getGoodsData("default:fence_aspen_wood", 1),
			getGoodsData("doors:gate_aspen_wood_closed", 1),
			getGoodsData("default:fence_pine_wood", 1),
			getGoodsData("doors:gate_pine_wood_closed", 1),
			getGoodsData("cottages:barrel_lying", 1),
			getGoodsData("default:chest", 1),
			getGoodsData("default:sign_wall_wood", 1),
			getGoodsData("doors:door_wood", 1),
		},
		normal = {
			{prob=1, split=0, min=4, max=5},
			getGoodsData("doors:door_wood", 1),
			getGoodsData("boats:boat", 1),
			getGoodsData("doors:trapdoor", 1),
			getGoodsData("default:sign_wall_wood", 1),
			getGoodsData("default:ladder_wood", 1),
			getGoodsData("default:fence_wood", 1),
			getGoodsData("doors:gate_wood_closed", 1),
			getGoodsData("default:chest", 1),
			getGoodsData("default:bookshelf", 1),
			getGoodsData("cottages:table", 1),
			getGoodsData("cottages:half_door", 1),
			getGoodsData("cottages:gate_closed", 1),
			getGoodsData("cottages:fence_corner", 1),
			getGoodsData("cottages:fence_end", 1),
			getGoodsData("cottages:fence_small", 1),			
			getGoodsData("cottages:bench", 1),
			getGoodsData("cottages:barrel_lying", 1),
			getGoodsData("cottages:barrel", 1),
		},
		desert = {
			{prob=1, split=2, min=3, max=4},
			getGoodsData("doors:gate_wood_closed", 1),
			getGoodsData("default:sign_wall_wood", 1),
			getGoodsData("default:ladder_wood", 1),
			getGoodsData("default:chest", 1),
			getGoodsData("doors:trapdoor", 1),
			getGoodsData("doors:door_wood", 1),
			getGoodsData("default:fence_wood", 1),
		},
		native = {
			{prob=1, split=2, min=3, max=4},
			getGoodsData("default:fence_junglewood", 1),
			getGoodsData("doors:gate_junglewood_closed", 1),
			getGoodsData("default:ladder_wood", 1),
			getGoodsData("default:sign_wall_wood", 1),
			getGoodsData("default:chest", 1),
			getGoodsData("default:bookshelf", 1),
			getGoodsData("boats:boat", 1),
			getGoodsData("cottages:table", 1),
			getGoodsData("doors:trapdoor", 1),
			getGoodsData("doors:door_wood", 1),
		},
	},

	charachoal_burner = {
		{prob=1, split=1, min=2, max=3},
		getGoodsData("default:coal_lump", 1),
		getGoodsData("default:sand", 1),
		getGoodsData("default:dirt", 1),
		getGoodsData("default:gravel", 1),
	},
	
	cooper = {
		{prob=1, split=1, min=1, max=2},
		getGoodsData("cottages:barrel", 1),
		getGoodsData("cottages:tub", 1),
		getGoodsData("cottages:barrel_lying", 1),
	},
	
	coppersmith = {
		{prob=1, split=1, min=3, max=4},
		getGoodsData("default:sword_bronze", 1),
		getGoodsData("default:axe_bronze", 1),
		getGoodsData("default:pick_bronze", 1),
		getGoodsData("default:shovel_bronze", 1),
		getGoodsData("farming:hoe_bronze", 1),
	},
	
	doormaker = {
		{prob=1, split=1, min=1, max=3},
		getGoodsData("doors:door_wood_a", 1),
		getGoodsData("doors:trapdoor", 1),
		getGoodsData("doors:gate_wood_closed", 1),
	},
	
	dyemaker = {
		{prob=1, split=0, min=3, max=5},
		getGoodsData("dye:brown", 1),
		getGoodsData("dye:dark_green", 1),
		getGoodsData("dye:black", 1),
		getGoodsData("dye:grey", 1),
		getGoodsData("dye:dark_grey", 1),
		getGoodsData("dye:white", 1),
		getGoodsData("dye:violet", 1),
		getGoodsData("dye:blue", 1),
		getGoodsData("dye:cyan", 1),
		getGoodsData("dye:green", 1),
		getGoodsData("dye:yellow", 1),
		getGoodsData("dye:orange", 1),
		getGoodsData("dye:red", 1),
		getGoodsData("dye:magenta", 1),
		getGoodsData("dye:pink", 1),
	},
	
	farmer = {
		{prob=1, split=3, min=3, max=5},
		getGoodsData("default:apple", 1),
		getGoodsData("farming:bread", 1),
		getGoodsData("farming:wheat", 1),
		getGoodsData("farming:cotton", 1),
		getGoodsData("flowers:mushroom_red", 1),
		getGoodsData("flowers:mushroom_brown", 1),
		getGoodsData("farming:straw", 1),
		getGoodsData("farming:string", 1),
	},
	
	flower_seller = {
		{prob=1, split=0, min=3, max=5},
		getGoodsData("flowers:rose", 1),
		getGoodsData("flowers:tulip", 1),
		getGoodsData("flowers:dandelion_yellow", 1),
		getGoodsData("flowers:geranium", 1),
		getGoodsData("flowers:viola", 1),
		getGoodsData("flowers:dandelion_white", 1),
	},
	
	fruit_trader = {
		hot = {
			{prob=1, split=0, min=2, max=3},
			getGoodsData("default:apple", 1),
			getGoodsData("ethereal:orange", 1),
			getGoodsData("farming:melon_8", 1),
			getGoodsData("farming:pumpkin", 1),
		},
		cold = {
			{prob=1, split=0, min=2, max=3},
			getGoodsData("default:apple", 1),
			getGoodsData("ethereal:orange", 1),
			getGoodsData("farming:grapes", 1),
			getGoodsData("farming:melon_8", 1),
			getGoodsData("farming:pumpkin", 1),
		},
		normal = {
			{prob=1, split=0, min=5, max=5},
			getGoodsData("default:apple", 1),
			getGoodsData("ethereal:banana", 1),
			getGoodsData("ethereal:orange", 1),
			getGoodsData("ethereal:strawberry", 1),
			getGoodsData("farming:blueberries", 1),
			getGoodsData("farming:grapes", 1),
			getGoodsData("farming:melon_8", 1),
			getGoodsData("farming:pumpkin", 1),
			getGoodsData("farming:raspberries", 1),
			getGoodsData("farming:tomato", 1),
		},
		desert = {
			{prob=1, split=0, min=2, max=3},
			getGoodsData("default:apple", 1),
			getGoodsData("ethereal:orange", 1),
			getGoodsData("farming:melon_8", 1),
			getGoodsData("farming:pumpkin", 1),
		},
		native = {
			{prob=1, split=0, min=3, max=4},
			getGoodsData("ethereal:strawberry", 1),
			getGoodsData("farming:blueberries", 1),
			getGoodsData("ethereal:banana", 1),
			getGoodsData("farming:raspberries", 1),
			getGoodsData("farming:tomato", 1),
		},
	},
	
	furnituremaker = {
		{prob=1, split=3, min=3, max=5},
		getGoodsData("cottages:table", 1),
		getGoodsData("cottages:bench", 1),
		getGoodsData("beds:bed_bottom", 1),
		getGoodsData("cottages:shelf", 1),
		getGoodsData("default:bookshelf", 1),
		getGoodsData("default:chest", 1),
		getGoodsData("beds:fancy_bed", 1),
		getGoodsData("vessels:shelf", 1),
	},
	
	glassmaker = {
		{prob=1, split=0, min=3, max=5},
		getGoodsData("default:glass", 1),
		getGoodsData("vessels:glass_bottle", 1),
		getGoodsData("vessels:drinking_glass", 1),
		getGoodsData("xpanes:pane_flat", 1),
		getGoodsData("cottages:glass_pane", 1),
		getGoodsData("cottages:glass_pane_side", 1),
	},
	
	goldsmith = {
		{prob=1, split=1, min=1, max=3},
		getGoodsData("default:goldblock", 1),
		getGoodsData("stairs:stair_goldblock", 1),
		getGoodsData("stairs:slab_goldblock", 1),
	},
	
	iceman = {
		{prob=1, split=0, min=1, max=2},
		getGoodsData("stairs:slab_ice", 1),
		getGoodsData("stairs:stair_ice", 1),
	},
	
	innkeeper = {
		{prob=1, split=1, min=2, max=3},
		getGoodsData("beds:bed_bottom", 1),
		getGoodsData("default:chest", 1),
		getGoodsData("default:paper", 1),
		getGoodsData("default:torch", 1),
		getGoodsData("default:book", 1),
	},
	
	librarian = {
		{prob=1, split=1, min=1, max=2},
		getGoodsData("default:book", 1),
		getGoodsData("default:paper", 1),
	},
	
	lumberjack = {
		{prob=3, split=0, min=1, max=2},
		getGoodsData("default:wood", 1),
		getGoodsData("default:tree", 1),
	}, 
	
	miller = {
		{prob=1, split=1, min=1, max=2},
		getGoodsData("farming:flour", 1),
		getGoodsData("farming:straw", 1),
	}, 
		
	roofer = {
		{prob=1, split=3, min=3, max=5},
		getGoodsData("cottages:roof_black", 1),
		getGoodsData("cottages:roof_brown", 1),
		getGoodsData("cottages:roof_wood", 1),
		getGoodsData("cottages:roof_straw", 1),
		getGoodsData("cottages:roof_slate", 1),
		getGoodsData("cottages:roof_reet", 1),
		getGoodsData("cottages:roof_red", 1),
		getGoodsData("cottages:roof_flat_black", 1),
		getGoodsData("cottages:roof_flat_brown", 1),
		getGoodsData("cottages:roof_flat_red", 1),
		getGoodsData("cottages:roof_flat_reet", 1),
		getGoodsData("cottages:roof_flat_slate", 1),
		getGoodsData("cottages:roof_flat_straw", 1),
		getGoodsData("cottages:roof_flat_wood", 1),
	},
	
	sawmill_owner = {
		{prob=1, split=2, min=3, max=4},
		getGoodsData("default:wood", 1),
		getGoodsData("default:tree", 1),
		getGoodsData("default:stick", 1),
		getGoodsData("stairs:slab_wood", 1),
	}, 
	
	seed_seller = {
		{prob=1, split=0, min=1, max=2},
		getGoodsData("farming:seed_cotton", 1),
		getGoodsData("farming:seed_wheat", 1),
		getGoodsData("farming:seed_hemp", 1),
		getGoodsData("farming:seed_barley", 1),
	}, 
	
	--[[
	baker
	barkeeper
	blacksmith
	carpenter
	charachoal_burner
	cooper
	coppersmith
	doormaker
	dyemaker
	farmer
	flower_seller
	fruit_trader
	furnituremaker
	glassmaker
	goldsmith
	iceman
	innkeeper
	librarian
	lumberjack
	miller
	roofer
	sawmill_owner
	seed_seller
	smith
	stairmaker
	stonemason
	tinsmith
	toolmaker
	trader
	wheelwright
	wood_trader
	]]
	shopkeeper = {
		hot = {
			{prob=1, split=2, min=3, max=5},
			getGoodsData("default:acacia_sapling", 1),
			getGoodsData("default:sandstone", 1),
			getGoodsData("default:acacia_wood", 1),
			getGoodsData("default:fence_acacia_wood", 1),
			getGoodsData("doors:gate_acacia_wood_closed", 1),
			getGoodsData("default:acacia_bush_sapling", 1),
			getGoodsData("carts:powerrail", 1),
		},
		cold = {
			{prob=1, split=2, min=3, max=5},
			getGoodsData("default:pine_sapling", 1),
			getGoodsData("default:pine_wood", 1),
			getGoodsData("default:cobble", 1),
			getGoodsData("default:fence_pine_wood", 1),
			getGoodsData("doors:gate_pine_wood_closed", 1),
			getGoodsData("carts:powerrail", 1),
		},
		normal = {
			{prob=1, split=2, min=5, max=5},
			getGoodsData("default:sapling", 1),
			getGoodsData("default:wood", 1),
			getGoodsData("default:aspen_sapling", 1),
			getGoodsData("default:aspen_wood", 1),
			getGoodsData("default:cobble", 1),
			getGoodsData("default:fence_aspen_wood", 1),
			getGoodsData("default:fence_wood", 1),
			getGoodsData("doors:gate_aspen_wood_closed", 1),
			getGoodsData("doors:gate_wood_closed", 1),
			getGoodsData("carts:powerrail", 1),
		},
		desert = {
			{prob=1, split=0, min=3, max=3},
			getGoodsData("default:desert_sandstone", 1),
			getGoodsData("default:silver_sandstone", 1),
			getGoodsData("default:clay", 1),
			getGoodsData("default:cactus", 1),
			getGoodsData("carts:powerrail", 1),
		},
		native = {
			{prob=1, split=1, min=3, max=5},
			getGoodsData("default:junglesapling", 1),
			getGoodsData("default:junglewood", 1),
			getGoodsData("default:fence_junglewood", 1),
			getGoodsData("doors:gate_junglewood_closed", 1),
			getGoodsData("default:mossycobble", 1),
			getGoodsData("carts:powerrail", 1),
		}

	}, 
	
	smith = {
		{prob=1, split=1, min=3, max=4},
		getGoodsData("default:sword_steel", 1),
		getGoodsData("default:axe_steel", 1),
		getGoodsData("default:pick_steel", 1),
		getGoodsData("default:shovel_steel", 1),
		getGoodsData("farming:hoe_steel", 1),
	},
	
	stairmaker = {
		hot = {
			{prob=1, split=0, min=3, max=5},
			getGoodsData("stairs:stair_desert_sandstone_block", 1),
			getGoodsData("stairs:stair_desert_stone_block", 1),
			getGoodsData("stairs:stair_sandstone_block", 1),
			getGoodsData("stairs:stair_silver_sandstone_block", 1),
			getGoodsData("stairs:stair_desert_sandstone_brick", 1),
			getGoodsData("stairs:stair_desert_stonebrick", 1),
			getGoodsData("stairs:stair_sandstonebrick", 1),
			getGoodsData("stairs:stair_silver_sandstone_brick", 1),
		},
		cold = {
			{prob=1, split=2, min=2, max=4},
			getGoodsData("stairs:stair_ice", 1),
			getGoodsData("stairs:stair_snowblock", 1),
			getGoodsData("stairs:stair_cobble", 1),
			getGoodsData("stairs:stair_stone", 1),
			getGoodsData("stairs:stair_wood", 1),
		},
		normal = {
			{prob=1, split=3, min=3, max=5},
			getGoodsData("stairs:stair_wood", 1),
			getGoodsData("stairs:stair_cobble", 1),
			getGoodsData("stairs:stair_stone", 1),
			getGoodsData("stairs:stair_straw", 1),
			getGoodsData("stairs:stair_brick", 1),
			getGoodsData("stairs:stair_stonebrick", 1),
			getGoodsData("stairs:stair_bronzeblock", 1),
			getGoodsData("stairs:stair_copperblock", 1),
			getGoodsData("stairs:stair_steelblock", 1),
		},
		desert = {
			{prob=1, split=0, min=3, max=4},
			getGoodsData("stairs:stair_desert_cobble", 1),
			getGoodsData("stairs:stair_desert_sandstone", 1),
			getGoodsData("stairs:stair_desert_stone", 1),
			getGoodsData("stairs:stair_sandstone", 1),
			getGoodsData("stairs:stair_silver_sandstone", 1),
			getGoodsData("stairs:stair_loam", 1),
		},
		native = {
			{prob=1, split=2, min=2, max=4},
			getGoodsData("stairs:stair_junglewood", 1),
			getGoodsData("stairs:stair_mossycobble", 1),
			getGoodsData("stairs:stair_cobble", 1),
			getGoodsData("stairs:stair_wood", 1),
		}
	},
	
	stonemason = {
		hot = {
			{prob=1, split=0, min=3, max=5},
			getGoodsData("default:sandstone", 1),
			getGoodsData("default:sandstonebrick", 1),
			getGoodsData("default:silver_sandstone", 1),
			getGoodsData("default:silver_sandstone_brick", 1),
			getGoodsData("stairs:slab_sandstone", 1),
			getGoodsData("stairs:slab_sandstonebrick", 1),
			getGoodsData("stairs:slab_silver_sandstone", 1),
			getGoodsData("stairs:slab_silver_sandstone_brick", 1),
		},
		cold = {
			{prob=1, split=1, min=3, max=5},
			getGoodsData("walls:cobble", 1),
			getGoodsData("stairs:slab_cobble", 1),
			getGoodsData("default:stone", 1),
			getGoodsData("default:stonebrick", 1),
			getGoodsData("stairs:slab_stone", 1),
			getGoodsData("stairs:slab_stonebrick", 1),
		},
		normal = {
			{prob=1, split=1, min=5, max=5},
			getGoodsData("walls:cobble", 1),
			getGoodsData("stairs:slab_cobble", 1),
			getGoodsData("default:stone", 1),
			getGoodsData("default:stonebrick", 1),
			getGoodsData("stairs:slab_stone", 1),
			getGoodsData("stairs:slab_stonebrick", 1),
			getGoodsData("walls:mossycobble", 1),
			getGoodsData("stairs:slab_mossycobble", 1),
		},
		desert = {
			{prob=1, split=1, min=3, max=5},
			getGoodsData("walls:desertcobble", 1),
			getGoodsData("default:desert_stonebrick", 1),
			getGoodsData("default:desert_sandstone_brick", 1),
			getGoodsData("stairs:slab_desert_cobble", 1),
			getGoodsData("stairs:slab_desert_stone", 1),
			getGoodsData("stairs:slab_desert_sandstone", 1),
			getGoodsData("stairs:slab_desert_stonebrick", 1),
			getGoodsData("stairs:slab_desert_sandstone_brick", 1),
		},
		native = {
			{prob=1, split=1, min=3, max=5},
			getGoodsData("walls:cobble", 1),
			getGoodsData("walls:mossycobble", 1),
			getGoodsData("stairs:slab_cobble", 1),
			getGoodsData("stairs:slab_mossycobble", 1),
			getGoodsData("default:stone", 1),
			getGoodsData("stairs:slab_stone", 1),
		}
	},
	
	tinsmith = {
		{prob=1, split=0, min=1, max=1},
		getGoodsData("default:tin_ingot", 1),
	}, 
	
	toolmaker = {
		{prob=1, split=1, min=2, max=2},
		getGoodsData("screwdriver:screwdriver", 1),
		getGoodsData("default:shovel_steel", 1),
		getGoodsData("farming:hoe_steel", 1),
		getGoodsData("default:skeleton_key", 1),
	},
	
	trader = {
		{prob=3, split=1, min=2, max=2},
		getGoodsData("default:clay", 1),
		getGoodsData("default:clay_brick", 1),
		getGoodsData("stairs:slab_clay", 1),
		getGoodsData("stairs:stair_clay", 1),
	},
	
	wheelwright = {
		{prob=1, split=1, min=1, max=2},
		getGoodsData("cottages:wagon_wheel", 1),
		getGoodsData("default:stick", 1),
	}, 
	
	wood_trader = {
		{prob=1, split=1, min=3, max=4},
		getGoodsData("default:stick", 1),
		getGoodsData("default:wood", 1),
		getGoodsData("stairs:slab_wood", 1),
		getGoodsData("cottages:wood_flat", 1),
		getGoodsData("cottages:hatch_wood", 1),
	}, 
	
	
	-- offers players to exchange coins for gold coins and vice versa
	major = {
		{prob=1, split=0, min=2, max=2},
		{"villagers:coins_gold", "Gold Coin", 1, "villagers:coins", "Silver Coin", 11, math.random(800,999)},
		{"villagers:coins", "Silver Coin", 9, "villagers:coins_gold", "Gold Coin", 1, math.random(800,999)},
	}, 
	
	
	-- villagers who give coins to players for items
	
	bricklayer = {
		hot = {
			{prob=1, split=0, min=1, max=2},
			getGoodsData("default:sandstonebrick", 1, true),
			getGoodsData("default:desert_sandstone_brick", 1, true),
			getGoodsData("default:desert_stonebrick", 1, true),
			getGoodsData("default:silver_sandstone_brick", 1, true),
		},
		cold = {
			{prob=1, split=0, min=1, max=2},
			getGoodsData("default:brick", 1, true),
			getGoodsData("default:stonebrick", 1, true),
		},
		normal = {
			{prob=1, split=0, min=1, max=2},
			getGoodsData("default:brick", 1, true),
			getGoodsData("default:clay_brick", 1, true),
			getGoodsData("default:stonebrick", 1, true),
		},
		desert = {
			{prob=1, split=0, min=1, max=2},
			getGoodsData("default:sandstonebrick", 1, true),
			getGoodsData("default:desert_sandstone_brick", 1, true),
			getGoodsData("default:desert_stonebrick", 1, true),
			getGoodsData("default:silver_sandstone_brick", 1, true),
		},
		native = {
			{prob=1, split=0, min=1, max=2},
			getGoodsData("default:clay_brick", 1, true),
			getGoodsData("default:stonebrick", 1, true),
		},
	},
	
	guard = {
		{prob=2, split=0, min=1, max=1},
		getGoodsData("default:sword_steel", 1, true),
		getGoodsData("default:sword_stone", 1, true),
	},
	
	guest = {
		{prob=4, split=0, min=1, max=1},
		getGoodsData("flowers:mushroom_red", 1, true),
		getGoodsData("flowers:mushroom_brown", 1, true),
		getGoodsData("flowers:rose", 1, true),
		getGoodsData("flowers:tulip", 1, true),
		getGoodsData("flowers:dandelion_yellow", 1, true),
		getGoodsData("flowers:geraniu", 1, true),
		getGoodsData("flowers:viola", 1, true),
		getGoodsData("flowers:dandelion_white", 1, true),
		getGoodsData("dye:dark_grey", 1, true),
		getGoodsData("dye:violet", 1, true),
		getGoodsData("dye:blue", 1, true),
		getGoodsData("dye:cyan", 1, true),
		getGoodsData("dye:yellow", 1, true),
		getGoodsData("dye:orange", 1, true),
		getGoodsData("dye:red", 1, true),
		getGoodsData("dye:magenta", 1, true),
		getGoodsData("dye:pink", 1, true),
		getGoodsData("default:papyrus", 1, true),
		getGoodsData("default:ice", 1, true),
		getGoodsData("vessels:glass_bottle", 1, true),
		getGoodsData("default:torch", 1, true),
		getGoodsData("vessels:steel_bottle", 1, true),
		getGoodsData("default:sword_wood", 1, true),
		getGoodsData("default:sword_stone", 1, true),
		getGoodsData("default:axe_wood", 1, true),
		getGoodsData("default:axe_stone", 1, true),
	},
	
	horsekeeper = {
		{prob=1, split=0, min=1, max=2},
		getGoodsData("farming:straw", 1, true),
		getGoodsData("farming:string", 1, true),
	},
	
	landlord = {
		{prob=2, split=0, min=1, max=2},
		getGoodsData("default:paper", 1, true),
		getGoodsData("default:book", 1, true),
	},
	housemaid = {
		{prob=4, split=0, min=1, max=2},
		getGoodsData("default:torch", 1, true),
		getGoodsData("vessels:drinking_glass", 1, true),
		getGoodsData("default:ice", 1, true),
	},
	ore_seller = {
		{prob=1, split=0, min=1, max=3},
		getGoodsData("default:coal_lump", 1, true),
		getGoodsData("default:iron_lump", 1, true),
		getGoodsData("default:copper_lump", 1, true),
		getGoodsData("default:tin_lump", 1, true),
		getGoodsData("default:gold_lump", 1, true),
		getGoodsData("default:mese_crystal_fragment", 1, true),
	}, 
	potterer = {
		{prob=1, split=0, min=1, max=2},
		getGoodsData("default:clay_lump", 1, true),
		getGoodsData("default:clay", 1, true),
	}, 
	
	priest = {
		{prob=2, split=0, min=1, max=2},
		getGoodsData("default:paper", 1, true),
		getGoodsData("default:book", 1, true),
	}, 

	saddler = {
		{prob=1, split=0, min=1, max=2},
		getGoodsData("farming:cotton", 1, true),
		getGoodsData("farming:string", 1, true),
	}, 
	
	servant = {
		{prob=4, split=0, min=1, max=1},
		getGoodsData("vessels:drinking_glass", 1, true),
		getGoodsData("vessels:glass_bottle", 1, true),
		getGoodsData("farming:drinking_cup", 1, true),
	}, 
	
	soldier = {
		{prob=2, split=0, min=1, max=1},
		getGoodsData("default:sword_steel", 1, true),
		getGoodsData("default:sword_stone", 1, true),
	}, 
	
	stoneminer = {
		{prob=1, split=0, min=1, max=2},
		getGoodsData("default:stone", 1, true),
		getGoodsData("default:desert_stone", 1, true),
		getGoodsData("default:sandstone", 1, true),
		getGoodsData("default:desert_sandstone", 1, true),
		getGoodsData("default:silver_sandstone", 1, true),
	}, 
	
	schoolteacher = {
		{prob=1, split=0, min=1, max=2},
		getGoodsData("default:paper", 1, true),
		getGoodsData("default:book", 1, true),
	}, 
	
}


function villagers.getTradingFormspec(self, player_name)
	local log = true
	if log then 
		--io.write("getFormspec() ") 
		--io.write("for "..self.vName.." vSell:"..dump(self.vSell).."\n")
	end
		
	local item_count = #self.vSell
	
	local width_column = 1
	local width_item_count = 0.26
	local width_trade_button = 1.2
	local number_of_columns = 5
	local width_form = (width_column * number_of_columns) + (width_item_count * 2) + width_trade_button + 0.2
	
	local height_exit_button = 1
	local height_row = 1
	local height_labels = 1
	local height_between_rows = 0.4
	local number_of_rows = item_count
	local height_form = height_exit_button + ((height_row + height_between_rows) * number_of_rows) + height_labels
	
	-- GUI related stuff
	--local bg = "bgcolor[#080808BB;true]"
	local bg_image = "background[0,0;0,0;gui_formbg.png;true]"
	local y_offset = 0.4
	
	local formspec = 
		-- gui background attributes
		"size["..width_form..","..height_form.."]"..bg_image..
		
		-- header row
		"label[0.2,0;BUY]"..
		"label["..(1.5)+(width_item_count)..",0;STOCK]"..
		"label["..(2.5)+(width_item_count*2)+(0.2)..",0;COST]"..
		"label["..(3.6)+(width_item_count*3)+(width_item_count)+(0.1)..",0;INV]"
		--.."label["..4+(width_item_count*4)+(width_item_count*2)..",0;Action]"
	
	local player_inv = minetest.get_inventory({type="player", name=player_name})
	local inv_size = player_inv:get_size("main")
	
	-- construct rows for each item villager is selling
	for item_index = 1, item_count do
		
		local sell_data = self.vSell[item_index]
		local item_name = sell_data[1]
		local item_desc = sell_data[2]
		local item_quant = sell_data[3]
		local cost_name = sell_data[4]
		local cost_desc = sell_data[5]
		local cost_quant = sell_data[6]
		local item_stock = sell_data[7]
		if log then io.write("\nsell_data #"..item_index..": "..minetest.serialize(sell_data).." ") end
		
		local inv_quant = 0
		for i=1, inv_size do
			local stack_name = player_inv:get_stack("main",i):get_name()
			local stack_count = player_inv:get_stack("main",i):get_count()
			if stack_name == cost_name then
				inv_quant = inv_quant + stack_count
			end
		end
		
		local ypos = (item_index-0.4) + ((item_index-1)*height_between_rows)
		formspec = formspec..
			-- items
			"item_image[0,"..ypos..";1,1;"..item_name.."]".. -- item being sold
			"label[0,"..(ypos+0.8)..";"..item_desc.."]".. -- item description
			"label[0.8,"..(ypos+0.4)..";x"..item_quant.."]".. -- item count
			"label["..(1.7)+(width_item_count)..","..ypos+y_offset..";"..item_stock.."]".. -- how many in stock
			"item_image["..(2.5)+(width_item_count*2)..","..ypos..";1,1;"..cost_name.."]".. -- cost item
			"label["..(2.5)+(width_item_count*2)..","..(ypos+0.8)..";"..cost_desc.."]".. -- cost description
			"label["..(3.3)+(width_item_count*2)..","..ypos+y_offset..";x"..cost_quant.."]".. -- cost count
			"label["..(3.7)+(width_item_count*3)+(width_item_count)..","..ypos+y_offset..";"..inv_quant.."]" -- how many player has
			
		local button_name = self.vName.."|"..item_name.."|"..item_quant.."|"
		button_name = button_name..cost_name.."|"..cost_quant.."|"..item_stock.."|"..inv_quant.."|"..item_index
		if (item_stock > 0) and (inv_quant >= cost_quant) then 
			formspec = formspec.."button["..(4.2)+(width_item_count*4)+(width_item_count*2)..
				","..ypos+(0.3)..";"..width_trade_button..",0.70;"..button_name..";trade]" 
		end
		
	end
		
	formspec = formspec.. "button_exit[2.3,"..(height_form - 1)..";2.5,"..height_exit_button..";"..self.vID..";I'm Done!]"
		
	return formspec
end

function villagers.tradeVillager(self, player)
	local log = false
	if log then io.write("trade() ") end
	
	-- if villager was digging when player initiated trade, this ensures after
	-- trading as ended that the next action is RESUMEDIG
	if self.vAction == "DIG" then
		if log then io.write("villagerWasCurrentlyDigging ") end
		self.vDigReady = true
		minetest.sound_stop(self.vSoundHandle)
		self.object:set_animation(
			{x=self.animation["stand_start"], y=self.animation["stand_end"]},
			self.animation_speed + math.random(10)
		)
	end
	
	self.vAction = "TRADE"
	
	-- formspec was already displayed and villager is currently trading
	if self.vTrading then
		local message_text = self.vName.." is busy trading with "..self.vTrading.."."
		villagers.showAlert(self, player, "", 3)
		
	-- villager is not yet trading: might be currently standing, walking, etc
	-- so create and show the tranding formspec
	else
		
		local player_name = player:get_player_name()
		self.vTrading = player_name
		self.vYawSaved = self.vYaw
		villagers.turnToPlayer(self, player)
		
		-- show formspec
		minetest.show_formspec(player_name, "villagers:trade|"..self.vID, villagers.getTradingFormspec(self, player_name))
		
		if log then 
			local items_selling = self.vSell
			io.write(self.vName.." is selling: ")
			for i=1, #items_selling do
				local item_name = string.split(items_selling[i][1], ":")[2]
				io.write(item_name.." ")
			end
		end
	end

end



function villagers.getTradeInventory(title, region, plot, bed, errors)
	local log = false
	if log then 
		io.write("\n## setTradeInv for "..string.upper(title).." @ plot#"..plot.."bed#"..bed.." ")
	end
	
	local new_trade_inventory = {}
		
	local source_trade_items = villagers.GOODS[title][region]
	if source_trade_items then
		if log then io.write("gotRegionSpecificJobGoods ") end
	else
		source_trade_items = villagers.GOODS[title]
		if log then io.write("gotDefaultJobGoods ") end
	end
	
	local all_items = villagers.copytable(source_trade_items)
	local selection_parameters = table.remove(all_items, 1)
	
	-- some job titles do not gauruntee, but only have
	-- a probability that the villager will trade
	if math.random(1, selection_parameters.prob) > 1 then
		if log then io.write("chanceRollFailed ") end
		return "none"
	else
		if log then io.write("chanceRollSuccess ") end
	end
	
	local split_point = selection_parameters.split
	local min_count = selection_parameters.min
	local max_count = selection_parameters.max	
	local item_count = math.random(min_count, max_count)
	
	if log then 
		io.write("min="..min_count.." max="..max_count.." ") 
		io.write("got="..item_count.." ") 
		io.write("mandatoryItems="..split_point.." ") 
	end
	
	if split_point > 0 then
		for i=1, split_point do
			if log then 
				io.write("\n  mandatory #1 >> "..all_items[i][1].." ")
				io.write("item_count is now "..item_count) 
			end
			table.insert(new_trade_inventory, table.remove(all_items, i))
			item_count = item_count - 1
		end
		if log then io.write(" .. no more mandatory items.") end
	end
	
	if log then io.write("\n  item_count="..item_count.." remainingCountOf_allItemsTable="..#all_items.." ") end
	
	while( item_count > 0 ) do
		local index_to_pop = math.random(#all_items)
		local popped_item = table.remove(all_items, index_to_pop)
		
		-- error handling
		if popped_item[1] == "invalid_item" then
			if log then 
				io.write(" #ERROR Item #"..item_count.." not a registered item '"..popped_item[2].."'.") 
			end
			local error_message = "Item #"..item_count.." '"..popped_item[2]..
			"' not registered for plot#"..plot.." bed#"..bed
			table.insert(errors, error_message)
			popped_item = {"villagers:unknown_item", popped_item[2], 1, "villagers:coins", "Silver Coin", 1, 0}
			
		elseif popped_item[1] == "no_description" then
			if log then 
				io.write(" #ERROR Item #"..item_count.." - no item desc for '"..popped_item[2].."'.") 
			end				
			local error_message = "Item #"..item_count.." '"..popped_item[2]..
			"' no desc for plot#"..plot.." bed#"..bed
			table.insert(errors, error_message)
			popped_item = {"villagers:unknown_item", popped_item[2], 1, "villagers:coins", "Silver Coin", 1, 0}
			
		elseif popped_item[1] == "naming_error" then
			if log then 
				io.write(" #ERROR Item #"..item_count.." - '"..popped_item[2].."' not found in GOODS_DATA.") 
			end			
			local error_message = "Item #"..item_count.." '"..popped_item[2]..
			"' not in GOODS_DATA for plot#"..plot.." bed#"..bed
			table.insert(errors, error_message)
			popped_item = {"villagers:unknown_item", popped_item[2], 1, "villagers:coins", "Silver Coin", 1, 0}
			
		elseif popped_item == nil then
			if log then 
				io.write(" #ERROR getTradeItem #"..item_count..", it is NIL.") 
			end
			local error_message = "Item #"..item_count.." is NIL for plot#"..plot.." bed#"..bed
			table.insert(errors, error_message)
			popped_item = {"villagers:unknown_item", popped_item[2], 1, "villagers:coins", "Silver Coin", 1, 0}
		end
		
		if log then io.write("\n    adding: "..minetest.serialize(popped_item).." ") end
		table.insert(new_trade_inventory, popped_item)
		item_count = item_count - 1
	end
	if log then io.write("\n") end

	return new_trade_inventory
end


function villagers.endVillagerTrading(self, player)

	if self then
		
		villagers.chatVillager(self, player, 2)
		
		-- load previous yaw value
		self.vYaw = self.vYawSaved
		
		-- resume previous action
		minetest.after(2, function() 
			self.object:set_yaw(self.vYaw)
			
			-- player had initiated trading while villager was
			-- about to walk or dig. now continue with that action.
			if self.vWalkReady then
				self.vAction = "WALK"
				self.vWalkReady = false
			elseif self.vDigReady then
				self.vAction = "RESUMEDIG"
				self.vDigReady = false
			else
				self.vAction = "STAND"
			end
		end)
		
		self.vTrading = nil
		self.vAction = "ENDTRADE"
	else
		--io.write("NoMatchingVillagerFound ")
	end
	
end

--[[

cottages:anvil
cottages:barrel
cottages:barrel_lying
cottages:barrel_lying_open
cottages:barrel_open
cottages:bed_foot
cottages:bed_head
cottages:bench
cottages:feldweg
cottages:feldweg_crossing
cottages:feldweg_curve
cottages:feldweg_end
cottages:feldweg_slope
cottages:feldweg_slope_long
cottages:feldweg_t_junction
cottages:fence_corner
cottages:fence_end
cottages:fence_small
cottages:gate_closed
cottages:gate_open
cottages:glass_pane
cottages:glass_pane_side
cottages:half_door
cottages:half_door_inverted
cottages:hammer
cottages:handmill
cottages:hatch_steel
cottages:hatch_wood
cottages:ladder_with_rope_and_rail
cottages:loam
cottages:reet
cottages:roof_black
cottages:roof_brown
cottages:roof_connector_black
cottages:roof_connector_brown
cottages:roof_connector_red
cottages:roof_connector_reet
cottages:roof_connector_slate
cottages:roof_connector_straw
cottages:roof_connector_wood
cottages:roof_flat_black
cottages:roof_flat_brown
cottages:roof_flat_red
cottages:roof_flat_reet
cottages:roof_flat_slate
cottages:roof_flat_straw
cottages:roof_flat_wood
cottages:roof_red
cottages:roof_reet
cottages:roof_slate
cottages:roof_straw
cottages:roof_wood
cottages:rope
cottages:shelf
cottages:slate_vertical
cottages:sleeping_mat
cottages:sleeping_mat_head
cottages:stovepipe
cottages:straw
cottages:straw_bale
cottages:straw_ground
cottages:straw_mat
cottages:table
cottages:threshing_floor
cottages:tub
cottages:wagon_wheel
cottages:washing
cottages:window_shutter_closed
cottages:window_shutter_open
cottages:wood_flat
cottages:wool
cottages:wool_tent
default:flint
doors:door_glass
doors:door_obsidian_glass
doors:door_obsidian_glass_a
doors:door_obsidian_glass_b
doors:door_steel
doors:door_wood
doors:gate_acacia_wood_closed
doors:gate_aspen_wood_closed
doors:gate_junglewood_closed
doors:gate_pine_wood_closed
doors:gate_wood_closed
doors:trapdoor
doors:trapdoor_steel
farming:bread
farming:cotton
farming:desert_sand_soil
farming:desert_sand_soil_wet
farming:flour
farming:hoe_bronze
farming:hoe_diamond
farming:hoe_mese
farming:hoe_steel
farming:hoe_stone
farming:hoe_wood
farming:seed_cotton
farming:seed_wheat
farming:soil
farming:soil_wet
farming:straw
farming:string
farming:wheat
fire:flint_and_steel
screwdriver:screwdriver
stairs:slab_acacia_wood
stairs:slab_aspen_wood
stairs:slab_brick
stairs:slab_bronzeblock
stairs:slab_clay
stairs:slab_cobble
stairs:slab_copperblock
stairs:slab_desert_cobble
stairs:slab_desert_sandstone
stairs:slab_desert_sandstone_block
stairs:slab_desert_sandstone_brick
stairs:slab_desert_stone
stairs:slab_desert_stone_block
stairs:slab_desert_stonebrick
stairs:slab_feldweg
stairs:slab_goldblock
stairs:slab_ice
stairs:slab_junglewood
stairs:slab_loam
stairs:slab_mossycobble
stairs:slab_obsidian
stairs:slab_obsidian_block
stairs:slab_obsidianbrick
stairs:slab_pine_wood
stairs:slab_sandstone
stairs:slab_sandstone_block
stairs:slab_sandstonebrick
stairs:slab_silver_sandstone
stairs:slab_silver_sandstone_block
stairs:slab_silver_sandstone_brick
stairs:slab_snowblock
stairs:slab_steelblock
stairs:slab_stone
stairs:slab_stone_block
stairs:slab_stonebrick
stairs:slab_straw
stairs:slab_tinblock
stairs:slab_wood
stairs:stair_acacia_wood
stairs:stair_aspen_wood
stairs:stair_brick
stairs:stair_bronzeblock
stairs:stair_clay
stairs:stair_cobble
stairs:stair_copperblock
stairs:stair_desert_cobble
stairs:stair_desert_sandstone
stairs:stair_desert_sandstone_block
stairs:stair_desert_sandstone_brick
stairs:stair_desert_stone
stairs:stair_desert_stone_block
stairs:stair_desert_stonebrick
stairs:stair_feldweg
stairs:stair_goldblock
stairs:stair_ice
stairs:stair_junglewood
stairs:stair_loam
stairs:stair_mossycobble
stairs:stair_obsidian
stairs:stair_obsidian_block
stairs:stair_obsidianbrick
stairs:stair_pine_wood
stairs:stair_sandstone
stairs:stair_sandstone_block
stairs:stair_sandstonebrick
stairs:stair_silver_sandstone
stairs:stair_silver_sandstone_block
stairs:stair_silver_sandstone_brick
stairs:stair_snowblock
stairs:stair_steelblock
stairs:stair_stone
stairs:stair_stone_block
stairs:stair_stonebrick
stairs:stair_straw
stairs:stair_tinblock
stairs:stair_wood
tnt:gunpowder
tnt:tnt
tnt:tnt_burning
villagers:coins
villagers:coins_gold
villagers:unknown_item
xpanes:bar
xpanes:bar_flat
xpanes:pane
xpanes:pane_flat

----------

air								Air (you hacker you!)
beds:bed_bottom					Simple Bed
beds:bed_top		
beds:fancy_bed_bottom			Fancy Bed
beds:fancy_bed_top		
cottages:anvil					anvil
cottages:barrel_lying_open		barrel (opened)		 lying somewhere
cottages:barrel_lying			barrel (closed)		 lying somewhere
cottages:barrel_open			barrel (open)
cottages:barrel					barrel (closed)
cottages:bed_foot				Bed (foot region)
cottages:bed_head				Bed (head region)
cottages:bench					simple wooden bench
cottages:feldweg_crossing		dirt road crossing
cottages:feldweg_curve			dirt road curve
cottages:feldweg_end			dirt road end
cottages:feldweg_slope_long		dirt road slope long
cottages:feldweg_slope			dirt road slope
cottages:feldweg_t_junction		dirt road t junction
cottages:feldweg				dirt road
cottages:fence_corner			small fence corner
cottages:fence_end				small fence end
cottages:fence_small			small fence
cottages:gate_closed			closed fence gate
cottages:gate_open				opened fence gate
cottages:glass_pane_side		simple glass pane
cottages:glass_pane				simple glass pane (centered)
cottages:half_door_inverted		half door inverted
cottages:half_door				half door
cottages:hammer					Steel hammer for repairing tools on the anvil
cottages:handmill				mill		 powered by punching
cottages:hatch_steel			metal hatch
cottages:hatch_wood				wooden hatch
cottages:ladder_with_rope_and_rail		Ladder with rail support
cottages:loam					loam
cottages:reet					Reet for thatching
cottages:roof_black				Roof black
cottages:roof_brown				Roof brown
cottages:roof_connector_black	Roof connector black
cottages:roof_connector_brown	Roof connector brown
cottages:roof_connector_red		Roof connector red
cottages:roof_connector_reet	Roof connector reet
cottages:roof_connector_slate	Roof connector slate
cottages:roof_connector_straw	Roof connector straw
cottages:roof_connector_wood	Roof connector wood
cottages:roof_flat_black		Roof (flat) black
cottages:roof_flat_brown		Roof (flat) brown
cottages:roof_flat_red			Roof (flat) red
cottages:roof_flat_reet			Roof (flat) reet
cottages:roof_flat_slate		Roof (flat) slate
cottages:roof_flat_straw		Roof (flat) straw
cottages:roof_flat_wood			Roof (flat) wood
cottages:roof_red				Roof red
cottages:roof_reet				Roof reet
cottages:roof_slate				Roof slate
cottages:roof_straw				Roof straw
cottages:roof_wood				Roof wood
cottages:rope					rope for climbing
cottages:shelf					open storage shelf
cottages:slate_vertical			Vertical Slate
cottages:sleeping_mat_head		sleeping mat with pillow
cottages:sleeping_mat			sleeping mat
cottages:stovepipe				stovepipe
cottages:straw_bale				straw bale
cottages:straw_ground			straw ground for animals
cottages:straw_mat				layer of straw
cottages:straw					straw
cottages:table					table
cottages:threshing_floor		threshing floor
cottages:tub					tub
cottages:wagon_wheel			wagon wheel
cottages:washing				washing place
cottages:window_shutter_closed	closed window shutters
cottages:window_shutter_open	opened window shutters
cottages:wood_flat				flat wooden planks
cottages:wool_tent				wool for tents
cottages:wool					Wool
craftguide:book					Crafting Guide
craftguide:sign					Crafting Guide Sign
default:acacia_bush_leaves		Acacia Bush Leaves
default:acacia_bush_sapling		Acacia Bush Sapling
default:acacia_bush_stem		Acacia Bush Stem
default:acacia_leaves			Acacia Leaves
default:acacia_sapling			Acacia Tree Sapling
default:acacia_tree				Acacia Tree
default:acacia_wood				Acacia Wood Planks
default:apple					Apple
default:aspen_leaves			Aspen Leaves
default:aspen_sapling			Aspen Tree Sapling
default:aspen_tree				Aspen Tree
default:aspen_wood				Aspen Wood Planks
default:axe_bronze				Bronze Axe
default:axe_diamond				Diamond Axe
default:axe_mese				Mese Axe
default:axe_steel				Steel Axe
default:axe_stone				Stone Axe
default:axe_wood				Wooden Axe
default:book_written			Book With Text
default:book					Book
default:bookshelf				Bookshelf
default:brick					Brick Block
default:bronze_ingot			Bronze Ingot
default:bronzeblock				Bronze Block
default:bush_leaves				Bush Leaves
default:bush_sapling			Bush Sapling
default:bush_stem				Bush Stem
default:cactus					Cactus
default:chest_locked_open		Locked Chest
default:chest_locked			Locked Chest
default:chest_open				Chest
default:chest					Chest
default:clay_brick				Clay Brick
default:clay_lump				Clay Lump
default:clay					Clay
default:cloud					Cloud
default:coal_lump				Coal Lump
default:coalblock				Coal Block
default:cobble					Cobblestone
default:copper_ingot			Copper Ingot
default:copper_lump				Copper Lump
default:copperblock				Copper Block
default:coral_brown				Brown Coral
default:coral_orange			Orange Coral
default:coral_skeleton			Coral Skeleton
default:desert_cobble			Desert Cobblestone
default:desert_sand				Desert Sand
default:desert_sandstone_block		Desert Sandstone Block
default:desert_sandstone_brick		Desert Sandstone Brick
default:desert_sandstone		Desert Sandstone
default:desert_stone_block		Desert Stone Block
default:desert_stone			Desert Stone
default:desert_stonebrick		Desert Stone Brick
default:diamond					Diamond
default:diamondblock			Diamond Block
default:dirt_with_dry_grass		Dirt with Dry Grass
default:dirt_with_grass_footsteps		Dirt with Grass and Footsteps
default:dirt_with_grass			Dirt with Grass
default:dirt_with_rainforest_litter		Dirt with Rainforest Litter
default:dirt_with_snow			Dirt with Snow
default:dirt					Dirt
default:dry_grass_1				Dry Grass
default:dry_grass_2				Dry Grass
default:dry_grass_3				Dry Grass
default:dry_grass_4				Dry Grass
default:dry_grass_5				Dry Grass
default:dry_shrub				Dry Shrub
default:fence_acacia_wood		Acacia Fence
default:fence_aspen_wood		Aspen Fence
default:fence_junglewood		Jungle Wood Fence
default:fence_pine_wood			Pine Fence
default:fence_wood				Wooden Fence
default:flint					Flint
default:furnace_active			Furnace
default:furnace					Furnace
default:glass					Glass
default:gold_ingot				Gold Ingot
default:gold_lump				Gold Lump
default:goldblock				Gold Block
default:grass_1					Grass
default:grass_2					Grass
default:grass_3					Grass
default:grass_4					Grass
default:grass_5					Grass
default:gravel					Gravel
default:ice						Ice
default:iron_lump				Iron Lump
default:junglegrass				Jungle Grass
default:jungleleaves			Jungle Leaves
default:junglesapling			Jungle Sapling
default:jungletree				Jungle Tree
default:junglewood				Jungle Wood Planks
default:key						Key
default:ladder_steel			Steel Ladder
default:ladder_wood				Wooden Ladder
default:lava_flowing			Flowing Lava
default:lava_source				Lava Source
default:leaves					Leaves
default:mese_crystal_fragment	Mese Crystal Fragment
default:mese_crystal			Mese Crystal
default:mese_post_light			Mese Post Light
default:mese					Mese Block
default:meselamp				Mese Lamp
default:mossycobble				Mossy Cobblestone
default:obsidian_block			Obsidian Block
default:obsidian_glass			Obsidian Glass
default:obsidian_shard			Obsidian Shard
default:obsidian				Obsidian
default:obsidianbrick			Obsidian Brick
default:paper					Paper
default:papyrus					Papyrus
default:pick_bronze			Bronze Pickaxe
default:pick_diamond		Diamond Pickaxe
default:pick_mese			Mese Pickaxe
default:pick_steel			Steel Pickaxe
default:pick_stone			Stone Pickaxe
default:pick_wood			Wooden Pickaxe
default:pine_needles		Pine Needles
default:pine_sapling		Pine Sapling
default:pine_tree			Pine Tree
default:pine_wood			Pine Wood Planks
default:river_water_flowing		Flowing River Water
default:river_water_source		River Water Source
default:sand				Sand
default:sandstone_block		Sandstone Block
default:sandstone			Sandstone
default:sandstonebrick		Sandstone Brick
default:sapling				Sapling
default:shovel_bronze		Bronze Shovel
default:shovel_diamond		Diamond Shovel
default:shovel_mese			Mese Shovel
default:shovel_steel		Steel Shovel
default:shovel_stone		Stone Shovel
default:shovel_wood			Wooden Shovel
default:sign_wall_steel		Steel Sign
default:sign_wall_wood		Wooden Sign
default:silver_sand			Silver Sand
default:silver_sandstone_block		Silver Sandstone Block
default:silver_sandstone_brick		Silver Sandstone Brick
default:silver_sandstone		Silver Sandstone
default:skeleton_key		Skeleton Key
default:snow				Snow
default:snowblock			Snow Block
default:steel_ingot			Steel Ingot
default:steelblock			Steel Block
default:stick				Stick
default:stone_block			Stone Block
default:stone_with_coal		Coal Ore
default:stone_with_copper	Copper Ore
default:stone_with_diamond	Diamond Ore
default:stone_with_gold		Gold Ore
default:stone_with_iron		Iron Ore
default:stone_with_mese		Mese Ore
default:stone_with_tin		Tin Ore
default:stone				Stone
default:stonebrick			Stone Brick
default:sword_bronze		Bronze Sword
default:sword_diamond		Diamond Sword
default:sword_mese			Mese Sword
default:sword_steel			Steel Sword
default:sword_stone			Stone Sword
default:sword_wood			Wooden Sword
default:tin_ingot			Tin Ingot
default:tin_lump			Tin Lump
default:tinblock			Tin Block
default:torch_ceiling		
default:torch_wall		
default:torch				Torch
default:tree				Tree
default:water_flowing		Flowing Water
default:water_source		Water Source
default:wood				Wooden Planks
doors:door_glass_a			Glass Door
doors:door_glass_b			Glass Door
doors:door_glass			Glass Door
doors:door_obsidian_glass_a		Obsidian Glass Door
doors:door_obsidian_glass_b		Obsidian Glass Door
doors:door_obsidian_glass		Obsidian Glass Door
doors:door_steel_a			Steel Door
doors:door_steel_b			Steel Door
doors:door_steel			Steel Door
doors:door_wood_a			Wooden Door
doors:door_wood_b			Wooden Door
doors:door_wood				Wooden Door
doors:gate_acacia_wood_closed	Acacia Fence Gate
doors:gate_acacia_wood_open		Acacia Fence Gate
doors:gate_aspen_wood_closed	Aspen Fence Gate
doors:gate_aspen_wood_open		Aspen Fence Gate
doors:gate_junglewood_closed	Jungle Wood Fence Gate
doors:gate_junglewood_open		Jungle Wood Fence Gate
doors:gate_pine_wood_closed		Pine Fence Gate
doors:gate_pine_wood_open		Pine Fence Gate
doors:gate_wood_closed		Wooden Fence Gate
doors:gate_wood_open		Wooden Fence Gate
doors:hidden				Hidden Door Segment
doors:trapdoor_open			Trapdoor
doors:trapdoor_steel_open	Steel Trapdoor
doors:trapdoor_steel		Steel Trapdoor
doors:trapdoor				Trapdoor
dye:black					Black dye
dye:blue					Blue dye
dye:brown					Brown dye
dye:cyan					Cyan dye
dye:dark_green			Dark green dye
dye:dark_grey			Dark grey dye
dye:green				Green dye
dye:grey				Grey dye
dye:magenta				Magenta dye
dye:orange				Orange dye
dye:pink				Pink dye
dye:red					Red dye
dye:violet				Violet dye
dye:white				White dye
dye:yellow				Yellow dye
ethereal:banana			Banana
ethereal:orange			Orange
ethereal:strawberry		Strawberry
farming:baked_potato	Baked Potato
farming:barley_1		
farming:barley_2		
farming:barley_3		
farming:barley_4		
farming:barley_5		
farming:barley_6		
farming:barley_7		
farming:barley			Barley
farming:beanbush		
farming:beanpole_1		
farming:beanpole_2		
farming:beanpole_3		
farming:beanpole_4		
farming:beanpole_5		
farming:beanpole		Bean Pole (place on soil before planting beans)
farming:beans			Green Beans
farming:blueberries		Blueberries
farming:blueberry_1		
farming:blueberry_2		
farming:blueberry_3		
farming:blueberry_4		
farming:bottle_ethanol	Bottle of Ethanol
farming:bread			Bread
farming:carrot_1		
farming:carrot_2		
farming:carrot_3		
farming:carrot_4		
farming:carrot_5		
farming:carrot_6		
farming:carrot_7		
farming:carrot_8		
farming:carrot_gold		Golden Carrot
farming:carrot			Carrot
farming:chocolate_dark	Bar of Dark Chocolate
farming:cocoa_1		
farming:cocoa_2		
farming:cocoa_3		
farming:cocoa_beans		Cocoa Beans
farming:coffee_1		
farming:coffee_2		
farming:coffee_3		
farming:coffee_4		
farming:coffee_5		
farming:coffee_beans		Coffee Beans
farming:coffee_cup_hot		Hot Cup of Coffee
farming:coffee_cup			Cold Cup of Coffee
farming:cookie				Cookie
farming:corn_1		
farming:corn_2		
farming:corn_3		
farming:corn_4		
farming:corn_5		
farming:corn_6		
farming:corn_7		
farming:corn_8		
farming:corn_cob			Corn on the Cob
farming:corn				Corn
farming:cotton_1		
farming:cotton_2		
farming:cotton_3		
farming:cotton_4		
farming:cotton_5		
farming:cotton_6		
farming:cotton_7		
farming:cotton_8		
farming:cotton				Cotton
farming:cucumber_1		
farming:cucumber_2		
farming:cucumber_3		
farming:cucumber_4		
farming:cucumber			Cucumber
farming:donut_apple			Apple Donut
farming:donut_chocolate		Chocolate Donut
farming:donut				Donut
farming:drinking_cup		Drinking Cup (empty)
farming:flour				Flour
farming:grapebush		
farming:grapes_1		
farming:grapes_2		
farming:grapes_3		
farming:grapes_4		
farming:grapes_5		
farming:grapes_6		
farming:grapes_7		
farming:grapes_8		
farming:grapes				Grapes
farming:hemp_1		
farming:hemp_2		
farming:hemp_3		
farming:hemp_4		
farming:hemp_5		
farming:hemp_6		
farming:hemp_7		
farming:hemp_8		
farming:hemp_fibre			Hemp Fibre
farming:hemp_leaf			Hemp Leaf
farming:hemp_oil			Bottle of Hemp Oil
farming:hemp_rope			Hemp Rope
farming:hoe_bronze			Bronze Hoe
farming:hoe_diamond			Diamond Hoe
farming:hoe_mese			Mese Hoe
farming:hoe_steel			Steel Hoe
farming:hoe_stone			Stone Hoe
farming:hoe_wood			Wooden Hoe
farming:jackolantern_on		
farming:jackolantern		Jack 'O Lantern (punch to turn on and off)
farming:melon_1		
farming:melon_2		
farming:melon_3		
farming:melon_4		
farming:melon_5		
farming:melon_6		
farming:melon_7		
farming:melon_8				Melon
farming:melon_slice			Melon Slice
farming:muffin_blueberry	Blueberry Muffin
farming:potato_1		
farming:potato_2		
farming:potato_3		
farming:potato_4		
farming:potato				Potato
farming:pumpkin_1		
farming:pumpkin_2		
farming:pumpkin_3		
farming:pumpkin_4		
farming:pumpkin_5		
farming:pumpkin_6		
farming:pumpkin_7		
farming:pumpkin_8		
farming:pumpkin_bread		Pumpkin Bread
farming:pumpkin_dough		Pumpkin Dough
farming:pumpkin_slice		Pumpkin Slice
farming:pumpkin				Pumpkin
farming:raspberries			Raspberries
farming:raspberry_1		
farming:raspberry_2		
farming:raspberry_3		
farming:raspberry_4		
farming:rhubarb_1		
farming:rhubarb_2		
farming:rhubarb_3		
farming:rhubarb_pie			Rhubarb Pie
farming:rhubarb				Rhubarb
farming:seed_barley			Barley Seed
farming:seed_cotton			Cotton Seed
farming:seed_hemp			Hemp Seed
farming:seed_wheat			Wheat Seed
farming:smoothie_raspberry	Raspberry Smoothie
farming:soil_wet			Wet Soil
farming:soil				Soil
farming:straw				Straw
farming:sugar				Sugar
farming:tomato_1		
farming:tomato_2		
farming:tomato_3		
farming:tomato_4		
farming:tomato_5		
farming:tomato_6		
farming:tomato_7		
farming:tomato_8		
farming:tomato				Tomato
farming:trellis				Trellis (place on soil before planting grapes)
farming:wheat_1		
farming:wheat_2		
farming:wheat_3		
farming:wheat_4		
farming:wheat_5		
farming:wheat_6		
farming:wheat_7		
farming:wheat_8		
farming:wheat				Wheat
fire:basic_flame		
fire:flint_and_steel		Flint and Steel
fire:permanent_flame		Permanent Flame
flowers:dandelion_white		White dandelion
flowers:dandelion_yellow	Yellow Dandelion
flowers:geranium			Blue Geranium
flowers:mushroom_brown		Brown Mushroom
flowers:mushroom_red		Red Mushroom
flowers:rose		Rose
flowers:tulip		Orange Tulip
flowers:viola		Viola
flowers:waterlily		Waterlily
handle_schematics:build		Building-Spawner
handle_schematics:dig_here		dig the node below this one
handle_schematics:support_setup		support structure for buildings (configured)
handle_schematics:support		support structure for buildings
ignore		Ignore (you hacker you!)
mg_villages:desert_sand_soil		Desert Sand
mg_villages:lava_flowing_tamed		Flowing Lava (tame)
mg_villages:lava_source_tamed		Lava Source (tame)
mg_villages:mob_spawner		Mob spawner
mg_villages:plotmarker		Plot marker
mg_villages:road			village road
mg_villages:soil			Soil found on a field
screwdriver:screwdriver		Screwdriver (left-click rotates face		 right-click rotates axis)
stairs:slab_acacia_wood		Acacia Wood Slab
stairs:slab_aspen_wood		Aspen Wood Slab
stairs:slab_brick			Brick Slab
stairs:slab_bronzeblock		Bronze Block Slab
stairs:slab_clay			Clay Slab
stairs:slab_cobble			Cobblestone Slab
stairs:slab_copperblock		Copper Block Slab
stairs:slab_desert_cobble		Desert Cobblestone Slab
stairs:slab_desert_sandstone_block		Desert Sandstone Block Slab
stairs:slab_desert_sandstone_brick		Desert Sandstone Brick Slab
stairs:slab_desert_sandstone		Desert Sandstone Slab
stairs:slab_desert_stone_block		Desert Stone Block Slab
stairs:slab_desert_stone			Desert Stone Slab
stairs:slab_desert_stonebrick		Desert Stone Brick Slab
stairs:slab_feldweg					Dirt Road		 half height
stairs:slab_goldblock				Gold Block Slab
stairs:slab_ice						Ice Slab
stairs:slab_junglewood			Jungle Wood Slab
stairs:slab_loam				Loam Slab
stairs:slab_mossycobble			Mossy Cobblestone Slab
stairs:slab_obsidian_block		Obsidian Block Slab
stairs:slab_obsidian			Obsidian Slab
stairs:slab_obsidianbrick		Obsidian Brick Slab
stairs:slab_pine_wood			Pine Wood Slab
stairs:slab_sandstone_block		Sandstone Block Slab
stairs:slab_sandstone			Sandstone Slab
stairs:slab_sandstonebrick		Sandstone Brick Slab
stairs:slab_silver_sandstone_block		Silver Sandstone Block Slab
stairs:slab_silver_sandstone_brick		Silver Sandstone Brick Slab
stairs:slab_silver_sandstone		Silver Sandstone Slab
stairs:slab_snowblock		Snow Block Slab
stairs:slab_steelblock		Steel Block Slab
stairs:slab_stone_block		Stone Block Slab
stairs:slab_stone			Stone Slab
stairs:slab_stonebrick		Stone Brick Slab
stairs:slab_straw			Straw Slab
stairs:slab_wood			Wooden Slab
stairs:stair_acacia_wood	Acacia Wood Stair
stairs:stair_aspen_wood		Aspen Wood Stair
stairs:stair_brick			Brick Stair
stairs:stair_bronzeblock	Bronze Block Stair
stairs:stair_clay			Clay Stairs
stairs:stair_cobble			Cobblestone Stair
stairs:stair_copperblock		Copper Block Stair
stairs:stair_desert_cobble		Desert Cobblestone Stair
stairs:stair_desert_sandstone_block		Desert Sandstone Block Stair
stairs:stair_desert_sandstone_brick		Desert Sandstone Brick Stair
stairs:stair_desert_sandstone		Desert Sandstone Stair
stairs:stair_desert_stone_block		Desert Stone Block Stair
stairs:stair_desert_stone		Desert Stone Stair
stairs:stair_desert_stonebrick		Desert Stone Brick Stair
stairs:stair_feldweg		Dirt Road Stairs
stairs:stair_goldblock		Gold Block Stair
stairs:stair_ice		Ice Stair
stairs:stair_junglewood		Jungle Wood Stair
stairs:stair_loam		Loam Stairs
stairs:stair_mossycobble		Mossy Cobblestone Stair
stairs:stair_obsidian_block		Obsidian Block Stair
stairs:stair_obsidian		Obsidian Stair
stairs:stair_obsidianbrick		Obsidian Brick Stair
stairs:stair_pine_wood		Pine Wood Stair
stairs:stair_sandstone_block		Sandstone Block Stair
stairs:stair_sandstone		Sandstone Stair
stairs:stair_sandstonebrick		Sandstone Brick Stair
stairs:stair_silver_sandstone_block		Silver Sandstone Block Stair
stairs:stair_silver_sandstone_brick		Silver Sandstone Brick Stair
stairs:stair_silver_sandstone		Silver Sandstone Stair
stairs:stair_snowblock		Snow Block Stair
stairs:stair_steelblock		Steel Block Stair
stairs:stair_stone_block		Stone Block Stair
stairs:stair_stone		Stone Stair
stairs:stair_stonebrick		Stone Brick Stair
stairs:stair_straw		Straw Stair
stairs:stair_wood		Wooden Stair
tnt:boom		
tnt:gunpowder_burning		
tnt:gunpowder			Gun Powder
tnt:tnt_burning		
unknown						Unknown Item
vessels:drinking_glass		Drinking Glass (empty)
vessels:glass_bottle		Glass Bottle (empty)
vessels:glass_fragments		Pile of Glass Fragments
vessels:shelf				Vessels Shelf
vessels:steel_bottle		Heavy Steel Bottle (empty)
villagers:coins_gold		Gold Coin
villagers:coins				Silver Coin
walls:cobble				Cobblestone Wall
walls:desertcobble			Desert Cobblestone Wall
walls:mossycobble			Mossy Cobblestone Wall
wool:black		Black Wool
wool:blue		Blue Wool
wool:brown		Brown Wool
wool:cyan		Cyan Wool
wool:dark_green		Dark Green Wool
wool:dark_grey		Dark Grey Wool
wool:green		Green Wool		
wool:grey		Grey Wool
wool:magenta		Magenta Wool
wool:orange		Orange Wool
wool:pink		Pink Wool
wool:red		Red Wool
wool:violet		Violet Wool
wool:white		White Wool
wool:yellow		Yellow Wool
xpanes:bar_flat		Iron bar
xpanes:bar		Iron bar
xpanes:pane_flat		Glass Pane
xpanes:pane		Glass Pane

minetest.register_craft({
	output = 'default:mese_crystal_fragment 9',
	recipe = {
		{'default:mese_crystal'},
	}
})
minetest.register_craft({
	output = "default:mese_crystal",
	recipe = {
		{"default:mese_crystal_fragment", "default:mese_crystal_fragment", "default:mese_crystal_fragment"},
		{"default:mese_crystal_fragment", "default:mese_crystal_fragment", "default:mese_crystal_fragment"},
		{"default:mese_crystal_fragment", "default:mese_crystal_fragment", "default:mese_crystal_fragment"},
	}
})
minetest.register_craft({
	output = 'default:mese_crystal 9',
	recipe = {
		{'default:mese'},
	}
})
minetest.register_craft({
	output = 'default:mese',
	recipe = {
		{'default:mese_crystal', 'default:mese_crystal', 'default:mese_crystal'},
		{'default:mese_crystal', 'default:mese_crystal', 'default:mese_crystal'},
		{'default:mese_crystal', 'default:mese_crystal', 'default:mese_crystal'},
	}
})
minetest.register_craft({
	output = 'default:sword_mese',
	recipe = {
		{'default:mese_crystal'},
		{'default:mese_crystal'},
		{'group:stick'},
	}
})
minetest.register_node("default:stone_with_mese", {
	description = "Mese Ore",
	tiles = {"default_stone.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})
]]
