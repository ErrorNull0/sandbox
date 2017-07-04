--[[
NORE:
wheat_field, cotton_field, well, fountain, house_with_garden_1_0
church_1_0, tower_1_0, forge_1_0, library_1_0, inn_1_0, pub_1_0
LOG CABIN:
logcabinpub1, logcabinpub2, logcabinpub3
MEDIEVAL:
church_1, forge_1, mill_1, watermill_1, farm_full_1, farm_full_2,
farm_full_3, farm_full_4, farm_full_5, farm_full_6, farm_tiny_1,
farm_tiny_2, farm_tiny_3, farm_tiny_4, farm_tiny_5, farm_tiny_6,
farm_tiny_7, taverne_1, taverne_2, taverne_3, taverne_4, well_1,
well_2, well_3, well_4, well_5, well_6, well_7, well_8, wagon_1,
wagon_2, wagon_3, wagon_4, wagon_5, wagon_6, wagon_7, wagon_8,
wagon_9, wagon_10, wagon_11, wagon_12, shed_1, shed_2, shed_3,
shed_4, shed_5, shed_6, shed_7, shed_8, shed_9, shed_10, shed_11,
shed_12, baking_house_1, baking_house_2, baking_house_3, baking_house_4,
cow_shed_1_270, shed_with_forge_v2_1_0
CHARACHAOL:
charachoal_hill
LUMBERJACK:
lumberjack_stable, lumberjack_pub_1, lumberjack_church_1, lumberjack_hotel_1,
lumberjack_shop_1, lumberjack_sawmill_1
CLAYTRADER:
clay_pit_1, clay_pit_2, clay_pit_3, clay_pit_4, clay_pit_5
TAOKI:
default_town_farm (field), default_town_tower, default_town_well, default_town_fountain
TENT:
tent_open_3 (shop), tent_open_big_1 (pub), tent_open_big_2 (church)
TOWER:
hochsitz_1, hochsitz_2, hochsitz_3, hochsitz_4
CHATEAU:
chateau_without_garden
VILLAGE SANDCITY:
sandcity_ap_tower_1_1_270, sandcity_ap_tower_2_1_270, sandcity_ap_tower_3_1_270
sandcity_ap_tower_4_1_270, sandcity_ap_tower_5_1_270, sandcity_ap_tower_6_1_270
sandcity_ap_tower_7_1_270
VILLAGE GAMBIT MOD:
gambit_church_1_0_180, gambit_forge_1_2_270, gambit_fountain_1_1_90, 
gambit_library_hotel_0_180, gambit_pub_1_0_0, gambit_shed_open_chests_2_0, 
gambit_shop_0_90, gambit_shop_large_0_0, gambit_stable_1_2_90, 
gambit_tower_1_0_270
VILLAGE TOWNTEST/CORNERNOTE:
towntest_cornernote_tower_1_90, towntest_cornernote_turret_1_90 (tower), 
towntest_kddekadenz_barn1_1_90 (shed), towntest_kddekadenz_barn2_1_90 (shed),
towntest_kddekadenz_factory_1_90 (shed), towntest_kddekadenz_windmill_0_90, 
towntest_Nanuk_chapel_1_180, towntest_Nanuk_lavabeacon_0_90 (tower), 
towntest_Nanuk_well_0_90
<<VILLAGE TYPES>>
5-20 tent
10-15 charachoal
10-20 claytrader
10-30 lumberjack
15-30 log cabin
20-40 nore
25-60 medieval
30-60 gambit 
30-70 taoki
50-60 cornernote 
5-60 sandcity
-- incorporate restock times, and items that must be sold, and minimim
numbers of items to be sold
<<NOTES>>
If any of the schema types are unavailable, then unsupported village mods installed
and simply retern special "none" string.
--]]

