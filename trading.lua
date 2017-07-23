-- Costs and Stock of all goods: index 1 is cost, index 2 is stock
local GOODS_DATA = {
	["default:apple"] 			= {"villagers:coins", 2, math.random(70,90)},
	["flowers:mushroom_red"] 	= {"villagers:coins", 5, math.random(50,70)},
	["flowers:mushroom_brown"] 	= {"villagers:coins", 5, math.random(50,70)},
	
	["flowers:rose"] 				= {"villagers:coins", 5, math.random(30,50)},
	["flowers:tulip"] 				= {"villagers:coins", 5, math.random(30,50)},
	["flowers:dandelion_yellow"]	= {"villagers:coins", 5, math.random(30,50)},
	["flowers:geranium"] 			= {"villagers:coins", 5, math.random(30,50)},
	["flowers:viola"] 				= {"villagers:coins", 5, math.random(30,50)},
	["flowers:dandelion_white"] 	= {"villagers:coins", 5, math.random(30,50)},
	
	["default:papyrus"] 	= {"villagers:coins", 2, math.random(30,50)},
	["default:paper"] 		= {"villagers:coins", 6, math.random(30,50)},
	["default:book"]		= {"villagers:coins", 20, math.random(20,40)},
	
	["farming:cotton"] 		= {"villagers:coins", 3, math.random(80,99)},
	["farming:string"] 		= {"villagers:coins", 3, math.random(90,99)},
	["farming:wheat"] 		= {"villagers:coins", 2, math.random(60,80)},
	["farming:straw"] 		= {"villagers:coins", 7, math.random(60,80)},
	
	["farming:flour"] 		= {"villagers:coins", 9, math.random(60,80)},
	["farming:bread"] 		= {"villagers:coins", 17, math.random(30,40)},
	
	["default:ice"] 		= {"villagers:coins", 5, math.random(70,90)},

	["default:dirt"] 				= {"villagers:coins", 1, math.random(70,90)},
	["default:gravel"] 				= {"villagers:coins", 2, math.random(70,90)},
	["group:wool"] 					= {"villagers:coins", 999, math.random(60,80)},
	["default:sand"] 				= {"villagers:coins", 2, math.random(70,90)},
	["default:glass"] 				= {"villagers:coins", 4, math.random(40,60)},
	["vessels:glass_bottle"] 		= {"villagers:coins", 1, math.random(30,40)},
	["vessels:drinking_glass"] 		= {"villagers:coins", 8, math.random(20,30)},
	["cottages:glass_pane"] 		= {"villagers:coins", 2, math.random(30,50)},
	["xpanes:pane_flat"] 			= {"villagers:coins", 14, math.random(30,50)},
	["cottages:glass_pane_side"]	= {"villagers:coins", 14, math.random(30,50)},
	
	["default:clay_lump"] 	= {"villagers:coins", 5, math.random(60,80)},
	["default:clay"] 		= {"villagers:coins", 22, math.random(40,60)},
	["default:clay_brick"] 	= {"villagers:coins", 23, math.random(40,60)},
	["default:cobble"] 		= {"villagers:coins", 3, math.random(60,80)},
	["default:stone"] 		= {"villagers:coins", 6, math.random(60,80)},
	
	["default:stonebrick"] 				= {"villagers:coins", 25, math.random(60,80)},
	["default:desert_stonebrick"] 		= {"villagers:coins", 30, math.random(60,80)},
	["default:sandstonebrick"] 			= {"villagers:coins", 30, math.random(60,80)},
	["default:desert_sandstone_brick"] 	= {"villagers:coins", 30, math.random(60,80)},
	["default:silver_sandstone_brick"] 	= {"villagers:coins", 30, math.random(60,80)},
	["default:brick"] 					= {"villagers:coins", 100, math.random(60,80)},
	
	["default:stick"] 		= {"villagers:coins", 1, math.random(80,99)},
	["default:wood"] 		= {"villagers:coins", 5, math.random(60,70)},
	["default:tree"] 		= {"villagers:coins", 23, math.random(50,60)},
	["default:ladder_wood"] = {"villagers:coins", 3, math.random(40,50)},
	["cottages:table"] 		= {"villagers:coins", 5, math.random(20,30)},
	["cottages:bench"] 		= {"villagers:coins", 8, math.random(20,30)},
	
	["default:fence_wood"] 		= {"villagers:coins", 24, math.random(40,60)},
	["doors:gate_wood_closed"] 	= {"villagers:coins", 16, math.random(30,50)},
	["doors:door_wood_a"] 		= {"villagers:coins", 33, math.random(30,50)},
	["default:sign_wall_wood"] 	= {"villagers:coins", 11, math.random(40,60)},
	["doors:trapdoor"] 			= {"villagers:coins", 16, math.random(40,60)},
	["default:chest"] 			= {"villagers:coins", 44, math.random(30,50)},
	["boats:boat"] 				= {"villagers:coins", 28, math.random(20,30)},
	["beds:bed"] 				= {"villagers:coins", 34, math.random(20,30)},
	["beds:fancy_bed"] 			= {"villagers:coins", 40, math.random(10,20)},
	["default:bookshelf"] 		= {"villagers:coins", 10, math.random(30,40)},
	["cottages:shelf"] 			= {"villagers:coins", 18, math.random(30,40)},
	["vessels:shelf"] 			= {"villagers:coins", 50, math.random(30,40)},
	["cottages:tub"] 			= {"villagers:coins", 20, math.random(50,70)},
	["cottages:barrel"] 		= {"villagers:coins", 40, math.random(60,80)},
	["cottages:barrel_lying"] 	= {"villagers:coins", 40, math.random(60,80)},
	["cottages:wood_flat"] 		= {"villagers:coins", 1, math.random(70,90)},
	["cottages:hatch_wood"] 	= {"villagers:coins", 5, math.random(40,60)},
	["cottages:wagon_wheel"] 	= {"villagers:coins", 5, math.random(40,60)},
	["cottages:gate_closed"] 	= {"villagers:coins", 12, math.random(30,50)},
	
	-- STAIRS --
	["stairs:stair_wood"]	 		= {"villagers:coins", 7, math.random(30,50)},
	["stairs:stair_pine_wood"] 		= {"villagers:coins", 9, math.random(30,50)},
	["stairs:stair_junglewood"] 	= {"villagers:coins", 10, math.random(30,50)},
	["stairs:stair_acacia_wood"] 	= {"villagers:coins", 10, math.random(30,50)},
	
	["stairs:slab_wood"] 			= {"villagers:coins", 3, math.random(60,80)},
	
	["stairs:slab_straw"] 			= {"villagers:coins", 4, math.random(40,60)},
	["stairs:stair_straw"] 			= {"villagers:coins", 7, math.random(30,50)},
	
	["stairs:slab_ice"] 			= {"villagers:coins", 3, math.random(70,90)},
	["stairs:stair_ice"] 			= {"villagers:coins", 5, math.random(40,60)},
	
	["stairs:stair_sandstone"] 					= {"villagers:coins", 5, math.random(40,60)},
	["stairs:stair_sandstone_block"] 			= {"villagers:coins", 5, math.random(40,60)},
	["stairs:stair_sandstonebrick"] 			= {"villagers:coins", 5, math.random(40,60)},
	["stairs:stair_desert_sandstone"] 			= {"villagers:coins", 5, math.random(40,60)},
	["stairs:stair_desert_sandstone_block"] 	= {"villagers:coins", 5, math.random(40,60)},
	["stairs:stair_desert_sandstone_brick"] 	= {"villagers:coins", 5, math.random(40,60)},
	
	["stairs:stair_"] 	= {"villagers:coins", 5, math.random(40,60)},
	["stairs:stair_"] 	= {"villagers:coins", 5, math.random(40,60)},
	["stairs:stair_"] 	= {"villagers:coins", 5, math.random(40,60)},
	["stairs:stair_"] 	= {"villagers:coins", 5, math.random(40,60)},
	["stairs:stair_"] 	= {"villagers:coins", 5, math.random(40,60)},
	["stairs:stair_"] 	= {"villagers:coins", 5, math.random(40,60)},
	["stairs:stair_"] 	= {"villagers:coins", 5, math.random(40,60)},
	["stairs:stair_"] 	= {"villagers:coins", 5, math.random(40,60)},
	["stairs:stair_"] 	= {"villagers:coins", 5, math.random(40,60)},
	
	
	["default:coal_lump"] 		= {"villagers:coins", 20, math.random(60,80)},
	["default:coalblock"] 		= {"villagers:coins_gold", 19, math.random(30,50)},
	["default:torch"] 			= {"villagers:coins"10, math.random(30,50)},
	["tnt:gunpowder"] 			= {"villagers:coins_gold", 25, math.random(30,50)},
	["tnt:tnt"] 				= {"villagers:coins_gold", 15, math.random(20,40)},
	
	["default:iron_lump"] 				= {"villagers:coins", 80, math.random(70,90)},
	["default:copper_lump"] 			= {"villagers:coins_gold", 16, math.random(60,80)},
	["default:tin_lump"] 				= {"villagers:coins_gold", 16, math.random(60,80)},
	["default:gold_lump"] 				= {"villagers:coins_gold", 28, math.random(30,40)},
	["default:mese_crystal_fragment"] 	= {"villagers:coins_gold", 7, math.random(70,90)},
	["default:steel_ingot"] 			= {"villagers:coins_gold", 10, math.random(60,80)},
	["default:copper_ingot"] 			= {"villagers:coins_gold", 18, math.random(60,80)},
	["default:tin_ingot"] 				= {"villagers:coins_gold", 18, math.random(60,80)},
	["default:bronze_ingot"] 			= {"villagers:coins_gold", 20, math.random(60,80)},
	["default:gold_ingot"] 				= {"villagers:coins_gold", 30, math.random(30,50)},	
	["default:mese_crystal"] 			= {"villagers:coins_gold", 55, math.random(20,40)},
	["default:diamond"] 				= {"villagers:coins_gold", 99, math.random(20,40)},
	
	["default:goldblock"] 		= {"villagers:coins_gold", 280, math.random(20,30)},
	["stairs:stair_goldblock"] 	= {"villagers:coins_gold", 100, math.random(20,30)},
	["stairs:slab_goldblock"] 	= {"villagers:coins_gold", 140, math.random(20,30)},
	
	["screwdriver:screwdriver"] = {"villagers:coins_gold", 11, math.random(30,50)},
	["default:chest_locked"] 	= {"villagers:coins_gold", 15, math.random(30,50)},
	["default:skeleton_key"] 	= {"villagers:coins_gold", 19, math.random(30,50)},
	["bucket:bucket_empty"] 	= {"villagers:coins_gold", 28, math.random(40,60)},
	["default:door_steel"] 		= {"villagers:coins_gold", 62, math.random(20,40)},
	["vessels:steel_bottle"] 	= {"villagers:coins_gold", 55, math.random(20,40)},
	
	["default:shovel_wood"] 	= {"villagers:coins", 8, math.random(30,50)},
	["default:shovel_stone"] 	= {"villagers:coins", 9, math.random(30,50)},
	["default:shovel_steel"] 	= {"villagers:coins_gold", 11, math.random(30,50)},
	["default:shovel_bronze"] 	= {"villagers:coins_gold", 19, math.random(30,50)},
	["default:pick_wood"] 		= {"villagers:coins", 16, math.random(30,50)},
	["default:pick_stone"] 		= {"villagers:coins", 21, math.random(30,50)},
	["default:pick_steel"] 		= {"villagers:coins_gold", 31, math.random(30,50)},
	["default:pick_bronze"] 	= {"villagers:coins_gold", 56, math.random(30,50)},
	["default:sword_wood"] 		= {"villagers:coins", 12, math.random(20,40)},
	["default:sword_stone"] 	= {"villagers:coins", 14, math.random(20,40)},
	["default:sword_steel"] 	= {"villagers:coins_gold", 21, math.random(20,40)},
	["default:sword_bronze"] 	= {"villagers:coins_gold", 37, math.random(20,40)},
	["default:axe_wood"] 		= {"villagers:coins", 18, math.random(20,40)},
	["default:axe_stone"] 		= {"villagers:coins", 21, math.random(20,40)},
	["default:axe_steel"] 		= {"villagers:coins_gold", 31, math.random(20,40)},
	["default:axe_bronze"] 		= {"villagers:coins_gold", 57, math.random(20,40)},
	["farming:hoe_wood"] 		= {"villagers:coins", 13, math.random(30,50)},
	["farming:hoe_stone"] 		= {"villagers:coins", 15, math.random(30,50)},
	["farming:hoe_steel"] 		= {"villagers:coins_gold", 21, math.random(30,50)},
	["farming:hoe_bronze"] 		= {"villagers:coins_gold", 37, math.random(30,50)},
	
	["dye:white"] 		= {"villagers:coins", 3, math.random(30,50)},
	["dye:grey"] 		= {"villagers:coins", 8, math.random(30,50)},
	["dye:dark_grey"] 	= {"villagers:coins", 8, math.random(30,50)},
	["dye:black"] 		= {"villagers:coins", 6, math.random(30,50)},
	["dye:violet"] 		= {"villagers:coins", 8, math.random(30,50)},
	["dye:blue"] 		= {"villagers:coins", 8, math.random(30,50)},
	["dye:cyan"] 		= {"villagers:coins", 8, math.random(30,50)},
	["dye:dark_green"] 	= {"villagers:coins", 8, math.random(30,50)},
	["dye:green"] 		= {"villagers:coins", 8, math.random(30,50)},
	["dye:yellow"] 		= {"villagers:coins", 3, math.random(30,50)},
	["dye:brown"] 		= {"villagers:coins", 8, math.random(30,50)},
	["dye:orange"] 		= {"villagers:coins", 8, math.random(30,50)},
	["dye:red"] 		= {"villagers:coins", 8, math.random(30,50)},
	["dye:magenta"] 	= {"villagers:coins", 8, math.random(30,50)},
	["dye:pink"] 		= {"villagers:coins", 8, math.random(30,50)},
	
	["villagers:coins_gold"] = {"villagers:coins", 10, math.random(70,90)},	
	["villagers:coins"] = {"villagers:coins_gold", 1, math.random(70,90)},	
	
}


