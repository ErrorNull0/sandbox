mg_villages.part_of_village_spawned = function( village, minp, maxp, data, param2_data, a, cid )
	io.write("## villageSpawn() ")
	
	local village_pos = {x=village.vx, y=village.vh, z=village.vz}
	local village_pos_str = minetest.pos_to_string(village_pos)
	local village_type = village.village_type
	local village_radius = village.vs
	local village_snow = village.artificial_snow
	
	local plot_count = #village.to_add_data.bpos
	
	io.write(village_pos_str.." "..village_type.." ")
	io.write("village.to_Add_data.bpos: "..minetest.serialize(village.to_add_data.bpos).." ")
	
	io.write("villageSpawnEND\n")
end

minetest.register_lbm({
	label = "Spawn Villager",
	name = "villagers:spawn_villager",
	nodenames = {"mg_villages:mob_spawner"},
	run_at_every_load = true,
	action = function(pos, node)
		io.write("## LBM Activated ## ")
		io.write("pos"..minetest.pos_to_string(pos).." nodename="..node.name.." ")
		
		local meta = minetest.get_meta(pos)
		local meta_table = meta:to_table()
		local village_id = meta_table.fields.village_id
		local plot_num = meta_table.fields.plot_nr
		local bed_num = meta_table.fields.bed_nr
		
		io.write("village_id="..village_id.." plot_num="..plot_nr.." bed_num="..bed_nr.." ")
		
		local mob_info = mg_villages.inhabitants.get_mob_data( village_id, plot_nr, bed_nr );

		
		
		io.write("mob_info: "..minetest.serialize(mob_info).."\n")
		
		
		--[[
		-- check mode metadata at this pos
		-- check key 'spawned'
		-- if 
		
		
		local mob_spawner_data = handle_schematics.get_pos_in_front_of_house(bpos, bed_index)
		local yaw_data = mob_spawner_data.yaw
		villagers.spawnVillager(
			pos, 
			homeplace = {
				region,
				village,
				plot_num,
				building,
				schem,
				bed_num
			}, 
			player_name, 
			trading_allowed, 
			yaw_data, 
			bed_pos
		)
		--]]
	end
})