local STOCK = {
	apple = 99, bread = 99, string = 99, mushroom_red = 99, mushroom_brown = 99,
	paper = 99, book = 99, rose = 99, tulip = 99, dandelion_yellow = 99,
	geranium = 99, viola = 99, dandelion_white = 99, dirt = 99, sand = 99, 
	gravel = 99, clay = 99, clay_lump = 99, tree = 99, wood = 99, stick = 99,
	boat = 99, torch = 99, shovel_wood = 99, pick_wood = 99, sword_wood = 99,
	axe_wood = 99, sign_wall_wood = 99, slab_wood = 99, stair_wood = 99,
	door_wood_a = 99, trapdoor = 99, fence_wood = 99, ladder_wood = 99,
	bed = 99, chest = 99, drinking_glass = 99, straw = 99, slab_straw = 99,
	glass_bottle = 99, wheat = 99, cotton = 99, string = 99, sword_steel = 50,
	axe_steel = 50, pick_steel = 50, shovel_steel = 70, hoe_steel = 70,
	bucket_empty = 70, iron_lump = 50, steel_ingot = 50, gunpowder = 5,
	tnt = 5, skeleton_key = 5, gold_lump = 5, copper_lump = 5, screwdriver = 5,
	mese_crystal_fragment = 5, diamond = 5,
}

local COST = {
	apple = 1, bread = 3, 
	
	mushroom_red = 5, 	mushroom_brown = 5,
	rose = 5, tulip = 5,  dandelion_yellow = 5, geranium = 5,
	viola = 5, dandelion_white = 5, 
	
	papyrus = 2, paper = 6, book = 20, 
	
	cotton = 3, string = 3, 
	wheat = 2, straw = 5, slab_straw = 3,
	
	dirt = 1,  gravel = 2, wool = 5,
	sand = 2, glass = 4, glass_bottle = 1, drinking_glass = 8, 
	clay_lump = 5, clay = 22, clay_brick = 23, brick = 100,
	
	cobble = 3, stone = 6, 
	
	coal_lump = 20, coal_block = 190,
	gunpowder = 25, tnt = 150, 
	
	stick = 1, slab_wood = 3, wood = 5, tree = 23, 
	stair_wood = 7, trapdoor = 16, door_wood = 33, 
	torch = 8, sign_wall_wood = 11, 
	bed = 34, boat = 28, chest = 44, 
 
	ladder_wood = 1, fence_wood = 24, gate_wood = 16,
	
	iron_lump = 80,				steel_ingot = 100, 
	bronze_lump = 160, 			bronze_ingot = 180, 
	gold_lump = 280, 			gold_ingot = 300,  
	mese_crystal_fragment = 70, mese_crystal = 550,
								diamond = 995,
								
	screwdriver = 105, locked_chest = 150, skeleton_key = 190, bucket_empty = 280, 
	door_steel = 610,
	
	shovel_wood = 8, 	shovel_stone = 9,	shovel_steel = 105,	shovel_bronze = 185,
	pick_wood = 16, 	pick_stone = 21, 	pick_steel = 305,	pick_bronze = 560,
	sword_wood = 12, 	sword_stone = 14,	sword_steel = 205,	sword_bronze = 365,
	axe_wood = 18, 		axe_stone = 21,  	axe_steel = 305,  	axe_bronze = 565, 
	hoe_wood = 13, 		hoe_stone = 15,		hoe_steel = 205,	hoe_bronze = 365,
	
	
}

