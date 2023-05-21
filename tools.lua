local S = minetest.get_translator("nether")
local toolranks_loaded = minetest.get_modpath("toolranks")

local pickaxe_desc = S("Carbon Composite Pickaxe")
minetest.register_tool("nanotech:carbon_pick", {
	description = toolranks_loaded and toolranks.create_description(pickaxe_desc) or pickaxe_desc,
	inventory_image = "carbon_pick.png",
	wield_image = "carbon_pick.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=500, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	-- toolranks support
	original_description = toolranks_loaded and pickaxe_desc or nil,
	after_use = toolranks_loaded and toolranks.new_afteruse or nil,
})

local pickaxe_desc = S("Carbon Composite Shovel")
minetest.register_tool("nanotech:carbon_shovel", {
	description = toolranks_loaded and toolranks.create_description(pickaxe_desc) or pickaxe_desc,
	inventory_image = "carbon_spade.png",
	wield_image = "carbon_shovel.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=500, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	-- toolranks support
	original_description = toolranks_loaded and pickaxe_desc or nil,
	after_use = toolranks_loaded and toolranks.new_afteruse or nil,
})

local pickaxe_desc = S("Carbon Composite Axe")
minetest.register_tool("nanotech:carbon_axe", {
	description = toolranks_loaded and toolranks.create_description(pickaxe_desc) or pickaxe_desc,
	inventory_image = "carbon_axe.png",
	wield_image = "carbon_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=500, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
	-- toolranks support
	original_description = toolranks_loaded and pickaxe_desc or nil,
	after_use = toolranks_loaded and toolranks.new_afteruse or nil,
})

local pickaxe_desc = S("Carbon Composite Sword")
minetest.register_tool("nanotech:carbon_sword", {
	description = toolranks_loaded and toolranks.create_description(pickaxe_desc) or pickaxe_desc,
	inventory_image = "carbon_sword.png",
    wield_image = "carbon_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=500, maxlevel=3},
		},
		damage_groups = {fleshy=19},
	},
	sound = {breaks = "default_tool_breaks"},
	-- toolranks support
	original_description = toolranks_loaded and pickaxe_desc or nil,
	after_use = toolranks_loaded and toolranks.new_afteruse or nil,
})

local pickaxe_desc = S("Carbon Composite Paxel")
minetest.register_tool("nanotech:carbon_paxel", {
	description = toolranks_loaded and toolranks.create_description(pickaxe_desc) or pickaxe_desc,
	inventory_image = "carbon_paxel.png",
	wield_image = "carbon_paxel.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=500, maxlevel=3},
		    crumbly = {times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=500, maxlevel=3},
		    choppy = {times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=500, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	-- toolranks support
	original_description = toolranks_loaded and pickaxe_desc or nil,
	after_use = toolranks_loaded and toolranks.new_afteruse or nil,
})
