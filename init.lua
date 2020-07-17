minetest.register_node("windchimes:metal", {
	description = "Metal Windchime",
	drawtype = "mesh",
	mesh = "windchime_metal.obj",
	tiles = {
		"windchime_metal.png"
	},
	inventory_image = "windchime_metal_inv.png",
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.2, -0.5, -0.2, 0.2, 0.5, 0.2},
		}
	},
	use_texture_alpha = true,
	sunlight_propagates = true,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(21,60))
	end,
	on_timer = function(pos, elapsed)
		minetest.sound_play("windchime_metal", {pos = pos, max_hear_distance = 8, gain = 0.20})
		return true
	end,
})

minetest.register_node("windchimes:bamboo", {
	description = "Bamboo Windchime",
	drawtype = "mesh",
	mesh = "windchime_bamboo.obj",
	tiles = {
		"windchime_bamboo.png"
	},
	inventory_image = "windchime_bamboo_inv.png",
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.2, -0.5, -0.2, 0.2, 0.5, 0.2},
		}
	},
	use_texture_alpha = true,
	sunlight_propagates = true,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(21,60))
	end,
	on_timer = function(pos, elapsed)
		minetest.sound_play("windchime_bamboo", {pos = pos, max_hear_distance = 8, gain = 0.20})
		return true
	end,
})

minetest.register_craft({
	output = "windchimes:metal",
	recipe = {
		{"default:wood", "farming:string", "default:wood"},
		{"farming:string", "farming:string", "farming:string"},
		{"default:steel_ingot", "default:copper_ingot", "default:steel_ingot"},
	},
})

minetest.register_craft({
	output = "windchimes:bamboo",
	recipe = {
		{"default:junglewood", "farming:string", "default:junglewood"},
		{"farming:string", "farming:string", "farming:string"},
		{"default:junglewood", "default:wood", "default:junglewood"},
	},
})
