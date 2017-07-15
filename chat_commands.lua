local function validateVillageParameters(parameter, type, village)
	local log = false
	if log then io.write("\nvalidateParams() ") end
	
	if type == "region" then
		if log then io.write("for REGION ") end
		if parameter == nil then
			if log then io.write("is NIL ") end
			return "normal"
		else 
			for i=1, #villagers.REGIONS do
				if villagers.REGIONS[i] == parameter then 
					if log then io.write("is VALID ") end
					return parameter 
				end
			end
			if log then io.write("notFound setTo=NORMAL ") end
			return "normal"
		end
		
	elseif type == "village" then
		if log then io.write("for VILLAGE ") end
		if parameter == nil then
			if log then io.write("is NIL ") end
			return "nore"
		else
			for i=1, #villagers.VILLAGES do
				if villagers.VILLAGES[i] == parameter then 
					if log then io.write("is VALID ") end				
					return parameter 
				end
			end
			if log then io.write("notFound setTo=NORE ") end
			return "nore"
		end
		
	elseif type == "plot" then
		if log then io.write("for PLOT ") end
		if parameter == nil then
			if log then io.write("is NIL ") end
			return "empty"
		else
			for i=1, #villagers.BUILDINGS do
				if villagers.BUILDINGS[i] == parameter then 
					if log then io.write("is VALID ") end
					return parameter 
				end
			end
			if log then io.write("notFound setTo=EMPTY ") end
			return "empty"
		end
		
	elseif type == "schem" then
		if log then io.write("for SCHEM ") end
		local schems_available = villagers.SCHEMS[village]
		local random_schem = schems_available[math.random(#schems_available)]
		if parameter == nil then
			if log then io.write("is NIL ") end
			return random_schem
		else
			for i=1, #schems_available do
				if schems_available[i] == parameter then 
					if log then io.write("is VALID ") end
					return parameter 
				end
			end
			if log then io.write("notFound setTo="..random_schem.." ") end
			return random_schem
		end
		
	end
end

function villagers.getVillagerListFormspec(player)
	local log = true
		
	local count = 0
	local vill_ids = {}
	for key, value in pairs(villagers.villager_ids) do
		count = count + 1
		table.insert(vill_ids, key)
	end
	
	print("  villager count: "..count)
	
	local width_form = 15.5
	
	local h_labels = 1
	local h_row = 0.5
	local h_exit_button = 1
	local h_between = 0.5 -- between label and list, and between list and exit button
	
	local height_form = h_labels + (h_row * count) + h_exit_button
	
	print("formspec width="..width_form.." height="..height_form)
	
	-- GUI related stuff
	--local bg = "bgcolor[#080808BB;true]"
	local bg_image = "background[0,0;0,0;gui_formbg.png;true]"
	
	local formspec = 
		-- gui background attributes
		"size["..width_form..","..height_form.."]"..bg_image..
		
		-- header row
		"label[0.3,0;Village]"..
		"label[2.0,0;Plot]"..
		"label[2.8,0;Type]"..
		"label[4.5,0;Schem]"..
		"label[7.2,0;Bed]"..
		"label[8.0,0;Name]"..
		"label[9.5,0;Origin]"..
		"label[10.7,0;Current]"..
		"label[11.9,0;Walked]"..
		"label[13.0,0;Dist]"..
		"label[14.0,0;Action]"

	-- main villager list
	if count > 0 then
		for i = 1, #vill_ids do
			local self = villagers.getEntity(vill_ids[i])
			local villager_name = self.vName
			if self.vUnkown then villager_name = "*"..self.vName end
			formspec = formspec..
				"label[0.3,"..(h_row * i)..";"..self.vVillage.."]"..
				"label[2.1,"..(h_row * i)..";"..self.vPlot.."]"..
				"label[2.8,"..(h_row * i)..";"..self.vType.."]"..
				"label[4.5,"..(h_row * i)..";"..self.vSchem.."]"..
				"label[7.3,"..(h_row * i)..";"..self.vBed.."]"..
				"label[8.0,"..(h_row * i)..";"..villager_name.."]"..
				"label[9.5,"..(h_row * i)..";"..self.vOriginPos.x..","..self.vOriginPos.z.."]"..
				"label[10.7,"..(h_row * i)..";"..self.vPos.x..","..self.vPos.z.."]"..
				"label[12.1,"..(h_row * i)..";"..self.vTotalDistance.."]"..
				"label[13.0,"..(h_row * i)..";"..villagers.round(vector.distance(self.vPos, player:get_pos()), 1).."]"
				
			local teleport_data = "teleport_"..minetest.pos_to_string(self.vPos)	
			formspec = formspec.."button[14.0,"..(h_row * i)..";1,0.5;"..teleport_data..";go]" 
		end
		
	else
		formspec = formspec.. "label[6.5,0.5;(no villagers nearby)]" 
	end



	formspec = formspec.. 	"button_exit[5.7,"..(height_form - 1)..";2,1;exit;Exit]"..
							"button[7.7,"..(height_form - 1)..";2,1;refresh;refresh]" 
		
	return formspec

end

-- manually spawn villager via chat command. mostly for testing.
minetest.register_chatcommand("villagers", {
	params = "<command> <region> <village> <building> <schem>",
	description = "Villager Tools",
	privs = {},	
	func = function(name, param)
		local log = false
		local params = string.split(param, " ")	
		local command_type = params[1]
		
		if command_type == "spawn" then
			local player = minetest.get_player_by_name(name)
			local entity_name = "villagers:villager"
			local pos = vector.round(player:getpos())
			
			-- for some reason spawning on roads need to be shifted up by 1 block
			if villagers.getNodeName(pos)[2] == "ROAD" then pos.y = pos.y + 1.5
			else pos.y = pos.y + 0.5 end
			
			local region_type = validateVillageParameters(params[2], "region")
			local village_type = validateVillageParameters(params[3], "village")
			local building_type = validateVillageParameters(params[4], "plot")
			local schem_type = validateVillageParameters(params[5], "schem", village_type)
			
			local homeplace = {
				region = region_type,
				village = village_type,
				plot = 0,
				building = building_type,
				schem = schem_type
			}
			local luaEntity = villagers.spawnVillager(pos, homeplace, 0)
			
		--elseif command_type == "list" then
			--print("\n## SHOWING VILAGERS LIST ##")
			--local player = minetest.get_player_by_name(name)
			--minetest.show_formspec(name, "villagers:list", villagers.getVillagerListFormspec(player))
			
		elseif command_type == "list" then
			io.write("\n## LISTING ENTITIES ##")
			io.write("\n")
			io.write("\n  #  KEY      VILLAGE PLOT            TYPE BED            NAME   ORIGIN  CURRENT WALKED DIST ERR")
				
			local count = 0
			for key,self in pairs(minetest.luaentities) do
				
				if self.name == "villagers:villager" then
					count = count + 1
					io.write("\n")
					local sf = string.format("%3d %4d %12s %4d ", count, key, self.vVillage, self.vPlot)
					sf = sf..string.format("%15s %3d %15s ", self.vType, self.vBed, self.vName)
					
					local orig_pos = self.vOriginPos.x..","..self.vOriginPos.z
					local curr_pos = self.vPos.x..","..self.vPos.z
					local walked_dist = villagers.round(vector.distance(self.vOriginPos, self.vPos), 1)
					sf = sf..string.format("%8s %8s %6d %4d ", orig_pos, curr_pos, walked_dist, self.vTotalDistance)
					
					if #self.vUnknown > 0 then
						sf = sf.."Yes"
					else
						sf = sf.." No"
					end
					io.write(sf)
					
				end
				
			end
			io.write("\n")
			
		else
			minetest.chat_send_player(name, "Invalid command: "..command_type)
		end
		
	end,
})
