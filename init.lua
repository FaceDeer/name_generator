local modpath = minetest.get_modpath(minetest.get_current_modname())

name_generator = dofile(modpath.."/namegen.lua")

--name_generator.parse_lines(io.lines(modpath.."/data/books.cfg"))
--name_generator.parse_lines(io.lines(modpath.."/data/creatures.cfg"))
--name_generator.parse_lines(io.lines(modpath.."/data/inns.cfg"))
--name_generator.parse_lines(io.lines(modpath.."/data/potions.cfg"))
--name_generator.parse_lines(io.lines(modpath.."/data/towns.cfg"))

local generate_examples = function()
	for _, set in ipairs(name_generator.get_sets()) do
		minetest.debug("set: " .. set)
		local examples = "examples: "
		for i = 1, 30 do
			examples = examples .. name_generator.generate(set)
			if i < 30 then
				examples = examples .. ", "
			end
		end
		minetest.debug(examples)
	end
end

--generate_examples()