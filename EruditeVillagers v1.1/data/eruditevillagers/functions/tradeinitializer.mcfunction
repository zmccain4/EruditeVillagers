# book0 initialization
execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian",level:1}},tag=!book0,tag=!book0done] if data entity @s Offers.Recipes[0].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[0].buyB set value {id:"minecraft:enchanted_book",Count:2,tag:{display:{Name:"\"Drop an Enchanted Book\"",Lore:['"Novice Level Trade"']}}}
execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian",level:1}},tag=!book0,tag=!book0done] if data entity @s Offers.Recipes[0].sell{id:"minecraft:enchanted_book"} run data remove entity @s Offers.Recipes[0].sell.tag.StoredEnchantments[0]

execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian",level:1}},tag=!book0,tag=!book0done] if data entity @s Offers.Recipes[1].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[1].buyB set value {id:"minecraft:enchanted_book",Count:2,tag:{display:{Name:"\"Drop an Enchanted Book\"",Lore:['"Novice Level Trade"']}}}
execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian",level:1}},tag=!book0,tag=!book0done] if data entity @s Offers.Recipes[1].sell{id:"minecraft:enchanted_book"} run data remove entity @s Offers.Recipes[1].sell.tag.StoredEnchantments[0]


# book1 initialization
execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian",level:2}},tag=!book1,tag=!book1done] if data entity @s Offers.Recipes[2].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[2].buyB set value {id:"minecraft:enchanted_book",Count:2,tag:{display:{Name:"\"Drop an Enchanted Book\"",Lore:['"Apprentice Level Trade"']}}}
execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian",level:2}},tag=!book1,tag=!book1done] if data entity @s Offers.Recipes[2].sell{id:"minecraft:enchanted_book"} run data remove entity @s Offers.Recipes[2].sell.tag.StoredEnchantments[0]

execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian",level:2}},tag=!book1,tag=!book1done] if data entity @s Offers.Recipes[3].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[3].buyB set value {id:"minecraft:enchanted_book",Count:2,tag:{display:{Name:"\"Drop an Enchanted Book\"",Lore:['"Apprentice Level Trade"']}}}
execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian",level:2}},tag=!book1,tag=!book1done] if data entity @s Offers.Recipes[3].sell{id:"minecraft:enchanted_book"} run data remove entity @s Offers.Recipes[3].sell.tag.StoredEnchantments[0]


# book2 initialization
execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian",level:3}},tag=!book2,tag=!book2done] if data entity @s Offers.Recipes[4].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[4].buyB set value {id:"minecraft:enchanted_book",Count:2,tag:{display:{Name:"\"Drop an Enchanted Book\"",Lore:['"Journeyman Level Trade"']}}}
execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian",level:3}},tag=!book2,tag=!book2done] if data entity @s Offers.Recipes[4].sell{id:"minecraft:enchanted_book"} run data remove entity @s Offers.Recipes[4].sell.tag.StoredEnchantments[0]

execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian",level:3}},tag=!book2,tag=!book2done] if data entity @s Offers.Recipes[5].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[5].buyB set value {id:"minecraft:enchanted_book",Count:2,tag:{display:{Name:"\"Drop an Enchanted Book\"",Lore:['"Journeyman Level Trade"']}}}
execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian",level:3}},tag=!book2,tag=!book2done] if data entity @s Offers.Recipes[5].sell{id:"minecraft:enchanted_book"} run data remove entity @s Offers.Recipes[5].sell.tag.StoredEnchantments[0]


# book3 initialization
execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian",level:4}},tag=!book3,tag=!book3done] if data entity @s Offers.Recipes[6].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[6].buyB set value {id:"minecraft:enchanted_book",Count:2,tag:{display:{Name:"\"Drop an Enchanted Book\"",Lore:['"Expert Level Trade"']}}}
execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian",level:4}},tag=!book3,tag=!book3done] if data entity @s Offers.Recipes[6].sell{id:"minecraft:enchanted_book"} run data remove entity @s Offers.Recipes[6].sell.tag.StoredEnchantments[0]

execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian",level:4}},tag=!book3,tag=!book3done] if data entity @s Offers.Recipes[7].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[7].buyB set value {id:"minecraft:enchanted_book",Count:2,tag:{display:{Name:"\"Drop an Enchanted Book\"",Lore:['"Expert Level Trade"']}}}
execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian",level:4}},tag=!book3,tag=!book3done] if data entity @s Offers.Recipes[7].sell{id:"minecraft:enchanted_book"} run data remove entity @s Offers.Recipes[7].sell.tag.StoredEnchantments[0]


# Add additional trade for Master Level Librarians:
execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian",level:5}},tag=!book4,tag=!book4done] run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:16},buyB:{id:"minecraft:diamond_pickaxe",Count:2,tag:{Enchantments:[{}],display:{Name:"\"Drop an Enchanted Item\"",Lore:['"Master Level Trade"']}}},sell:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[]},Count:1},maxUses:12}