local BUY_ITEMS = {
	plants = { -- desired by well or fountain villagers
		{split=0, min=1, max=2},
		{"villagers:coins 99", "default:sapling 1"},
		{"villagers:coins 99", "default:junglesapling 1"},
		{"villagers:coins 99", "default:aspen_sapling 1"},
		{"villagers:coins 99", "default:acacia_sapling 1"},
		{"villagers:coins 99", "default:pine_sapling 1"},
		{"villagers:coins 99", "default:bush_sapling 1"},
		{"villagers:coins 99", "default:bush_stem 1"},
		{"villagers:coins 99", "default:dry_shrub 1"},
		{"villagers:coins 99", "farming:seed_wheat 1"},
		{"villagers:coins 99", "farming:seed_cotton 1"},
		{"villagers:coins 99", "default:coral_skeleton 1"},
		{"villagers:coins 99", "default:flowers:waterlily 1"},
	},
	earth = { -- desired by some claytraders
		{split=0, min=1, max=2},
		{"villagers:coins 99", "default:dirt 6"},
		{"villagers:coins 99", "default:sand 4"},
		{"villagers:coins 99", "default:desert_sand 4"},
		{"villagers:coins 99", "default:silver_sand 4"},
		{"villagers:coins 99", "default:gravel 4"},
		{"villagers:coins 99", "default:cobble 3"},
		{"villagers:coins 99", "default:snow 4"},
		{"villagers:coins 99", "default:snowblock 4"},
		{"villagers:coins 99", "default:ice 4"},
	},
	flowers = { -- desired by well or fountain villagers
		{split=0, min=1, max=2},
		{"villagers:coins 99", "default:rose 1"},
		{"villagers:coins 99", "default:tulip 1"},
		{"villagers:coins 99", "default:dandelion_yellow 1"},
		{"villagers:coins 99", "default:geranium 1"},
		{"villagers:coins 99", "default:viola 1"},
		{"villagers:coins 99", "default:dandelion_white 1"},
		{"villagers:coins 99", "default:mushroom_red 1"},
		{"villagers:coins 99", "default:mushroom_brown 1"},
	},
	quest = { -- desired by villagers in townhalls
		{"default:mese_crystal_fragment 5", "default:coal_lump 90"},
		{"default:bronze_ingot 5", "default:papyrus 50"},
		{"default:gold_ingot 5", "tnt:tnt 50"},
		{"default:mese_crystal 5", "default:tin_ingot 90"},
		{"default:diamond 5", "default:flint 90"},
	}
}


local MYSTERY_MERCHANT = {
	{split=0, min=1, max=2},
	{"tnt:gunpowder "..STOCK.gunpowder, "villagers:coins "..COST.gunpowder}, 
	{"tnt:tnt "..STOCK.tnt, "villagers:coins "..COST.tnt}, 
	{"default:skeleton_key "..STOCK.skeleton_key, "villagers:coins "..COST.skeleton_key}, 
	{"default:gold_lump "..STOCK.gold_lump, "villagers:coins "..COST.gold_lump}, 
	{"default:copper_lump "..STOCK.copper_lump, "villagers:coins "..COST.copper_lump}, 
	{"screwdriver:screwdriver "..STOCK.screwdriver, "villagers:coins "..COST.screwdriver}, 
	{"default:mese_crystal_fragment "..STOCK.mese_crystal_fragment, "villagers:coins "..COST.mese_crystal_fragment}, 
	{"default:diamond "..STOCK.diamond, "villagers:coins "..COST.diamond}, 
	--{"default:iron_lump "..STOCK.iron_lump, "villagers:coins "..COST.iron_lump}, 
	--{"default:copper_lump "..STOCK.copper_lump, "villagers:coins "..COST.copper_lump}, 
	--{"default:tin_lump "..STOCK.tin_lump, "villagers:coins "..COST.tin_lump}, 
}



