
data:extend({
	{
		type = "recipe",
		name = "yir_atom_header",
		category = "yir_rc_wsl",
		enabled = true,
		energy_required = 5,
		ingredients = {
			{type = "item", name = "yir_frame_loco_future", amount = 1},
			{type = "item", name = "yir_radsatz_locos", amount = 4},
			{type = "item", name = "yir_color_green", amount = 2},
			{type = "item", name = "yir_color_white", amount = 10},
			{type = "item", name = "yir_future_coin", amount = 40}
		},
		results = {
			{type = "item", name = "yir_atom_header", amount = 1}
		},
		order = "lsw1",
		group = "yuoki_railway",
		subgroup = "yir_uranium_power_loco"
	},
	{
		type = "recipe",
		name = "yir_atom_mitte",
		category = "yir_rc_wsl",
		enabled = true,
		energy_required = 5,
		ingredients = {
			{type = "item", name = "yir_frame_loco_future", amount = 1},
			{type = "item", name = "yir_radsatz_waggon", amount = 2},
			{type = "item", name = "yir_color_green", amount = 2},
			{type = "item", name = "yir_color_white", amount = 10},
			{type = "item", name = "yir_future_coin", amount = 50}
		},
		results = {
			{type = "item", name = "yir_atom_mitte", amount = 1}
		},
		order = "lsw1",
		group = "yuoki_railway",
		subgroup = "yir_uranium_power_loco"
	},


	{
		type = "recipe",
		name = "yir_cw_flourit",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3,
		ingredients = {
			{type = "item", name = "yir_frame_waggon" , amount = 1},
			{type = "item", name = "yir_radsatz_waggon" , amount = 1},
			{type = "item", name = "yir_color_green" , amount = 1},
			{type = "item", name = "yir_future_coin" , amount = 5},
		},
		results = {
			{type = "item", name = "yir_cw_flourit", amount = 1},
		},
		order = "cw1",
		group = "yuoki_railway",
		subgroup = "yir_uranium_power_cargo2a",
	},
	{
		type = "recipe",
		name = "yir_cw_uranite",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3,
		ingredients = {
			{type = "item", name = "yir_frame_waggon" , amount = 1},
			{type = "item", name = "yir_radsatz_waggon" , amount = 1},
			{type = "item", name = "yir_color_green" , amount = 1},
			{type = "item", name = "yir_future_coin" , amount = 5},
		},
		results = {
			{type = "item", name = "yir_cw_uranite", amount = 1},
		},
		order = "cw2",
		group = "yuoki_railway",
		subgroup = "yir_uranium_power_cargo2a",
	},
	{
		type = "recipe",
		name = "yir_cw_upempty",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3,
		ingredients = {
			{type = "item", name = "yir_frame_waggon" , amount = 1},
			{type = "item", name = "yir_radsatz_waggon" , amount = 1},
			{type = "item", name = "yir_color_green" , amount = 1},
			{type = "item", name = "yir_future_coin" , amount = 3},
		},
		results = {
			{type = "item", name = "yir_cw_upempty", amount = 1},
		},
		order = "cw3",
		group = "yuoki_railway",
		subgroup = "yir_uranium_power_cargo2a",
	},
	{
		type = "recipe",
		name = "yir_cw_upclosed",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3,
		ingredients = {
			{type = "item", name = "yir_frame_waggon" , amount = 1},
			{type = "item", name = "yir_radsatz_waggon" , amount = 1},
			{type = "item", name = "yir_color_green" , amount = 1},
			{type = "item", name = "yir_future_coin" , amount = 8},
		},
		results = {
			{type = "item", name = "yir_cw_upclosed", amount = 1},
		},
		order = "cw4",
		group = "yuoki_railway",
		subgroup = "yir_uranium_power_cargo2a",
	},

	{
		type = "recipe",
		name = "yir_cw_flourit_4a",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3,
		ingredients = {
			{type = "item", name = "yir_frame_waggon", amount = 2},
			{type = "item", name = "yir_radsatz_waggon", amount = 2},
			{type = "item", name = "yir_color_green", amount = 2},
			{type = "item", name = "yir_future_coin", amount = 8},
		},
		results = {
			{type = "item", name = "yir_cw_flourit_4a", amount = 1},
		},
		order = "cw5",
		group = "yuoki_railway",
		subgroup = "yir_uranium_power_cargo4a",
	},
	{
		type = "recipe",
		name = "yir_cw_uran_4a",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3,
		ingredients = {
			{type = "item", name = "yir_frame_waggon", amount = 2},
			{type = "item", name = "yir_radsatz_waggon", amount = 2},
			{type = "item", name = "yir_color_green", amount = 2},
			{type = "item", name = "yir_future_coin", amount = 8},
		},
		results = {
			{type = "item", name = "yir_cw_uran_4a", amount = 1},
		},
		order = "cw6",
		group = "yuoki_railway",
		subgroup = "yir_uranium_power_cargo4a",
	},
	{
		type = "recipe",
		name = "yir_cw_empty_4a",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3,
		ingredients = {
			{type = "item", name = "yir_frame_waggon", amount = 2},
			{type = "item", name = "yir_radsatz_waggon", amount = 2},
			{type = "item", name = "yir_color_green", amount = 2},
			{type = "item", name = "yir_future_coin", amount = 8},
		},
		results = {
			{type = "item", name = "yir_cw_empty_4a", amount = 1},
		},
		order = "cw7",
		group = "yuoki_railway",
		subgroup = "yir_uranium_power_cargo4a",
	},
	{
		type = "recipe",
		name = "yir_cw_trans_4a",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3,
		ingredients = {
			{type = "item", name = "yir_frame_waggon", amount = 2},
			{type = "item", name = "yir_radsatz_waggon", amount = 2},
			{type = "item", name = "yir_color_green", amount = 2},
			{type = "item", name = "yir_future_coin", amount = 10},
		},
		results = {
			{type = "item", name = "yir_cw_trans_4a", amount = 1},
		},
		order = "cw8",
		group = "yuoki_railway",
		subgroup = "yir_uranium_power_cargo4a",
	},
	{
		type = "recipe",
		name = "yir_cw_4a_urana",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3,
		ingredients = {
			{type = "item", name = "yir_frame_waggon", amount = 2},
			{type = "item", name = "yir_radsatz_waggon", amount = 2},
			{type = "item", name = "yir_color_green", amount = 2},
			{type = "item", name = "yir_future_coin", amount = 5},
		},
		results = {
			{type = "item", name = "yir_cw_4a_urana", amount = 1},
		},
		order = "cw9a",
		group = "yuoki_railway",
		subgroup = "yir_uranium_power_cargo4a",
	},
	{
		type = "recipe",
		name = "yir_cw_4a_cellsu",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3,
		ingredients = {
			{type = "item", name = "yir_frame_waggon", amount = 2},
			{type = "item", name = "yir_radsatz_waggon", amount = 2},
			{type = "item", name = "yir_color_green", amount = 2},
			{type = "item", name = "yir_future_coin", amount = 5},
		},
		results = {
			{type = "item", name = "yir_cw_4a_cellsu", amount = 1},
		},
		order = "cw9b",
		group = "yuoki_railway",
		subgroup = "yir_uranium_power_cargo4a",
	},
})