-- temporary default goods for villagers until appropriate items are assigned
local DEFAULT_GOODS = { {split=0, min=1, max=1}, getGoodsData("default:dirt", 1) }

local function getGoodsData(item_name, quant_per_sale)
	local item_description = minetest.registered_items[item_name].description
	if minetest.registered_items[item_name] == nil then 
		return {"invalid_item", item_name}
	end
	if minetest.registered_items[item_name].description == nil then
		return {"no_description", item_name}
	end
	if GOODS_DATA[item_name] == nil then
		return {"naming_error", item_name}
	end
	return {
		item_name,
		item_description,
		quant_per_sale,
		GOODS_DATA[item_name][1],
		GOODS_DATA[item_name][2],
		GOODS_DATA[item_name][3]
	}
end

villagers.GOODS = {
	
	baker = {
		{split=2, min=3, max=4},			
		getGoodsData("farming:bread", 1),
		getGoodsData("farming:flour", 1),
		-- split --
		getGoodsData("farming:flour", 1),
		getGoodsData("default:apple", 1),
		getGoodsData("flowers:mushroom_red", 1),
		getGoodsData("flowers:mushroom_brown", 1),
		},
	barkeeper = {
		{split=1, min=1, max=3},
		{"vessels:drinking_glass", 1, CS["vessels:drinking_glass"][1], CS["vessels:drinking_glass"][2], CS["vessels:drinking_glass"][3]},
		-- split --
		{"default:apple", 1, CS["default:apple"][1], CS["default:apple"][2], CS["default:apple"][3]}, 
		{"farming:bread", 1, CS["farming:bread"][1], CS["farming:bread"][2], CS["farming:bread"][3]}, 
	},
	blacksmith = {
		{split=1, min=3, max=4},
		{"default:sword_steel", 	1, CS["default:sword_steel"][1], 	"villagers:coins_gold", CS["default:sword_steel"][3]},
		-- split --
		{"default:axe_steel", 		1, CS["default:axe_steel"][1], 		"villagers:coins_gold", CS["default:axe_steel"][3]},
		{"default:pick_steel", 		1, CS["default:pick_steel"][1], 	"villagers:coins_gold", CS["default:pick_steel"][3]},
		{"default:shovel_steel", 	1, CS["default:shovel_steel"][1], 	"villagers:coins_gold", CS["default:shovel_steel"][3]},
		{"farming:hoe_steel", 		1, CS["farming:hoe_steel"][1], 		"villagers:coins_gold", CS["farming:hoe_steel"][3]},
	},
	bricklayer = {
		{split=2, min=2, max=3},
		{"default:stonebrick", 		1, CS["default:stonebrick"][1], 	CS["default:stonebrick"][2], 		CS["default:stonebrick"][3]},
		{"default:sandstonebrick", 	1, CS["default:sandstonebrick"][1], CS["default:sandstonebrick"][2], 	CS["default:sandstonebrick"][3]},
		-- split --
		{"default:clay_brick", 				1, CS["default:clay_brick"][1], 			CS["default:clay_brick"][2], 				CS["default:clay_brick"][3]},
		{"default:desert_stonebrick", 		1, CS["default:desert_stonebrick"][1], 		CS["default:desert_stonebrick"][2], 		CS["default:desert_stonebrick"][3]},
		{"default:desert_sandstone_brick", 	1, CS["default:desert_sandstone_brick"][1], CS["default:desert_sandstone_brick"][2], 	CS["default:desert_sandstone_brick"][3]},
		{"default:silver_sandstone_brick", 	1, CS["default:silver_sandstone_brick"][1], CS["default:silver_sandstone_brick"][2], 	CS["default:silver_sandstone_brick"][3]},
	},
	carpenter = {
		{split=3, min=4, max=5},
		{"default:ladder_wood", 	1, CS["default:ladder_wood"][1], 	CS["default:ladder_wood"][2], 		CS["default:ladder_wood"][3]},
		{"default:fence_wood", 		1, CS["default:fence_wood"][1], 	CS["default:fence_wood"][2], 		CS["default:fence_wood"][3]},
		{"doors:gate_wood_closed", 	1, CS["doors:gate_wood_closed"][1], CS["doors:gate_wood_closed"][2], 	CS["doors:gate_wood_closed"][3]},
		-- split --
		{"cottages:gate_closed", 	1, CS["cottages:gate_closed"][1], 	CS["cottages:gate_closed"][2], 		CS["cottages:gate_closed"][3]},
		{"default:sign_wall_wood", 	1, CS["default:sign_wall_wood"][1], CS["default:sign_wall_wood"][2], 	CS["default:sign_wall_wood"][3]},
		{"doors:trapdoor", 			1, CS["doors:trapdoor"][1], 		CS["doors:trapdoor"][2], 			CS["doors:trapdoor"][3]},
		{"boats:boat", 				1, CS["boats:boat"][1], 			CS["boats:boat"][2], 				CS["boats:boat"][3]},
		{"default:chest", 			1, CS["default:chest"][1], 			CS["default:chest"][2], 			CS["default:chest"][3]},
	},
	charachoal_burner = {
		{split=1, min=2, max=3},
		{"default:coal_lump", 	1, CS["default:coal_lump"][1], 	CS["default:coal_lump"][2], CS["default:coal_lump"][3]},
		-- split --
		{"default:sand", 		1, CS["default:sand"][1], 		CS["default:sand"][2], 		CS["default:sand"][3]},
		{"default:dirt", 		1, CS["default:dirt"][1], 		CS["default:dirt"][2], 		CS["default:dirt"][3]},
		{"default:gravel", 		1, CS["default:gravel"][1], 	CS["default:gravel"][2], 	CS["default:gravel"][3]},
	},
	cooper = {
		{split=1, min=1, max=2},
		{"cottages:barrel", 		1, CS["cottages:barrel"][1], 		CS["cottages:barrel"][2], 		CS["cottages:barrel"][3]},
		-- split --
		{"cottages:tub", 			1, CS["cottages:tub"][1], 			CS["cottages:tub"][2], 			CS["cottages:tub"][3]},
		{"cottages:barrel_lying", 	1, CS["cottages:barrel_lying"][1], 	CS["cottages:barrel_lying"][2], CS["cottages:barrel_lying"][3]},
	},
	coppersmith = {
		{split=1, min=3, max=4},
		{"default:sword_bronze", 	1, CS["default:sword_bronze"][1], 	CS["default:sword_bronze"][2], 	CS["default:sword_bronze"][3]},
		-- split --
		{"default:axe_bronze", 		1, CS["default:axe_bronze"][1], 	CS["default:axe_bronze"][2], 	CS["default:axe_bronze"][3]},
		{"default:pick_bronze", 	1, CS["default:pick_bronze"][1], 	CS["default:pick_bronze"][2], 	CS["default:pick_bronze"][3]},
		{"default:shovel_bronze", 	1, CS["default:shovel_bronze"][1], 	CS["default:shovel_bronze"][2], CS["default:shovel_bronze"][3]},
		{"farming:hoe_bronze", 		1, CS["farming:hoe_bronze"][1], 	CS["farming:hoe_bronze"][2], 	CS["farming:hoe_bronze"][3]},
	},
	doormaker = {
		{split=1, min=1, max=3},
		{"doors:door_wood_a", 		1, CS["doors:door_wood_a"][1], 		CS["doors:door_wood_a"][2], 		CS["doors:door_wood_a"][3]},
		-- split --
		{"doors:trapdoor", 			1, CS["doors:trapdoor"][1], 		CS["doors:trapdoor"][2], 			CS["doors:trapdoor"][3]},
		{"doors:gate_wood_closed", 	1, CS["doors:gate_wood_closed"][1], CS["doors:gate_wood_closed"][2], 	CS["doors:gate_wood_closed"][3]},
	},
	dyemaker = {
		{split=5, min=6, max=8},
		{"dye:brown", 		1, CS["dye:brown"][1], 		CS["dye:brown"][2], 		CS["dye:brown"][3]},
		{"dye:dark_green", 	1, CS["dye:dark_green"][1], CS["dye:dark_green"][2], 	CS["dye:dark_green"][3]},
		{"dye:black", 		1, CS["dye:black"][1], 		CS["dye:black"][2], 		CS["dye:black"][3]},
		{"dye:grey", 		1, CS["dye:grey"][1], 		CS["dye:grey"][2], 			CS["dye:grey"][3]},
		{"dye:dark_grey", 	1, CS["dye:dark_grey"][1], 	CS["dye:dark_grey"][2], 	CS["dye:dark_grey"][3]},
		-- split --
		{"dye:white", 	1, CS["dye:white"][1], 		CS["dye:white"][2], 	CS["dye:white"][3]},
		{"dye:violet", 	1, CS["dye:violet"][1], 	CS["dye:violet"][2], 	CS["dye:violet"][3]},
		{"dye:blue", 	1, CS["dye:blue"][1], 		CS["dye:blue"][2], 		CS["dye:blue"][3]},
		{"dye:cyan", 	1, CS["dye:cyan"][1], 		CS["dye:cyan"][2], 		CS["dye:cyan"][3]},
		{"dye:green",	1, CS["dye:green"][1], 		CS["dye:green"][2], 	CS["dye:green"][3]},
		{"dye:yellow", 	1, CS["dye:yellow"][1], 	CS["dye:yellow"][2], 	CS["dye:yellow"][3]},
		{"dye:orange", 	1, CS["dye:orange"][1], 	CS["dye:orange"][2], 	CS["dye:orange"][3]},
		{"dye:red", 	1, CS["dye:red"][1], 		CS["dye:red"][2], 		CS["dye:red"][3]},
		{"dye:magenta", 1, CS["dye:magenta"][1], 	CS["dye:magenta"][2], 	CS["dye:magenta"][3]},
		{"dye:pink", 	1, CS["dye:pink"][1], 		CS["dye:pink"][2], 		CS["dye:pink"][3]},
	},
	farmer = {
		{split=4, min=6, max=8},
		{"default:apple", 	1, CS["default:apple"][1], 	CS["default:apple"][2], 	CS["default:apple"][3]},
		{"farming:bread", 	1, CS["farming:bread"][1], 	CS["farming:bread"][2], 	CS["farming:bread"][3]},
		{"farming:wheat", 	1, CS["farming:wheat"][1], 	CS["farming:wheat"][2], 	CS["farming:wheat"][3]}, 
		{"farming:cotton", 	1, CS["farming:cotton"][1], CS["farming:cotton"][2], 	CS["farming:cotton"][3]}, 
		-- split --
		{"flowers:mushroom_red", 	1, CS["flowers:mushroom_red"][1], 	CS["flowers:mushroom_red"][2], 		CS["flowers:mushroom_red"][3]},
		{"flowers:mushroom_brown", 	1, CS["flowers:mushroom_brown"][1], CS["flowers:mushroom_brown"][2], 	CS["flowers:mushroom_brown"][3]}, 						
		{"farming:straw", 			1, CS["farming:straw"][1], 			CS["farming:straw"][2], 			CS["farming:straw"][3]}, 
		{"farming:string", 			1, CS["farming:string"][1], 		CS["farming:string"][2], 			CS["farming:string"][3]},
	},
	flower_seller = {
		{split=0, min=4, max=6},
		{"flowers:rose", 				1, CS["flowers:rose"][1], 				CS["flowers:rose"][2], 				CS["flowers:rose"][3]},
		{"flowers:tulip", 				1, CS["flowers:tulip"][1], 				CS["flowers:tulip"][2], 			CS["flowers:tulip"][3]},
		{"flowers:dandelion_yellow", 	1, CS["flowers:dandelion_yellow"][1], 	CS["flowers:dandelion_yellow"][2], 	CS["flowers:dandelion_yellow"][3]},
		{"flowers:geranium", 			1, CS["flowers:geranium"][1], 			CS["flowers:geranium"][2], 			CS["flowers:geranium"][3]},
		{"flowers:viola", 				1, CS["flowers:viola"][1], 				CS["flowers:viola"][2], 			CS["flowers:viola"][3]},
		{"flowers:dandelion_white", 	1, CS["flowers:dandelion_white"][1],	CS["flowers:dandelion_white"][2], 	CS["flowers:dandelion_white"][3]},
	},
	fruit_trader = {
		{split=0, min=1, max=1},
		{"default:apple", 1, CS["default:apple"][1], CS["default:apple"][2], CS["default:apple"][3]},
	},
	furnituremaker = {
		{split=3, min=3, max=5},
		{"cottages:table", 	1, CS["cottages:table"][1], CS["cottages:table"][2], 	CS["cottages:table"][3]},
		{"cottages:bench", 	1, CS["cottages:bench"][1], CS["cottages:bench"][2], 	CS["cottages:bench"][3]},
		{"beds:bed", 		1, CS["beds:bed"][1], 		CS["beds:bed"][2], 			CS["beds:bed"][3]},
		-- split --
		{"cottages:shelf", 		1, CS["cottages:shelf"][1], 	CS["cottages:shelf"][2], 	CS["cottages:shelf"][3]},
		{"default:bookshelf", 	1, CS["default:bookshelf"][1], 	CS["default:bookshelf"][2], CS["default:bookshelf"][3]},
		{"default:chest", 		1, CS["default:chest"][1], 		CS["default:chest"][2], 	CS["default:chest"][3]},
		{"beds:fancy_bed", 		1, CS["beds:fancy_bed"][1], 	CS["beds:fancy_bed"][2], 	CS["beds:fancy_bed"][3]},
		{"vessels:shelf", 		1, CS["vessels:shelf"][1], 		CS["vessels:shelf"][2], 	CS["vessels:shelf"][3]},
	},
	glassmaker = {
		{split=0, min=3, max=5},
		{"default:glass", 				1, CS["default:glass"][1], 				CS["default:glass"][2], 			CS["default:glass"][3]},
		{"vessels:glass_bottle", 		1, CS["vessels:glass_bottle"][1], 		CS["vessels:glass_bottle"][2], 		CS["vessels:glass_bottle"][3]},
		{"vessels:drinking_glass", 		1, CS["vessels:drinking_glass"][1], 	CS["vessels:drinking_glass"][2], 	CS["vessels:drinking_glass"][3]},
		{"xpanes:pane_flat", 			1, CS["xpanes:pane_flat"][1], 			CS["xpanes:pane_flat"][2], 			CS["xpanes:pane_flat"][3]},
		{"cottages:glass_pane", 		1, CS["cottages:glass_pane"][1], 		CS["cottages:glass_pane"][2], 		CS["cottages:glass_pane"][3]},
		{"cottages:glass_pane_side",	1, CS["cottages:glass_pane_side"][1], 	CS["cottages:glass_pane_side"][2], 	CS["cottages:glass_pane_side"][3]},
	},
	goldsmith = {
		{split=1, min=1, max=3},
		{"default:goldblock", 		1, CS["default:goldblock"][1], 		CS["default:goldblock"][2], 		CS["default:goldblock"][3]},
		-- split --
		{"stairs:stair_goldblock", 	1, CS["stairs:stair_goldblock"][1], CS["stairs:stair_goldblock"][2], 	CS["stairs:stair_goldblock"][3]},
		{"stairs:slab_goldblock", 	1, CS["stairs:slab_goldblock"][1], 	CS["stairs:slab_goldblock"][2], 	CS["stairs:slab_goldblock"][3]},
	},
	guard = {
		{split=0, min=1, max=1},
		{"default:sword_steel", 2, CS["default:sword_steel"][2], CS["default:sword_steel"][3]},
	},
	horsekeeper = {
		{split=0, min=1, max=2},			
		{"farming:straw", 	1, CS["farming:straw"][1], 	CS["farming:straw"][2], 	CS["farming:straw"][3]}, 
		{"farming:string", 	1, CS["farming:string"][1], CS["farming:string"][2], 	CS["farming:string"][3]},
	},
	iceman = {
		{split=0, min=1, max=2},			
		{"stairs:slab_ice", 	1, CS["stairs:slab_ice"][1], 	CS["stairs:slab_ice"][2],	CS["stairs:slab_ice"][3]}, 
		{"stairs:stair_ice", 	1, CS["stairs:stair_ice"][1], 	CS["stairs:stair_ice"][2], 	CS["stairs:stair_ice"][3]},
	},
	innkeeper = {
		{split=1, min=2, max=3},
		{"beds:bed", 		1, CS["beds:bed"][1], 		CS["beds:bed"][2], 		CS["beds:bed"][3]}, 
		-- split --
		{"default:chest", 	1, CS["default:chest"][1], 	CS["default:chest"][2], CS["default:chest"][3]},
		{"default:paper", 	1, CS["default:paper"][1], 	CS["default:paper"][2], CS["default:paper"][3]}, 
		{"default:torch", 	1, CS["default:torch"][1], 	CS["default:torch"][2], CS["default:torch"][3]},
		{"default:book", 	1, CS["default:book"][1], 	CS["default:book"][2], 	CS["default:book"][3]}, 
	},
	librarian = {
		{split=1, min=1, max=2},
		{"default:book", 	1, CS["default:book"][1], 	CS["default:book"][2], 	CS["default:book"][3]}, 
		-- split --
		{"default:paper", 	1, CS["default:paper"][1], 	CS["default:paper"][2], CS["default:paper"][3]}, 
	},
	lumberjack = {
		{split=0, min=1, max=2},
		{"default:wood", 1, CS["default:wood"][1], CS["default:wood"][2], CS["default:wood"][3]}, 
		{"default:tree", 1, CS["default:tree"][1], CS["default:tree"][2], CS["default:tree"][3]}, 
	}, 
	miller = {
		{split=1, min=1, max=2},
		{"farming:flour", 1, CS["farming:flour"][1], CS["farming:flour"][2], CS["farming:flour"][3]}, 
		-- split --
		{"farming:straw", 1, CS["farming:straw"][1], CS["farming:straw"][2], CS["farming:straw"][3]}, 
	}, 
	
	priest = DEFAULT_GOODS,
	roofer = DEFAULT_GOODS,
	
	sawmill_owner = {
		{split=2, min=3, max=4},
		{"default:wood", 		1, CS["default:wood"][1], 		CS["default:wood"][2], 		CS["default:wood"][3]}, 
		{"default:tree", 		1, CS["default:tree"][1], 		CS["default:tree"][2], 		CS["default:tree"][3]}, 
		-- split --
		{"default:stick", 		1, CS["default:stick"][1], 		CS["default:stick"][2], 	CS["default:stick"][3]}, 
		{"stairs:slab_wood", 	1, CS["stairs:slab_wood"][1], 	CS["stairs:slab_wood"][2], 	CS["stairs:slab_wood"][3]},
	}, 
	saddler = DEFAULT_GOODS,
	seed_seller = DEFAULT_GOODS,
	
	shopkeeper = DEFAULT_GOODS,
	
	smith = {
		{split=1, min=3, max=4},
		{"default:sword_steel", 	1, CS["default:sword_steel"][1], 	CS["default:sword_steel"][2], 	CS["default:sword_steel"][3]},
		-- split --
		{"default:axe_steel", 		1, CS["default:axe_steel"][1], 		CS["default:axe_steel"][2], 	CS["default:axe_steel"][3]},
		{"default:pick_steel", 		1, CS["default:pick_steel"][1], 	CS["default:pick_steel"][2], 	CS["default:pick_steel"][3]},
		{"default:shovel_steel", 	1, CS["default:shovel_steel"][1], 	CS["default:shovel_steel"][2], 	CS["default:shovel_steel"][3]},
		{"farming:hoe_steel", 		1, CS["farming:hoe_steel"][1], 		CS["farming:hoe_steel"][2], 	CS["farming:hoe_steel"][3]},
	},
	
	stairmaker = DEFAULT_GOODS,
	stonemason = DEFAULT_GOODS,
	
	tinsmith = {
		{split=0, min=1, max=1},
		{"default:tin_ingot", 1, CS["default:tin_ingot"][1], CS["default:tin_ingot"][2], CS["default:tin_ingot"][3]},
	}, 
	
	toolmaker = DEFAULT_GOODS,
	
	trader = DEFAULT_GOODS,
	
	wheelwright = {
		{split=1, min=1, max=2},
		{"cottages:wagon_wheel", 	1, CS["cottages:wagon_wheel"][1], 	CS["cottages:wagon_wheel"][2], 	CS["cottages:wagon_wheel"][3]},
		-- split -- 
		{"default:stick", 			1, CS["default:stick"][1], 			CS["default:stick"][2], 		CS["default:stick"][3]}, 
	}, 
	wood_trader = {
		{split=1, min=3, max=4},
		{"default:stick", 		1, CS["default:stick"][1], 			CS["default:stick"][2], 		CS["default:stick"][3]}, 
		-- split --
		{"default:wood", 		1, CS["default:wood"][1], 			CS["default:wood"][2], 			CS["default:wood"][3]}, 
		{"stairs:slab_wood", 	1, CS["stairs:slab_wood"][1], 		CS["stairs:slab_wood"][2], 		CS["stairs:slab_wood"][3]}, 
		{"cottages:wood_flat", 	1, CS["cottages:wood_flat"][1], 	CS["cottages:wood_flat"][2], 	CS["cottages:wood_flat"][3]}, 
		{"cottages:hatch_wood", 1, CS["cottages:hatch_wood"][1], 	CS["cottages:hatch_wood"][2], 	CS["cottages:hatch_wood"][3]}, 
	}, 
	
	-- gives coins to players for items
	major = {
		{split=0, min=2, max=2},
		{"villagers:coins_gold", 	1, 	CS["villagers:coins_gold"][1], 	CS["villagers:coins_gold"][2], 	CS["villagers:coins_gold"][3]},
		{"villagers:coins", 		10, CS["villagers:coins"][1], 		CS["villagers:coins"][2], 		CS["villagers:coins"][3]},
	}, 
	ore_seller = {
		{split=0, min=1, max=3},
		{"villagers:coins", 		1, "default:coal_lump", math.random(40,60)},
		{"villagers:coins_gold", 	1, "default:iron_lump", math.random(40,60)},
		{"villagers:coins_gold", 	1, "default:copper_lump", math.random(40,60)},
		{"villagers:coins_gold", 	1, "default:tin_lump", math.random(40,60)},
		{"villagers:coins_gold", 	1, "default:gold_lump", math.random(40,60)},
		{"villagers:coins_gold", 	1, "default:mese_crystal_fragment", math.random(40,60)},
	}, 
	potterer = {
		{split=0, min=1, max=2},
		{"villagers:coins", 1, "default:clay_lump", math.random(40,60)},
		{"villagers:coins", 1, "default:clay", math.random(40,60)},
	}, 
	stoneminer = {
		{split=0, min=1, max=2},
		{"villagers:coins", 1, "default:stone", math.random(40,60)},
		{"villagers:coins", 1, "default:desert_stone", math.random(40,60)},
		{"villagers:coins", 1, "default:sandstone", math.random(40,60)},
		{"villagers:coins", 1, "default:desert_sandstone", math.random(40,60)},
		{"villagers:coins", 1, "default:silver_sandstone", math.random(40,60)},
	}, 
	servant = {
		{split=0, min=1, max=2},
		{"villagers:coins_gold", 1, "bucket:bucket_empty", math.random(40,60)},
		{"villagers:coins", 1, "default:torch", math.random(40,60)},
		{"villagers:coins", 1, "vessels:drinking_glass", math.random(40,60)},
		{"villagers:coins", 1, "default:ice", math.random(40,60)},
	}, 
	schoolteacher = {
		{split=0, min=1, max=2},
		{"villagers:coins", 1, "default:paper", math.random(40,60)},
		{"villagers:coins", 1, "default:book", math.random(40,60)},
	}, 
	
}