--[[
	A random number of items between 'min' and 'max' are chosen from
	the corresponding table 'villagers.ITEMS.[building_type].[scm_type].
	Items from index = 1 to index = 'split' in the table are chosen
	first as priority.
--]]
villagers.ITEMS = {
	tent = {
		tent_open_3 = {  --shop
			{split=4, min=3, max=6},
			{"default:torch "..STOCK.torch, "villagers:coins "..COST.torch},
			{"default:apple "..STOCK.apple, "villagers:coins "..COST.apple}, 
			{"flowers:mushroom_red "..STOCK.mushroom_red, "villagers:coins "..COST.mushroom_red},
			{"flowers:mushroom_brown "..STOCK.mushroom_brown, "villagers:coins "..COST.mushroom_brown},
			-- tier split --
			{"farming:string "..STOCK.string, "villagers:coins "..COST.string},
			{"farming:cotton "..STOCK.cotton, "villagers:coins "..COST.cotton},
			{"flowers:rose "..STOCK.rose, "villagers:coins "..COST.rose},
			{"flowers:tulip "..STOCK.tulip, "villagers:coins "..COST.tulip},
			{"flowers:dandelion_yellow "..STOCK.dandelion_yellow, "villagers:coins "..COST.dandelion_yellow},
			{"flowers:geranium "..STOCK.geranium, "villagers:coins "..COST.geranium},
			{"flowers:viola "..STOCK.viola, "villagers:coins "..COST.viola},
			{"flowers:dandelion_white "..STOCK.dandelion_white, "villagers:coins "..COST.dandelion_white}
		},
		tent_open_big_1 = { --pub
			{split=1, min=1, max=3},
			{"vessels:drinking_glass "..STOCK.drinking_glass, "villagers:coins "..COST.drinking_glass},
			-- split --
			{"default:apple "..STOCK.apple, "villagers:coins "..COST.apple}, 
			{"farming:bread "..STOCK.bread, "villagers:coins "..COST.bread}, 
		},
		tent_open_big_2 = { --church
			{split=2, min=2, max=3},
			{"farming:bread "..STOCK.bread, "villagers:coins "..COST.bread}, 
			{"default:book "..STOCK.book, "villagers:coins "..COST.book},
			-- tier split --
			{"vessels:glass_bottle "..STOCK.glass_bottle, "villagers:coins "..COST.glass_bottle},
			{"default:paper "..STOCK.paper, "villagers:coins "..COST.paper},
		}
		tent_open_big_3 = { --townhall
			{split=0, min=1, max=1},
			{"default:steel_ingot 3", "default:clay_lump 30"},
			{"default:steel_ingot 3", "group:wool 30"},
			{"default:steel_ingot 3", "farming:cotton 50"}
		}
	},
	charachoal = {
		charachoal_hill = {
			{split=1, min=1, max=3},
			{"default:sand "..STOCK.sand, "villagers:coins "..COST.sand},
			-- tier split --
			{"default:dirt "..STOCK.dirt, "villagers:coins "..COST.dirt},
			{"default:gravel "..STOCK.gravel, "villagers:coins "..COST.gravel}
		}
		charachoal_hut = { -- ensure only %25 of these villagers will desire this
			{split=0, min=1, max=1},
			{"default:steel_ingot 3", "default:clay_lump 30"},
			{"default:steel_ingot 3", "default:coal_lump 20"},
			{"default:steel_ingot 3", "group:tree 30"}
		}
	},
	claytrader = {
		clay_pit_1 = {
			{split=0, min=1, max=2},
			{"default:clay "..STOCK.clay, "villagers:coins "..COST.clay},
			{"default:clay_lump "..STOCK.clay_lump, "villagers:coins "..COST.clay_lump}
		}, 
		clay_pit_2 = {
			{"default:clay "..STOCK.clay, "villagers:coins "..COST.clay},
			{"default:clay_lump "..STOCK.clay_lump, "villagers:coins "..COST.clay_lump}
		}, 
		clay_pit_3 = {
			{"default:clay "..STOCK.clay, "villagers:coins "..COST.clay},
			{"default:clay_lump "..STOCK.clay_lump, "villagers:coins "..COST.clay_lump}
		}, 
		clay_pit_4 = {
			{"default:clay "..STOCK.clay, "villagers:coins "..COST.clay},
			{"default:clay_lump "..STOCK.clay_lump, "villagers:coins "..COST.clay_lump}
		}, 
		clay_pit_5 = {
			{"default:clay "..STOCK.clay, "villagers:coins "..COST.clay},
			{"default:clay_lump "..STOCK.clay_lump, "villagers:coins "..COST.clay_lump}
		}, 
		trader_clay_5 = { -- ensure only %25 of these villagers will desire this
			{split=0, min=1, max=1},
			{"default:bronze_ingot 3", "default:clay_lump 50"},
			{"default:bronze_ingot 3", "default:coal_lump 30"},
			{"default:bronze_ingot 3", "group:tree 30"}
		}
	},
	lumberjack = {
		lumberjack_stable = {
			{split=0, min=1, max=2},
			{"farming:straw "..STOCK.straw, "villagers:coins "..COST.straw}, 
			{"stairs:slab_straw "..STOCK.slab_straw, "villagers:coins "..COST.slab_straw}, 
		}, 
		lumberjack_pub_1 = {
			{split=1, min=1, max=3},
			{"vessels:drinking_glass "..STOCK.drinking_glass, "villagers:coins "..COST.drinking_glass},
			-- split --
			{"default:apple "..STOCK.apple, "villagers:coins "..COST.apple}, 
			{"farming:bread "..STOCK.bread, "villagers:coins "..COST.bread}, 
		}, 
		lumberjack_church_1 = {
			{split=2, min=2, max=3},
			{"default:book "..STOCK.book, "villagers:coins "..COST.book},
			{"farming:bread "..STOCK.bread, "villagers:coins "..COST.bread},
			-- split -- 
			{"vessels:glass_bottle "..STOCK.glass_bottle, "villagers:coins "..COST.glass_bottle},
			{"default:paper "..STOCK.paper, "villagers:coins "..COST.paper},
		}, 
		lumberjack_hotel_1 = {
			{split=1, min=2, max=3},
			{"beds:bed "..STOCK.bed, "villagers:coins "..COST.bed},
			-- split --
			{"default:chest "..STOCK.chest, "villagers:coins "..COST.chest},
			{"default:paper "..STOCK.paper, "villagers:coins "..COST.paper},
			{"default:torch "..STOCK.torch, "villagers:coins "..COST.torch},
			{"default:book "..STOCK.book, "villagers:coins "..COST.book},
		},
		lumberjack_shop_1 = {
			{split=2, min=6, max=10},
			{"default:wood "..STOCK.wood, "villagers:coins "..COST.wood},
			{"default:tree "..STOCK.tree, "villagers:coins "..COST.tree},
			-- split --
			{"default:stick "..STOCK.stick, "villagers:coins "..COST.stick},
			{"boats:boat "..STOCK.boat, "villagers:coins "..COST.boat},
			{"default:shovel_wood "..STOCK.shovel_wood, "villagers:coins "..COST.shovel_wood},
			{"default:pick_wood "..STOCK.pick_wood, "villagers:coins "..COST.pick_wood},
			{"default:sword_wood "..STOCK.sword_wood, "villagers:coins "..COST.sword_wood},
			{"default:axe_wood "..STOCK.axe_wood, "villagers:coins "..COST.axe_wood},
			{"default:sign_wall_wood "..STOCK.sign_wall_wood, "villagers:coins "..COST.sign_wall_wood},
			{"stairs:slab_wood "..STOCK.slab_wood, "villagers:coins "..COST.slab_wood},
			{"stairs:stair_wood "..STOCK.stair_wood, "villagers:coins "..COST.stair_wood},
			{"doors:door_wood_a "..STOCK.door_wood_a, "villagers:coins "..COST.door_wood_a},
			{"doors:trapdoor "..STOCK.trapdoor, "villagers:coins "..COST.trapdoor},
			{"default:fence_wood "..STOCK.fence_wood, "villagers:coins "..COST.fence_wood},
			{"default:ladder_wood "..STOCK.ladder_wood, "villagers:coins "..COST.ladder_wood},
		}, 
		lumberjack_sawmill_1 = {
			{split=0, min=2, max=2},
			{"default:wood "..STOCK.wood, "villagers:coins "..COST.wood},
			{"default:tree "..STOCK.tree, "villagers:coins "..COST.tree},
		}
	},
	logcabin = {
		logcabinpub1 = {
			{split=1, min=2, max=3},
			{"vessels:drinking_glass "..STOCK.drinking_glass, "villagers:coins "..COST.drinking_glass},
			-- split --
			{"default:apple "..STOCK.apple, "villagers:coins "..COST.apple}, 
			{"farming:bread "..STOCK.bread, "villagers:coins "..COST.bread}, 
			
		}, 
		logcabinpub2 = {
			{split=1, min=2, max=3},
			{"vessels:drinking_glass "..STOCK.drinking_glass, "villagers:coins "..COST.drinking_glass},
			-- split --
			{"default:apple "..STOCK.apple, "villagers:coins "..COST.apple}, 
			{"farming:bread "..STOCK.bread, "villagers:coins "..COST.bread}, 
		}, 
		logcabinpub3 = {
			{split=1, min=2, max=3},
			{"vessels:drinking_glass "..STOCK.drinking_glass, "villagers:coins "..COST.drinking_glass},
			-- split --
			{"default:apple "..STOCK.apple, "villagers:coins "..COST.apple}, 
			{"farming:bread "..STOCK.bread, "villagers:coins "..COST.bread}, 
		}
	},
	nore = {
		wheat_field = {
			{split=1, min=1, max=2},
			{"farming:straw "..STOCK.straw, "villagers:coins "..COST.straw}, 
			-- split --
			{"farming:wheat "..STOCK.wheat, "villagers:coins "..COST.wheat}, 
		}, 
		cotton_field = {
			{split=1, min=1, max=2},
			{"farming:cotton "..STOCK.cotton, "villagers:cotton "..COST.cotton}, 
			-- split --
			{"farming:string "..STOCK.string, "villagers:string "..COST.string}, 
		}, 
		well = STREETMERCHANT.well, 
		fountain =  = {	
			-- ensure only %25 of these villagers will desire this
			{split=0, min=1, max=1},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"}
		},
		house_with_garden_1_0 = {
			{split=4, min=4, max=8},
			{"default:apple "..STOCK.apple, "villagers:coins "..COST.apple},
			{"farming:bread "..STOCK.bread, "villagers:coins "..COST.bread},
			{"farming:wheat "..STOCK.wheat, "villagers:coins "..COST.wheat}, 
			{"farming:cotton "..STOCK.cotton, "villagers:cotton "..COST.cotton}, 
			-- split --
			{"flowers:mushroom_red "..STOCK.mushroom_red, "villagers:coins "..COST.mushroom_red},
			{"flowers:mushroom_brown "..STOCK.mushroom_brown, "villagers:coins "..COST.mushroom_brown}, 						
			{"flowers:rose "..STOCK.rose, "villagers:coins "..COST.rose},
			{"flowers:tulip "..STOCK.tulip, "villagers:coins "..COST.tulip},
			{"flowers:dandelion_yellow "..STOCK.dandelion_yellow, "villagers:coins "..COST.dandelion_yellow},
			{"flowers:geranium "..STOCK.geranium, "villagers:coins "..COST.geranium},
			{"flowers:viola "..STOCK.viola, "villagers:coins "..COST.viola},
			{"flowers:dandelion_white "..STOCK.dandelion_white, "villagers:coins "..COST.dandelion_white}
		},
		church_1_0 = {
			{split=2, min=2, max=3},
			{"farming:bread "..STOCK.bread, "villagers:coins "..COST.bread}, 
			{"default:book "..STOCK.book, "villagers:coins "..COST.book},
			-- tier split --
			{"vessels:glass_bottle "..STOCK.glass_bottle, "villagers:coins "..COST.glass_bottle},
			{"default:paper "..STOCK.paper, "villagers:coins "..COST.paper},
		}, 
		tower_1_0 = {
			{split=0, min=1, max=1},
			{"default:stick "..STOCK.stick, "villagers:coins "..COST.stick},
		}, 
		forge_1_0 = {
			{split=1, min=3, max=6},
			{"default:sword_steel "..STOCK.sword_steel, "villagers:coins "..COST.sword_steel},
			-- split --
			{"default:axe_steel "..STOCK.axe_steel, "villagers:coins "..COST.axe_steel},
			{"default:pick_steel "..STOCK.pick_steel, "villagers:coins "..COST.pick_steel},
			{"default:shovel_steel "..STOCK.shovel_steel, "villagers:coins "..COST.shovel_steel},
			{"default:hoe_steel "..STOCK.hoe_steel, "villagers:coins "..COST.hoe_steel},
			{"bucket:bucket_empty "..STOCK.bucket_empty, "villagers:coins "..COST.bucket_empty},
			{"default:iron_lump "..STOCK.iron_lump, "villagers:coins "..COST.iron_lump},
			{"default:steel_ingot "..STOCK.steel_ingot, "villagers:coins "..COST.steel_ingot},
			
		}, 
		library_1_0 = {
			{split=1, min=1, max=2},
			{"default:book "..STOCK.book, "villagers:coins "..COST.book},
			-- split --
			{"default:paper "..STOCK.paper, "villagers:coins "..COST.paper},
			{"default:bookshelf "..STOCK.bookshelf, "villagers:coins "..COST.bookshelf},
		}, 
		inn_1_0 = { 
			{split=1, min=2, max=3},
			{"beds:bed "..STOCK.bed, "villagers:coins "..COST.bed},
			-- split --
			{"default:chest "..STOCK.chest, "villagers:coins "..COST.chest},
			{"default:torch "..STOCK.torch, "villagers:coins "..COST.torch},
			{"default:paper "..STOCK.paper, "villagers:coins "..COST.paper},
			{"default:book "..STOCK.book, "villagers:coins "..COST.book},
		}, 
		pub_1_0 = {
			{split=1, min=1, max=3},
			{"vessels:drinking_glass "..STOCK.drinking_glass, "villagers:coins "..COST.drinking_glass},
			-- split --
			{"default:apple "..STOCK.apple, "villagers:coins "..COST.apple}, 
			{"farming:bread "..STOCK.bread, "villagers:coins "..COST.bread}, 
		}
	},
	medieval = {
		church_1 = {}, 
		forge_1 = {}, 
		mill_1 = {}, 
		watermill_1 = {}, 
		farm_full_1 = {}, 
		farm_full_2 = {},
		farm_full_3 = {}, 
		farm_full_4 = {}, 
		farm_full_5 = {}, 
		farm_full_6 = {}, 
		farm_tiny_1 = {},
		farm_tiny_2 = {}, 
		farm_tiny_3 = {}, 
		farm_tiny_4 = {}, 
		farm_tiny_5 = {}, 
		farm_tiny_6 = {},
		farm_tiny_7 = {}, 
		taverne_1 = {}, 
		taverne_2 = {}, 
		taverne_3 = {}, 
		taverne_4 = {}, 
		well_1 = ALLITEMS.tier1,
		well_2 = ALLITEMS.tier1,
		well_3 = ALLITEMS.tier1,
		well_4 = ALLITEMS.tier1,
		well_5 = ALLITEMS.tier1,
		well_6 = ALLITEMS.tier1,
		well_7 = ALLITEMS.tier1,
		well_8 = ALLITEMS.tier1,
		wagon_1 = {},
		wagon_2 = {}, 
		wagon_3 = {}, 
		wagon_4 = {}, 
		wagon_5 = {}, 
		wagon_6 = {}, 
		wagon_7 = {}, 
		wagon_8 = {},
		wagon_9 = {}, 
		wagon_10 = {}, 
		wagon_11 = {}, 
		wagon_12 = {}, 
		shed_1 = {}, 
		shed_2 = {}, 
		shed_3 = {},
		shed_4 = {}, 
		shed_5 = {}, 
		shed_6 = {}, 
		shed_7 = {}, 
		shed_8 = {}, 
		shed_9 = {}, 
		shed_10 = {}, 
		shed_11 = {},
		shed_12 = {}, 
		baking_house_1 = {}, 
		baking_house_2 = {}, 
		baking_house_3 = {}, 
		baking_house_4 = {},
		cow_shed_1_270 = {}, 
		shed_with_forge_v2_1_0 = {}
		tree_place_1 = {	
			-- ensure only %25 of these villagers will desire this
			{split=0, min=1, max=1},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"}
		},
		tree_place_2 = {	
			-- ensure only %25 of these villagers will desire this
			{split=0, min=1, max=1},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"}
		},
		tree_place_3 = {	
			-- ensure only %25 of these villagers will desire this
			{split=0, min=1, max=1},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"}
		},
		tree_place_4 = {	
			-- ensure only %25 of these villagers will desire this
			{split=0, min=1, max=1},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"}
		},
		tree_place_5 = {	
			-- ensure only %25 of these villagers will desire this
			{split=0, min=1, max=1},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"}
		},
		tree_place_6 = {	
			-- ensure only %25 of these villagers will desire this
			{split=0, min=1, max=1},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"}
		},
		tree_place_7 = {	
			-- ensure only %25 of these villagers will desire this
			{split=0, min=1, max=1},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"}
		},
		tree_place_8 = {	
			-- ensure only %25 of these villagers will desire this
			{split=0, min=1, max=1},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"}
		},
		tree_place_9 = {	
			-- ensure only %25 of these villagers will desire this
			{split=0, min=1, max=1},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"}
		},
		tree_place_10 = {	
			-- ensure only %25 of these villagers will desire this
			{split=0, min=1, max=1},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"},
			{"default:gold_ingot 3", "xxx:xxx xx"}
		},
		--field_1
		--field_2
		--field_3
		--field_4
	},
	gambit = {
		gambit_church_1_0_180 = {},
		gambit_forge_1_2_270 = {},
		gambit_fountain_1_1_90 = {	
			-- ensure only %25 of these villagers will desire this
			{split=0, min=1, max=1},
			{"default:mese_crystal 3", "xxx:xxx xx"},
			{"default:mese_crystal 3", "xxx:xxx xx"},
			{"default:mese_crystal 3", "xxx:xxx xx"}
		},
		gambit_library_hotel_0_180 = {},
		gambit_pub_1_0_0 = {},
		gambit_shed_open_chests_2_0 = {},
		gambit_shop_0_90 = {},
		gambit_shop_large_0_0 = {},
		gambit_stable_1_2_90 = {}
		--gambit_field_1_1_90
		--gambit_tower_1_0_270
		
		
		
		
	},
	taoki = {
		default_town_farm = {}, -- field
		default_town_tower = {},
		default_town_well = {},
		default_town_fountain = {	
			-- ensure only %25 of these villagers will desire this
			{split=0, min=1, max=1},
			{"default:mese_crystal 3", "xxx:xxx xx"},
			{"default:mese_crystal 3", "xxx:xxx xx"},
			{"default:mese_crystal 3", "xxx:xxx xx"}
		}
	},
	cornernote = {

		towntest_kddekadenz_barn1_1_90 = {}, --shed
		towntest_kddekadenz_barn2_1_90 = {}, --shed
		towntest_kddekadenz_factory_1_90 = {}, --shed
		towntest_kddekadenz_windmill_0_90 = {},
		towntest_Nanuk_chapel_1_180 = {},
		towntest_Nanuk_well_0_90 = {}
		--towntest_cornernote_tower_1_90 --tower
		--towntest_cornernote_turret_1_90 --tower
		--towntest_Nanuk_lavabeacon_0_90 --tower
		towntest_kddekadenz_castle_3_90
		towntest_cornernote_fortress_4_0 = { 
			-- ensure only %25 of these villagers will desire this
			{split=0, min=1, max=1},
			{"default:diamond 3", "xxx:xxx xx"},
			{"default:diamond 3", "xxx:xxx xx"},
			{"default:diamond 3", "xxx:xxx xx"}
		}
	},
	sandcity = {
		sandcity_ap_tower_1_1_270 = {}, --tower
		sandcity_ap_tower_2_1_270 = {}, --tower
		sandcity_ap_tower_3_1_270 = {}, --tower
		sandcity_ap_tower_4_1_270 = {}, --tower
		sandcity_ap_tower_5_1_270 = {}, --tower
		sandcity_ap_tower_6_1_270 = {}, --tower
		sandcity_ap_tower_7_1_270 = {} --tower
	}
	
}
