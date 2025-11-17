local modname = "__z_yira_UP__"
local item_sounds = require("__base__.prototypes.item_sounds")
local balancingTypes = require("__yi_railway__.prototypes.z_balancing_types")

local entityData = {
	locomotive = {
		yir_atom_header = {filename = "atom_head_sheet",	double = true, doublesided = false, size = {3904, 8032}, sizeSh = {4016, 8192}, shift = {0.42,-1.125}},
		yir_atom_mitte  = {filename = "atom_mitte_sheet",	double = true, doublesided = false, size = {4096, 8096}, sizeSh = {4096, 8192}, shift = {0.42,-1.125}},
	},
	["cargo-wagon"] = {
		yir_cw_flourit = 	{filename = "cws_flourit_sheet", 	double = false, doublesided = true,	size = {3360, 2848}, sizeSh = {3376, 3168}, shift = {0.42,-1.125}},
		yir_cw_uranite =	{filename = "cws_uranite_sheet", 	double = false, doublesided = true,	size = {3360, 2848}, sizeSh = {3376, 3168}, shift = {0.42,-1.125}},
		yir_cw_upempty = 	{filename = "cws_empty_sheet", 		double = false, doublesided = true,	size = {3360, 2880}, sizeSh = {3376, 3168}, shift = {0.42,-1.125}},
		yir_cw_upclosed = 	{filename = "cws_closed_sheet", 	double = false, doublesided = true,	size = {3360, 2880}, sizeSh = {3376, 3168}, shift = {0.42,-1.125}},
		yir_cw_flourit_4a = {filename = "4aw_upflour_sheet", 	double = false, doublesided = true,	size = {4096, 4096}, sizeSh = {4096, 4096}, shift = {0.42,-1.125}},
		yir_cw_uran_4a = 	{filename = "4aw_upuran_sheet", 	double = false, doublesided = true, size = {4096, 4096}, sizeSh = {4096, 4096}, shift = {0.42,-1.125}},
		yir_cw_empty_4a = 	{filename = "4aw_upempty_sheet", 	double = false, doublesided = true,	size = {4096, 4096}, sizeSh = {4096, 4096}, shift = {0.42,-1.125}},
		yir_cw_trans_4a = 	{filename = "4aw_uptrans_sheet", 	double = false, doublesided = true,	size = {4096, 4096}, sizeSh = {4096, 4096}, shift = {0.42,-1.125}},
		yir_cw_4a_urana =	{filename = "4aw_cw_urana_sheet", 	double = false, doublesided = true,	size = {4080, 3984}, sizeSh = {4080, 4096}, shift = {0.42,-1.125}},
		yir_cw_4a_cellsu =	{filename = "4aw_cw_ucells_sheet",	double = false, doublesided = true,	size = {4080, 3984}, sizeSh = {4080, 4096}, shift = {0.42,-1.125}},
	},
}

local itemData = {
	large = {
		"yir_atom_header",
		"yir_atom_mitte",

		"yir_cw_flourit",
		"yir_cw_uranite",
		"yir_cw_upempty",
		"yir_cw_upclosed",

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
			table.insert(names, modname.."/graphics/"..name..sh..".png")
	else
		for i = 0, count - 1, 1 do
			table.insert(names, modname.."/graphics/"..name..(i+1)..sh..".png")
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
		local item = data.raw["item-with-entity-data"][name]

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
			vehicle.open_sound = data.raw[type][type].open_sound
			vehicle.close_sound = data.raw[type][type].close_sound
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

local function adjustStats(name, stat)
	local lok = data.raw["locomotive"][name]

	if not lok then
		return
	end
	for k, v in pairs(balancingTypes.stats1[stat]) do
		lok[k] = v
	end
	for k, v in pairs(balancingTypes.stats2[stat]) do
		lok.energy_source[k] = v
	end
end

adjustStats("yir_atom_header", "futureU")
adjustStats("yir_atom_mitte",  "futureU")
