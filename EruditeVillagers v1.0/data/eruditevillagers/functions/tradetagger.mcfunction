# book0 tagging
execute as @e[tag=book0,tag=!book0done] if data entity @s Offers.Recipes[0].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[0].buyB set value {id:"minecraft:enchanted_book",Count:2,tag:{display:{Name:"\"Drop an Enchanted Book\""}}}
execute as @e[tag=book0,tag=!book0done] if data entity @s Offers.Recipes[0].sell{id:"minecraft:enchanted_book"} run data remove entity @s Offers.Recipes[0].sell.tag.StoredEnchantments[0]

execute as @e[tag=book0,tag=!book0done] if data entity @s Offers.Recipes[1].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[1].buyB set value {id:"minecraft:enchanted_book",Count:2,tag:{display:{Name:"\"Drop an Enchanted Book\""}}}
execute as @e[tag=book0,tag=!book0done] if data entity @s Offers.Recipes[1].sell{id:"minecraft:enchanted_book"} run data remove entity @s Offers.Recipes[1].sell.tag.StoredEnchantments[0]

# book0done tagging (In the case of no enchanted book trades)
execute as @e[tag=book0,tag=!book0done] unless data entity @s Offers.Recipes[0].buyB{id:"minecraft:enchanted_book"} unless data entity @s Offers.Recipes[1].buyB{id:"minecraft:enchanted_book"} run tag @s add book0done
execute as @e[tag=book0,tag=book0done] run tag @s remove book0

# book1 tagging
execute as @e[tag=book1,tag=!book1done] if data entity @s Offers.Recipes[2].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[2].buyB set value {id:"minecraft:enchanted_book",Count:2,tag:{display:{Name:"\"Drop an Enchanted Book\""}}}
execute as @e[tag=book1,tag=!book1done] if data entity @s Offers.Recipes[2].sell{id:"minecraft:enchanted_book"} run data remove entity @s Offers.Recipes[2].sell.tag.StoredEnchantments[0]

execute as @e[tag=book1,tag=!book1done] if data entity @s Offers.Recipes[3].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[3].buyB set value {id:"minecraft:enchanted_book",Count:2,tag:{display:{Name:"\"Drop an Enchanted Book\""}}}
execute as @e[tag=book1,tag=!book1done] if data entity @s Offers.Recipes[3].sell{id:"minecraft:enchanted_book"} run data remove entity @s Offers.Recipes[3].sell.tag.StoredEnchantments[0]

execute as @e[tag=book1,tag=!book1done] unless data entity @s Offers.Recipes[2].buyB{id:"minecraft:enchanted_book"} unless data entity @s Offers.Recipes[3].buyB{id:"minecraft:enchanted_book"} run tag @s add book1done

execute as @e[tag=book1,tag=book1done] run tag @s remove book1

# book2 tagging
execute as @e[tag=book2,tag=!book2done] if data entity @s Offers.Recipes[4].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[4].buyB set value {id:"minecraft:enchanted_book",Count:2,tag:{display:{Name:"\"Drop an Enchanted Book\""}}}
execute as @e[tag=book2,tag=!book2done] if data entity @s Offers.Recipes[4].sell{id:"minecraft:enchanted_book"} run data remove entity @s Offers.Recipes[4].sell.tag.StoredEnchantments[0]

execute as @e[tag=book2,tag=!book2done] if data entity @s Offers.Recipes[5].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[5].buyB set value {id:"minecraft:enchanted_book",Count:2,tag:{display:{Name:"\"Drop an Enchanted Book\""}}}
execute as @e[tag=book2,tag=!book2done] if data entity @s Offers.Recipes[5].sell{id:"minecraft:enchanted_book"} run data remove entity @s Offers.Recipes[5].sell.tag.StoredEnchantments[0]

execute as @e[tag=book2,tag=!book2done] unless data entity @s Offers.Recipes[4].buyB{id:"minecraft:enchanted_book"} unless data entity @s Offers.Recipes[5].buyB{id:"minecraft:enchanted_book"} run tag @s add book2done

execute as @e[tag=book2,tag=book2done] run tag @s remove book2

# book3 tagging
execute as @e[tag=book3,tag=!book3done] if data entity @s Offers.Recipes[6].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[6].buyB set value {id:"minecraft:enchanted_book",Count:2,tag:{display:{Name:"\"Drop an Enchanted Book\""}}}
execute as @e[tag=book3,tag=!book3done] if data entity @s Offers.Recipes[6].sell{id:"minecraft:enchanted_book"} run data remove entity @s Offers.Recipes[6].sell.tag.StoredEnchantments[0]

execute as @e[tag=book3,tag=!book3done] if data entity @s Offers.Recipes[7].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[7].buyB set value {id:"minecraft:enchanted_book",Count:2,tag:{display:{Name:"\"Drop an Enchanted Book\""}}}
execute as @e[tag=book3,tag=!book3done] if data entity @s Offers.Recipes[7].sell{id:"minecraft:enchanted_book"} run data remove entity @s Offers.Recipes[7].sell.tag.StoredEnchantments[0]

execute as @e[tag=book3,tag=!book3done] unless data entity @s Offers.Recipes[6].buyB{id:"minecraft:enchanted_book"} unless data entity @s Offers.Recipes[7].buyB{id:"minecraft:enchanted_book"} run tag @s add book3done
execute as @e[tag=book3,tag=book3done] run tag @s remove book3