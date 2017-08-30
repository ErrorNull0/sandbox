minetest.register_craftitem("villagers:coins", {
	description = "Silver Coin",
	inventory_image = "coins.png",
})

minetest.register_craftitem("villagers:coins_gold", {
	description = "Gold Coin",
	inventory_image = "coins_g.png",
})

minetest.register_craftitem("villagers:unknown_item", {
	description = "Unknown Item",
	inventory_image = "question_mark.png",
})

-- OVERRIDES
minetest.override_item("screwdriver:screwdriver", {description = "Screwdriver"})
minetest.override_item("cottages:barrel_lying", {description = "barrel lying (closed)"})