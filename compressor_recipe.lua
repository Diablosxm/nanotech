local S = minetest.get_translator("nanotech")
technic.register_recipe_type("compressing", { description = S("Compressing") })

function technic.register_compressor_recipe(data)
	data.time = data.time or 4
	technic.register_recipe("compressing", data)
end

local recipes = {
	{"nanotech:carbon_fibre 9",        "nanotech:carbon_plate", 12},
	{"nanotech:carbon_plate 3",        "nanotech:carbon_rod", 9},

}
-- clear craft recipe
minetest.clear_craft({
        recipe = {
                {'nanotech:carbon_fibre', 'nanotech:carbon_fibre', 'nanotech:carbon_fibre'},
                {'nanotech:carbon_fibre', 'nanotech:carbon_fibre', 'nanotech:carbon_fibre'},
                {'nanotech:carbon_fibre', 'nanotech:carbon_fibre', 'nanotech:carbon_fibre'},
        }
})
minetest.clear_craft({
        recipe = {
                {'', 'nanotech:carbon_plate', ''},
                {'', 'nanotech:carbon_plate', ''},
                {'', 'nanotech:carbon_plate', ''},
        }
})

for _, data in pairs(recipes) do
	technic.register_compressor_recipe({input = {data[1]}, output = data[2], time = data[3]})
end
