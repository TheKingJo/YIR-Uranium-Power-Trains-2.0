require("lib.functions")
data:extend(
{
	{
		type = "cargo-wagon",
		name = "yir_cw_flourit_4a",
		icon = "__z_yira_UP__/graphics/cws64_fluorite_icon.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		inventory_size = 30,
		minable = {mining_time = 1, result = "yir_cw_flourit_4a"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
		selection_box = {{-1.0, -2.7}, {1, 3.3}},
		connection_distance = 3, joint_distance = 4,
		weight = 2000,
		max_speed = 1.204,
		braking_force = 2,
		friction_force = 0.0015,
		air_resistance = 0.002,
		energy_per_hit_point = 5,
		resistances =
		{
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact",decrease = 50,percent = 60},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.8,
		pictures =
		{
			rotated = {
			priority = "very-low",
			width = 256,
			height = 256,
			back_equals_front = true,
			direction_count = 64,
			filename = "__z_yira_UP__/graphics/4aw_upflour_sheet.png",
			line_length = 8,
			lines_per_file = 8,
			shift = {0.42, -1.125}
			},
		},
		minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},

		wheels = standard_train_wheels,
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
		crash_trigger = crash_trigger(),
		open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
		close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
		vehicle_impact_sound =  {filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0},
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_uran_4a",
		icon = "__z_yira_UP__/graphics/cws64_uranite-icon.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		inventory_size = 30,
		minable = {mining_time = 1, result = "yir_cw_uran_4a"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
		selection_box = {{-1.0, -2.7}, {1, 3.3}},
		connection_distance = 3, joint_distance = 4,
		weight = 3000,
		max_speed = 1.204,
		braking_force = 2,
		friction_force = 0.0015,
		air_resistance = 0.002,
		energy_per_hit_point = 5,
		resistances =
		{
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact",decrease = 50,percent = 60},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.8,
		pictures =
		{
			rotated = {
			priority = "very-low",
			width = 256,
			height = 256,
			back_equals_front = true,
			direction_count = 64,
			filename = "__z_yira_UP__/graphics/4aw_upuran_sheet.png",
			line_length = 8,
			lines_per_file = 8,
			shift = {0.42, -1.125}
			},
		},
		minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},

		wheels = standard_train_wheels,
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
		crash_trigger = crash_trigger(),
		open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
		close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
		vehicle_impact_sound =  {filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0},
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_empty_4a",
		icon = "__z_yira_UP__/graphics/cws64_empty.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		inventory_size = 30,
		minable = {mining_time = 1, result = "yir_cw_empty_4a"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
		selection_box = {{-1.0, -2.7}, {1, 3.3}},
		connection_distance = 3, joint_distance = 4,
		weight = 1200,
		max_speed = 1.204,
		braking_force = 2,
		friction_force = 0.0015,
		air_resistance = 0.002,
		energy_per_hit_point = 5,
		resistances =
		{
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact",decrease = 50,percent = 60},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.8,
		pictures =
		{
			rotated = {
			priority = "very-low",
			width = 256,
			height = 256,
			back_equals_front = true,
			direction_count = 64,
			filename = "__z_yira_UP__/graphics/4aw_upempty_sheet.png",
			line_length = 8,
			lines_per_file = 8,
			shift = {0.42, -1.125}
			},
		},
		minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},

		wheels = standard_train_wheels,
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
		crash_trigger = crash_trigger(),
		open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
		close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
		vehicle_impact_sound =  {filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0},
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_trans_4a",
		icon = "__z_yira_UP__/graphics/cws64_up_closed_icon.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		inventory_size = 30,
		minable = {mining_time = 1, result = "yir_cw_trans_4a"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
		selection_box = {{-1.0, -2.7}, {1, 3.3}},
		connection_distance = 3, joint_distance = 4,
		weight = 2500,
		max_speed = 1.204,
		braking_force = 2,
		friction_force = 0.0015,
		air_resistance = 0.002,
		energy_per_hit_point = 5,
		resistances =
		{
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact",decrease = 50,percent = 60},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.8,
		pictures =
		{
			rotated = {
			priority = "very-low",
			width = 256,
			height = 256,
			back_equals_front = true,
			direction_count = 64,
			filename = "__z_yira_UP__/graphics/4aw_uptrans_sheet.png",
			line_length = 8,
			lines_per_file = 8,
			shift = {0.42, -1.125}
			},
		},
		minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},

		wheels = standard_train_wheels,
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
		crash_trigger = crash_trigger(),
		open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
		close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
		vehicle_impact_sound =  {filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0},
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_4a_urana",
		icon = "__z_yira_UP__/graphics/4aw_cw_urana_icon.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		inventory_size = 30,
		minable = {mining_time = 1, result = "yir_cw_4a_urana"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
		selection_box = {{-1.0, -2.7}, {1, 3.3}},
		connection_distance = 3, joint_distance = 4,
		weight = 2500,
		max_speed = 1.204,
		braking_force = 2,
		friction_force = 0.5,
		air_resistance = 0.05,
		energy_per_hit_point = 5,
		resistances =
		{
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact",decrease = 50,percent = 60},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.8,
		pictures =
		{
			rotated = {
			priority = "very-low",
			width = 512,
			height = 512,
			scale = 0.5,
			back_equals_front = true,
			direction_count = 64,
			filenames = {
				"__z_yira_UP__/graphics/4aw_cw_urana_sheet-0.png",
				"__z_yira_UP__/graphics/4aw_cw_urana_sheet-1.png",
				"__z_yira_UP__/graphics/4aw_cw_urana_sheet-2.png",
				"__z_yira_UP__/graphics/4aw_cw_urana_sheet-3.png",
			},
			line_length = 4,
			lines_per_file = 4,
			shift = {0.42, -1.125}
		},
		},
		minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},

		wheels = standard_train_wheels,
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
		crash_trigger = crash_trigger(),
		open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
		close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
		vehicle_impact_sound =  {filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0},
	},

	{
		type = "cargo-wagon",
		name = "yir_cw_4a_cellsu",
		icon = "__z_yira_UP__/graphics/4aw_cw_ucells_icon.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		inventory_size = 30,
		minable = {mining_time = 1, result = "yir_cw_4a_cellsu"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
		selection_box = {{-1.0, -2.7}, {1, 3.3}},
		connection_distance = 3, joint_distance = 4,
		weight = 2500,
		max_speed = 1.204,
		braking_force = 2,
		friction_force = 0.5,
		air_resistance = 0.05,
		energy_per_hit_point = 5,
		resistances =
		{
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact",decrease = 50,percent = 60},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.8,
		pictures =
		{
			rotated = {
			priority = "very-low",
			width = 512,
			height = 512,
			scale = 0.5,
			back_equals_front = true,
			direction_count = 64,
			filenames = {
				"__z_yira_UP__/graphics/4aw_cw_ucells_sheet-0.png",
				"__z_yira_UP__/graphics/4aw_cw_ucells_sheet-1.png",
				"__z_yira_UP__/graphics/4aw_cw_ucells_sheet-2.png",
				"__z_yira_UP__/graphics/4aw_cw_ucells_sheet-3.png",
			},
			line_length = 4,
			lines_per_file = 4,
			shift = {0.42, -1.125}
		},
		},
		minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5
		},

		wheels = standard_train_wheels,
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
		crash_trigger = crash_trigger(),
		open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
		close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
		vehicle_impact_sound =  {filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0},
	},
})