function villagers.getTradingFormspec(self, player_name)
	local log = false
	if log then 
		io.write("getFormspec() ") 
		io.write("for "..self.vName.." vSell:"..dump(self.vSell).."\n")
	end
		
	local item_count = #self.vSell
	
	local width_column = 1
	local width_item_count = 0.25
	local width_trade_button = 1.2
	local number_of_columns = 5
	local width_form = (width_column * number_of_columns) + (width_item_count * 2) + width_trade_button
	
	local height_exit_button = 1
	local height_row = 1
	local height_labels = 1
	local number_of_rows = item_count
	local height_form = height_exit_button + (height_row * number_of_rows) + height_labels
	
	-- GUI related stuff
	--local bg = "bgcolor[#080808BB;true]"
	local bg_image = "background[0,0;0,0;gui_formbg.png;true]"
	local y_offset = 0.4
	
	local formspec = 
		-- gui background attributes
		"size["..width_form..","..height_form.."]"..bg_image..
		
		-- header row
		"label[0,0;Item]"..
		"label["..1+(width_item_count)..",0;Stock]"..
		"label["..2+(width_item_count*2)+(0.2)..",0;Villager\nWants]"..
		"label["..3+(width_item_count*3)+(width_item_count)+(0.3)..",0;You\nHave]"
		--.."label["..4+(width_item_count*4)+(width_item_count*2)..",0;Action]"
	
	local player_inv = minetest.get_inventory({type="player", name=player_name})
	local inv_size = player_inv:get_size("main")
	
	-- construct rows for each item villager is selling
	for item_index = 1, item_count do
		
		local sell_data = self.vSell[item_index]
		local item_name = sell_data[1]
		local item_desc = sell_data[2]	-- NEW PARAMETER!
		local item_quant = sell_data[3]	-- NEW PARAMETER!
		local cost_name = sell_data[4]
		local cost_amount = sell_data[5]
		local item_stock = sell_data[6]
		if log then io.write("sell_data #"..item_index..": "..minetest.serialize(sell_data).." ") end
		
		local quantity_inv = 0
		for i=1, inv_size do
			local stack_name = player_inv:get_stack("main",i):get_name()
			local stack_count = player_inv:get_stack("main",i):get_count()
			if stack_name == cost_name then
				quantity_inv = quantity_inv + stack_count
			end
		end
		
		formspec = formspec..
			-- items
			"item_image[0,"..item_index..";1,1;"..item_name.."]".. -- item being sold
			"label["..1.2+(width_item_count)..","..item_index+y_offset..";"..item_stock.."]".. -- how many in stock
			"item_image["..2+(width_item_count*2)..","..item_index..";1,1;"..cost_name.."]".. -- item villager wants
			"label["..2.8+(width_item_count*2)..","..item_index+y_offset..";x"..cost_amount.."]".. -- want how many
			"item_image["..3+(width_item_count*3)+(width_item_count)..","..item_index..";1,1;"..cost_name.."]".. -- what player has
			"label["..3.8+(width_item_count*3)+(width_item_count)..","..item_index+y_offset..";x"..quantity_inv.."]" -- how many player has
			
		local button_name = self.vName.."|"..item_name.."|"..cost_amount.."|"..item_stock.."|"..cost_name.."|"..quantity_inv.."|"..item_index
		if (item_stock > 0) and (quantity_inv >= cost_amount) then 
			formspec = formspec.."button["..4+(width_item_count*4)+(width_item_count*2)..
				","..item_index+(0.2)..";"..width_trade_button..",0.70;"..button_name..";trade]" 
		end
		
	end
		
	formspec = formspec.. "button_exit[2.1,"..(item_count+1.2)..";2.5,"..height_exit_button..";"..self.vID..";I'm Done!]"
		
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



