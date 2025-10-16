functions = require("lib.functions")

data:extend({
	{
		type = "locomotive",
		name = "yir_atom_header",
		icon = "__z_yira_UP__/graphics/icons/atom_trieb_icon.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		minable = {mining_time = 1, result = "yir_atom_header"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 800,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
		connection_distance = 3,
		joint_distance = 4,
		weight = 2000,
		max_speed = 1.065,
		max_power = "2500kW",
		reversing_power_modifier = 0.6,
		braking_force = 20,
		friction_force = 0.00225,
		air_resistance = 0.00225,
		vertical_selection_shift = -0.5,
		energy_per_hit_point = 8,
		resistances = {
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact", decrease = 50, percent = 60}
		},
		energy_source = {
			type = "burner",
			fuel_categories = {"nuclear"},
			effectivity = 5,
			fuel_inventory_size = 1,
			smoke = {
				{
					name = "train-smoke",
					deviation = {0.3, 0.3},
					frequency = 100,
					position = {0, 0},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2,
					height_deviation = 0.5,
					starting_vertical_speed = 0.2,
					starting_vertical_speed_deviation = 0.1
				}
			}
		},
		front_light = {
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture = {
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {-0.6, -18},
				size = 3,
				intensity = 1
			},
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture = {
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {0.6, -18},
				size = 3,
				intensity = 1
			}
		},
		pictures = {
			rotated = {
				priority = "very-low",
				width = 256,
				height = 256,
				direction_count = 128,
				filenames = {
					"__z_yira_UP__/graphics/atom_head_sheet-0.png",
					"__z_yira_UP__/graphics/atom_head_sheet-1.png"
				},
				line_length = 8,
				lines_per_file = 8,
				shift = {0.42, -1.125}
			},
		},
		crash_trigger = functions.crash_trigger,
		wheels = functions.standard_train_wheels,
		drive_over_tie_trigger = functions.yir_drive_over_tie,
		tie_distance = 50,
		open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
		close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
	},
	{
		type = "locomotive",
		name = "yir_atom_mitte",
		icon = "__z_yira_UP__/graphics/icons/atom_mitte_icon.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		minable = {mining_time = 1, result = "yir_atom_mitte"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 3000,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
		connection_distance = 3,
		joint_distance = 4,
		weight = 5000,
		max_speed = 1.065,
		max_power = "5000kW",
		reversing_power_modifier = 1.0,
		braking_force = 14,
		friction_force = 0.00225,
		air_resistance = 0.00225,
		vertical_selection_shift = -0.5,
		energy_per_hit_point = 5,
		resistances = {
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact", decrease = 50, percent = 60}
		},
		energy_source = {
			type = "burner",
			fuel_categories = {"nuclear"},
			effectivity = 5,
			fuel_inventory_size = 2,
			smoke = {
				{
					name = "train-smoke",
					deviation = {0.3, 0.3},
					frequency = 100,
					position = {0, 0},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2,
					height_deviation = 0.5,
					starting_vertical_speed = 0.2,
					starting_vertical_speed_deviation = 0.1
				}
			}
		},
		front_light = {
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture = {
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {-0.6, -18},
				size = 2,
				intensity = 0.8
			},
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture = {
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {0.6, -18},
				size = 2,
				intensity = 0.8
			}
		},
		pictures = {
			rotated = {
				priority = "very-low",
				width = 256,
				height = 256,
				direction_count = 128,
				filenames = {
					"__z_yira_UP__/graphics/atom_mitte_sheet-0.png",
					"__z_yira_UP__/graphics/atom_mitte_sheet-1.png"
				},
				line_length = 8,
				lines_per_file = 8,
				shift = {0.42, -1.125}
			},
		},
		crash_trigger = functions.crash_trigger,
		wheels = functions.standard_train_wheels,
		drive_over_tie_trigger = functions.yir_drive_over_tie,
		tie_distance = 50,
		open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
		close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
	}
})
