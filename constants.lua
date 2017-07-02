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



<<NOTES>>
If any of the schema types are unavailable, then unsupported village mods installed
and simply retern special "none" string.
--]]

villagers.ITEMS = {
	tent = {
		tent_open_3 = {}, --shop
		tent_open_big_1 = {}, --pub
		tent_open_big_2 = {} --church
	},
	charachoal = {
		charachoal_hill = {}
	},
	claytrader = {
		clay_pit_1 = {}, 
		clay_pit_2 = {}, 
		clay_pit_3 = {}, 
		clay_pit_4 = {}, 
		clay_pit_5 = {}
	},
	lumberjack = {
		lumberjack_stable = {}, 
		lumberjack_pub_1 = {}, 
		lumberjack_church_1 = {}, 
		lumberjack_hotel_1 = {},
		lumberjack_shop_1 = {}, 
		lumberjack_sawmill_1 = {}
	},
	logcabin = {
		logcabinpub1 = {}, 
		logcabinpub2 = {}, 
		logcabinpub3 = {}
	},
	nore = {
		wheat_field = {}, 
		cotton_field = {}, 
		well = {}, 
		fountain = {}, 
		house_with_garden_1_0 = {},
		church_1_0 = {}, 
		tower_1_0 = {}, 
		forge_1_0 = {}, 
		library_1_0 = {}, 
		inn_1_0 = {}, 
		pub_1_0 = {}
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
		well_1 = {},
		well_2 = {}, 
		well_3 = {}, 
		well_4 = {}, 
		well_5 = {}, 
		well_6 = {}, 
		well_7 = {}, 
		well_8 = {}, 
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
		--field_1
		--field_2
		--field_3
		--field_4
	},
	gambit = {
		gambit_church_1_0_180 = {},
		gambit_forge_1_2_270 = {},
		gambit_fountain_1_1_90 = {},
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
		default_town_fountain = {},
		default_town_park = {}
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
		--towntest_kddekadenz_castle_3_90
		--towntest_cornernote_fortress_4_0
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

villagers.COSTS = {
	allmende = {}
	bakery
	bench
	chateau
	church
	deco
	empty
	farm_full
	farm_tiny
	field
	forge
	fountain
	house
	hut
	library
	lumberjack
	mill
	pasture
	pit
	sawmill
	school
	secular
	shed
	shop -- lumberjack, tent
	spawn
	tavern
	tent
	tower
	trader -- claytrader
	village_square
	wagon
	well
	
	-- village towntest mobd
	castle
	park
	
	-- village gambit mod
	cementry
	lamp
	hotel
	pub
	stable
}

villagers.COSTS = {
	apple = 1,
	wheat = 2,
	flour = 3,
	bread = 4,
}

villagers.STOCKS = {
	apple = 10,
	wheat = 10,
	flour = 10,
	bread = 10,
}
