local modname = "__yi_railway__"
local item_sounds = require("__base__.prototypes.item_sounds")

local entityData = {
	locomotive = {
		--y_loco_emd1500blue = 	{filename = "emd_1500blue_sheet_old", 	double = true, 	doublesided = false, size = {3296, 5760}, sizeSh = {3424, 6976}, shift = {0.42,-1.125}},
	},
	["cargo-wagon"] = {
		--yir_wagon2a_closed = 	{filename = "wcs_closed_sheet", 		double = false, doublesided = true,	size = {3216, 2736}, sizeSh = {3296, 3056}, shift = {0.42,-1.125}},
	},
}

local itemData = {
	large = {
	},
}

local categories = {
	future = {
		"yir_atom_header",
		"yir_atom_mitte",
	},
	wagonBig = {
		"yir_cw_flourit",
		"yir_cw_uranite",
		"yir_cw_upempty",
		"yir_cw_upclosed",
	},
	wagonSmall = {
		"yir_cw_flourit_4a",
		"yir_cw_uran_4a",
		"yir_cw_empty_4a",
		"yir_cw_trans_4a",
		"yir_cw_4a_urana",
		"yir_cw_4a_cellsu",
	},
}

local function filenameGen(name, count, shadow)
	local names = {}
	local sh =""
	if shadow ~= nil and shadow == true then
		sh = "_shadow"
	end
	if count == 1 then
			table.insert(names, modname.."/graphics/entity/railway/"..name..sh..".png")
	else
		for i = 0, count - 1, 1 do
			table.insert(names, modname.."/graphics/entity/railway/"..name..(i+1)..sh..".png")
		end
	end
	return names
end

local function makePictures(data)
	local width = 8
	local height = 8
	local dc = 128
	if data.double == true then
		height = 16
	end
	if data.doublesided == true then
		dc = 64
	end

	local pictures = {
		rotated = {
			layers = {
				{
					width = data.size[1] / width,
					height = data.size[2] / height,
					direction_count = dc,
					filenames = filenameGen(data.filename, 1),
					back_equals_front = data.doublesided,
					line_length = width,
					lines_per_file = height,
					shift = data.shift,
					scale = 0.5,
				},
				{
					width = data.sizeSh[1] / width,
					height = data.sizeSh[2] / height,
					direction_count = dc,
					filenames = filenameGen(data.filename, 1, true),
					back_equals_front = data.doublesided,
					line_length = width,
					lines_per_file = height,
					shift = data.shift,
					draw_as_shadow = true,
					scale = 0.5,
				},
			}
		}
	}
	return pictures
end

local types = {
	large = "metal_large",
}

for type, items in pairs(itemData) do
	for _, name in pairs(items) do
		local item = data.raw["item"][name]

		if item ~= nil then
			item.inventory_move_sound = item_sounds[types[type].."_inventory_move"]
			item.pick_sound = 			item_sounds[types[type].."_inventory_pickup"]
			item.drop_sound = 			item_sounds[types[type].."_inventory_move"]
		end
	end
end

for type, typeData in pairs(entityData) do
	for name, datas in pairs(typeData) do
		local vehicle = data.raw[type][name]
		local item = data.raw["item"][name]

		if vehicle ~= nil then
			vehicle.pictures = makePictures(datas)
			vehicle.minimap_representation = data.raw[type][type].minimap_representation
			vehicle.selected_minimap_representation = data.raw[type][type].selected_minimap_representation
			if type == "locomotive" then
				vehicle.max_health = 0.5 * vehicle.weight
				vehicle.stop_trigger = data.raw[type][type].stop_trigger
			end
		end

		if item ~= nil then
			item.inventory_move_sound = data.raw["item-with-entity-data"][type].inventory_move_sound
			item.pick_sound = data.raw["item-with-entity-data"][type].pick_sound
			item.drop_sound = data.raw["item-with-entity-data"][type].drop_sound
		end

		log(name.." changed")
	end
end
local resistance1 = {
	{
		type = "fire",
		decrease = 25,
		percent = 50
	},
	{
		type = "physical",
		decrease = 10,
		percent = 25
	},
	{
		type = "impact",
		decrease = 30,
		percent = 50
	},
	{
		type = "explosion",
		decrease = 20,
		percent = 35
	},
	{
		type = "acid",
		decrease = 10,
		percent = 30
	},
	{
		type = "laser",
		decrease = 20,
		percent = 45
	},
	{
		type = "electric",
		decrease = 20,
		percent = 45
	}
}
local resistance2 = {
	{
		type = "fire",
		decrease = 15,
		percent = 50
	},
	{
		type = "physical",
		decrease = 15,
		percent = 30
	},
	{
		type = "impact",
		decrease = 50,
		percent = 50
	},
	{
		type = "explosion",
		decrease = 15,
		percent = 30
	},
	{
		type = "acid",
		decrease = 3,
		percent = 20
	},
	{
		type = "laser",
		decrease = 10,
		percent = 20
	},
	{
		type = "electric",
		decrease = 5,
		percent = 20
	}
}
local resistance3 = {
	{
		type = "fire",
		decrease = 25,
		percent = 50
	},
	{
		type = "physical",
		decrease = 25,
		percent = 35
	},
	{
		type = "impact",
		decrease = 75,
		percent = 65
	},
	{
		type = "explosion",
		decrease = 25,
		percent = 40
	},
	{
		type = "acid",
		decrease = 10,
		percent = 30
	},
	{
		type = "laser",
		decrease = 15,
		percent = 25
	},
	{
		type = "electric",
		decrease = 10,
		percent = 20
	}
}
local workingSoundDiesel = data.raw["locomotive"]["locomotive"].working_sound
local workingSoundSteam = table.deepcopy(data.raw["locomotive"]["locomotive"].working_sound)
workingSoundSteam.main_sounds[2].sound.filename = "__base__/sound/steam-engine-90bpm.ogg"
workingSoundSteam.main_sounds[2].sound.volume = 0.5

local stats1 = {
	future  = {resistances = resistance3, max_speed = 2.0, max_power = "2000kW",braking_force = 20, friction_force = 0.0025, air_resistance = 0.006,  energy_per_hit_point = 4, reversing_power_modifier = 1,   working_sound = workingSoundDiesel},
}
local stats2 = {
	future  = {fuel_inventory_size = 1, effectivity = 1},
}

local function adjustStats(name, stat)
	local lok = data.raw["locomotive"][name]

	if not lok then
		return
	end
	for k, v in pairs(stats1[stat]) do
		lok[k] = v
	end
	for k, v in pairs(stats2[stat]) do
		lok.energy_source[k] = v
	end
end

--adjustStats("y_loco_ses_std", "steam1")
--adjustStats("y_loco_ses_red", "steam1")
