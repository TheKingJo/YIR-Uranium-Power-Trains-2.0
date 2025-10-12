
data:extend({
	{
		type = "recipe",
		name = "yir_atom_header",
		category = "yir_rc_wsl",
		enabled = true,
		energy_required = 5.00,
		ingredients = {
			{type = "item", name = "yir_frame_loco_future", amount = 1.0},
			{type = "item", name = "yir_radsatz_locos", amount = 4.0},
			{type = "item", name = "yir_color_green", amount = 2.0},
			{type = "item", name = "yir_color_white", amount = 10.0},
			{type = "item", name = "yir_future_coin", amount = 40.0}
		},
		results = {
			{type = "item", name = "yir_atom_header", amount = 1}
		},
		main_product = "yir_atom_header",
		order = "lsw1",
		group = "railway_addons",
		subgroup = "yir_uranium_power_loco"
	},
	{
		type = "recipe",
		name = "yir_atom_mitte",
		category = "yir_rc_wsl",
		enabled = true,
		energy_required = 5.00,
		ingredients = {
			{type = "item", name = "yir_frame_loco_future", amount = 1.0},
			{type = "item", name = "yir_radsatz_waggon", amount = 2.0},
			{type = "item", name = "yir_color_green", amount = 2.0},
			{type = "item", name = "yir_color_white", amount = 10.0},
			{type = "item", name = "yir_future_coin", amount = 50.0}
		},
		results = {
			{type = "item", name = "yir_atom_mitte", amount = 1}
		},
		main_product = "yir_atom_mitte",
		order = "lsw1",
		group = "railway_addons",
		subgroup = "yir_uranium_power_loco"
	},


	{
		type = "recipe",
		name = "yir_cw_flourit",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3.00,
		ingredients = {			
			{type = "item", name = "yir_frame_waggon" , amount = 1.0},			
			{type = "item", name = "yir_radsatz_waggon" , amount = 1.0},			
			{type = "item", name = "yir_color_green" , amount = 1.0},			
			{type = "item", name = "yir_future_coin" , amount = 5.0},					
		},
		results = {
			{type = "item", name = "yir_cw_flourit", amount = 1},
		},	
		main_product = "yir_cw_flourit",
		order = "cw1", group = "railway_addons", subgroup = "yir_uranium_power_cargo2a",
	},
	{
		type = "recipe",
		name = "yir_cw_uranite",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3.00,
		ingredients = {			
			{type = "item", name = "yir_frame_waggon" , amount = 1.0},			
			{type = "item", name = "yir_radsatz_waggon" , amount = 1.0},			
			{type = "item", name = "yir_color_green" , amount = 1.0},			
			{type = "item", name = "yir_future_coin" , amount = 5.0},					
		},
		results = {
			{type = "item", name = "yir_cw_uranite", amount = 1},
		},
		main_product = "yir_cw_uranite",
		order = "cw2", group = "railway_addons", subgroup = "yir_uranium_power_cargo2a",
	},
	{
		type = "recipe",
		name = "yir_cw_upempty",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3.00,
		ingredients = {			
			{type = "item", name = "yir_frame_waggon" , amount = 1.0},			
			{type = "item", name = "yir_radsatz_waggon" , amount = 1.0},			
			{type = "item", name = "yir_color_green" , amount = 1.0},			
			{type = "item", name = "yir_future_coin" , amount = 3.0},			
		},
		results = {
			{type = "item", name = "yir_cw_upempty", amount = 1},
		},
		main_product = "yir_cw_upempty",
		order = "cw3", group = "railway_addons", subgroup = "yir_uranium_power_cargo2a",
	},
	{
		type = "recipe",
		name = "yir_cw_upclosed",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3.00,
		ingredients = {
			{type = "item", name = "yir_frame_waggon" , amount = 1.0},			
			{type = "item", name = "yir_radsatz_waggon" , amount = 1.0},			
			{type = "item", name = "yir_color_green" , amount = 1.0},			
			{type = "item", name = "yir_future_coin" , amount = 8.0},			
		},
		results = {
			{type = "item", name = "yir_cw_upclosed", amount = 1},
		},
		main_product = "yir_cw_upclosed",
		order = "cw4", group = "railway_addons", subgroup = "yir_uranium_power_cargo2a",
	},

	{
		type = "recipe",
		name = "yir_cw_flourit_4a",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3.00,
		ingredients = {
			{type = "item", name = "yir_frame_waggon", amount = 2.0},
			{type = "item", name = "yir_radsatz_waggon", amount = 2.0},
			{type = "item", name = "yir_color_green", amount = 2.0},
			{type = "item", name = "yir_future_coin", amount = 8.0},
		},
		results = {
			{type = "item", name = "yir_cw_flourit_4a", amount = 1},
		},
		main_product = "yir_cw_flourit_4a",
		order = "cw5",
		group = "railway_addons",
		subgroup = "yir_uranium_power_cargo4a",
	},
	{
		type = "recipe",
		name = "yir_cw_uran_4a",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3.00,
		ingredients = {
			{type = "item", name = "yir_frame_waggon", amount = 2.0},
			{type = "item", name = "yir_radsatz_waggon", amount = 2.0},
			{type = "item", name = "yir_color_green", amount = 2.0},
			{type = "item", name = "yir_future_coin", amount = 8.0},
		},
		results = {
			{type = "item", name = "yir_cw_uran_4a", amount = 1},
		},
		main_product = "yir_cw_uran_4a",
		order = "cw6",
		group = "railway_addons",
		subgroup = "yir_uranium_power_cargo4a",
	},
	{
		type = "recipe",
		name = "yir_cw_empty_4a",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3.00,
		ingredients = {
			{type = "item", name = "yir_frame_waggon", amount = 2.0},
			{type = "item", name = "yir_radsatz_waggon", amount = 2.0},
			{type = "item", name = "yir_color_green", amount = 2.0},
			{type = "item", name = "yir_future_coin", amount = 8.0},
		},
		results = {
			{type = "item", name = "yir_cw_empty_4a", amount = 1},
		},
		main_product = "yir_cw_empty_4a",
		order = "cw7",
		group = "railway_addons",
		subgroup = "yir_uranium_power_cargo4a",
	},
	{
		type = "recipe",
		name = "yir_cw_trans_4a",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3.00,
		ingredients = {
			{type = "item", name = "yir_frame_waggon", amount = 2.0},
			{type = "item", name = "yir_radsatz_waggon", amount = 2.0},
			{type = "item", name = "yir_color_green", amount = 2.0},
			{type = "item", name = "yir_future_coin", amount = 10.0},
		},
		results = {
			{type = "item", name = "yir_cw_trans_4a", amount = 1},
		},
		main_product = "yir_cw_trans_4a",
		order = "cw8",
		group = "railway_addons",
		subgroup = "yir_uranium_power_cargo4a",
	},
	{
		type = "recipe",
		name = "yir_cw_4a_urana",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3.00,
		ingredients = {
			{type = "item", name = "yir_frame_waggon", amount = 2.0},
			{type = "item", name = "yir_radsatz_waggon", amount = 2.0},
			{type = "item", name = "yir_color_green", amount = 2.0},
			{type = "item", name = "yir_future_coin", amount = 5.0},
		},
		results = {
			{type = "item", name = "yir_cw_4a_urana", amount = 1},
		},
		main_product = "yir_cw_4a_urana",
		order = "cw9a",
		group = "railway_addons",
		subgroup = "yir_uranium_power_cargo4a",
	},
	{
		type = "recipe",
		name = "yir_cw_4a_cellsu",
		category = "yir_rc_wsw",
		enabled = true,
		energy_required = 3.00,
		ingredients = {
			{type = "item", name = "yir_frame_waggon", amount = 2.0},
			{type = "item", name = "yir_radsatz_waggon", amount = 2.0},
			{type = "item", name = "yir_color_green", amount = 2.0},
			{type = "item", name = "yir_future_coin", amount = 5.0},
		},
		results = {
			{type = "item", name = "yir_cw_4a_cellsu", amount = 1},
		},
		main_product = "yir_cw_4a_cellsu",
		order = "cw9b",
		group = "railway_addons",
		subgroup = "yir_uranium_power_cargo4a",
	},
})