function villagers.getTradeInventory(title, plot, bed, errors)
	local log = false
	if log then 
		io.write("\n## setTradeInv for "..string.upper(title).." @ plot#"..plot_num.."bed#"..bed.." ")
	end
	
	local new_trade_inventory = {}
		
	local source_trade_items = villagers.GOODS[title]
	if source_trade_items == nil then
		if log then io.write("NO-ITEMS-TO-SELL ") end
		return "none"
	end
	
	if log then io.write("\n      ## Villager trader! ## ") end
	
	local all_items = villagers.copytable(source_trade_items)
	
	local selection_parameters = table.remove(all_items, 1)
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
		if log then io.write(" .. no more mandatory items.\n") end
	end
	
	if log then io.write("  item_count="..item_count.." remainingCountOf_allItemsTable="..#all_items.." ") end
	
	while( item_count > 0 ) do
		local index_to_pop = math.random(#all_items)
		local popped_item = table.remove(all_items, index_to_pop)
		
		-- error handling
		if popped_item[1] == "invalid_item" then
			if log then 
				io.write(" #ERROR getTradeItem #"..item_count.." - invalid item name '"..popped_item[2].."'.") 
			end
			local error_message = "getTradeInventory(): Error trade item #"..item_count.." "
				"unknown item_name='"..popped_item[2].."' for villager @ plot#"..plot.." bed#"..bed
			table.insert(errors, error_message)
			popped_item = {"default:dirt", "Dirt [error]", 1, "villagers:coins", 1, 1}
		elseif popped_item[1] == "no_description" then
			if log then 
				io.write(" #ERROR getTradeItem #"..item_count.." - no item desc for '"..popped_item[2].."'.") 
			end
			local error_message = "getTradeInventory(): Error trade item #"..item_count.." "
				"no desc item_name='"..popped_item[2].."' for villager @ plot#"..plot.." bed#"..bed
			table.insert(errors, error_message)
			popped_item = {"default:dirt", "Dirt [error]", 1, "villagers:coins", 1, 1}
		elseif popped_item[1] == "naming_error" then
			if log then 
				io.write(" #ERROR getTradeItem #"..item_count.." - '"..popped_item[2].."' not found in GOODS_DATA.") 
			end
			local error_message = "getTradeInventory(): Error trade item #"..item_count.." "
				"not in GOODS_DATA item_name='"..popped_item[2].."' for villager @ plot#"..plot.." bed#"..bed
			table.insert(errors, error_message)
			popped_item = {"default:dirt", "Dirt [error]", 1, "villagers:coins", 1, 1}
		elseif popped_item == nil then
			if log then 
				io.write(" #ERROR getTradeItem #"..item_count..", it is NIL.") 
			end
			local error_message = "getTradeInventory(): Error trade item #"..item_count.." "
				"is NIL for villager @ plot#"..plot.." bed#"..bed
			table.insert(errors, error_message)
			popped_item = {"default:dirt", "Dirt [error]", 1, "villagers:coins", 1, 1}
		end
		
		if log then  io.write("\n  adding: "..minetest.serialize(popped_item).." ") end
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
			
			-- player had initiated tradeing while villager was
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
