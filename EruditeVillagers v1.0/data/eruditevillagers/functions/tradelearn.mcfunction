# Steps to 'learn' book0 as a trade 

# Identify books close enough to villagers that don't know book0
execute as @e[tag=enchantmentlearnable] at @s if entity @e[tag=book0,distance=0..1.25,nbt={Offers:{Recipes:[{sell:{tag:{StoredEnchantments:[]}}}]}},limit=1] run tag @s add learnpending

# Add stored enchantments from tagged book to enchanted book trade
execute as @e[tag=learnpending] if data entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[0].sell{id:"minecraft:enchanted_book"}.tag.StoredEnchantments insert 0 from entity @s Item.tag.StoredEnchantments[0]
execute as @e[tag=learnpending] if data entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[1].sell{id:"minecraft:enchanted_book"}.tag.StoredEnchantments insert 0 from entity @s Item.tag.StoredEnchantments[0]

# Make trade tradeable again by resetting the buyB to just a book, with Count:1
execute as @e[tag=learnpending] if data entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} set value {id:"minecraft:book",Count:1}

# Identify Villager as having learned book0
execute as @e[tag=learnpending] run tag @e[tag=book0,limit=1,sort=nearest] add book0done
# Prevent Villager from learning book0 again
execute as @e[tag=learnpending] run tag @e[tag=book0,limit=1,sort=nearest] remove book0

# Destroy book
execute at @e[tag=learnpending] run particle minecraft:poof ~ ~0.5 ~
execute as @e[tag=learnpending] run kill @s


# same for book1
execute as @e[tag=enchantmentlearnable] at @s if entity @e[tag=book1,tag=!book0,distance=0..1.25,nbt={Offers:{Recipes:[{sell:{tag:{StoredEnchantments:[]}}}]}},limit=1] run tag @s add learnpending

execute as @e[tag=learnpending] if data entity @e[tag=book1,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book1,limit=1,sort=nearest] Offers.Recipes[2].sell{id:"minecraft:enchanted_book"}.tag.StoredEnchantments insert 0 from entity @s Item.tag.StoredEnchantments[0]
execute as @e[tag=learnpending] if data entity @e[tag=book1,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book1,limit=1,sort=nearest] Offers.Recipes[3].sell{id:"minecraft:enchanted_book"}.tag.StoredEnchantments insert 0 from entity @s Item.tag.StoredEnchantments[0]
execute as @e[tag=learnpending] if data entity @e[tag=book1,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book1,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} set value {id:"minecraft:book",Count:1}

execute as @e[tag=learnpending] run tag @e[tag=book1,limit=1,sort=nearest] add book1done
execute as @e[tag=learnpending] run tag @e[tag=book1,limit=1,sort=nearest] remove book1

execute at @e[tag=learnpending] run particle minecraft:poof ~ ~0.5 ~
execute as @e[tag=learnpending] run kill @s

# same for book2
execute as @e[tag=enchantmentlearnable] at @s if entity @e[tag=book2,tag=!book0,tag=!book1,distance=0..1.25,nbt={Offers:{Recipes:[{sell:{tag:{StoredEnchantments:[]}}}]}},limit=1] run tag @s add learnpending

execute as @e[tag=learnpending] if data entity @e[tag=book2,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book2,limit=1,sort=nearest] Offers.Recipes[4].sell{id:"minecraft:enchanted_book"}.tag.StoredEnchantments insert 0 from entity @s Item.tag.StoredEnchantments[0]
execute as @e[tag=learnpending] if data entity @e[tag=book2,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book2,limit=1,sort=nearest] Offers.Recipes[5].sell{id:"minecraft:enchanted_book"}.tag.StoredEnchantments insert 0 from entity @s Item.tag.StoredEnchantments[0]
execute as @e[tag=learnpending] if data entity @e[tag=book2,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book2,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} set value {id:"minecraft:book",Count:1}

execute as @e[tag=learnpending] run tag @e[tag=book2,limit=1,sort=nearest] add book2done
execute as @e[tag=learnpending] run tag @e[tag=book2,limit=1,sort=nearest] remove book2

execute at @e[tag=learnpending] run particle minecraft:poof ~ ~0.5 ~
execute as @e[tag=learnpending] run kill @s

# same for book3
execute as @e[tag=enchantmentlearnable] at @s if entity @e[tag=book3,tag=!book0,tag=!book1,tag=!book2,distance=0..1.25,nbt={Offers:{Recipes:[{sell:{tag:{StoredEnchantments:[]}}}]}},limit=1] run tag @s add learnpending

execute as @e[tag=learnpending] if data entity @e[tag=book3,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book3,limit=1,sort=nearest] Offers.Recipes[6].sell{id:"minecraft:enchanted_book"}.tag.StoredEnchantments insert 0 from entity @s Item.tag.StoredEnchantments[0]
execute as @e[tag=learnpending] if data entity @e[tag=book3,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book3,limit=1,sort=nearest] Offers.Recipes[7].sell{id:"minecraft:enchanted_book"}.tag.StoredEnchantments insert 0 from entity @s Item.tag.StoredEnchantments[0]
execute as @e[tag=learnpending] if data entity @e[tag=book3,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book3,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} set value {id:"minecraft:book",Count:1}

execute as @e[tag=learnpending] run tag @e[tag=book3,limit=1,sort=nearest] add book3done
execute as @e[tag=learnpending] run tag @e[tag=book3,limit=1,sort=nearest] remove book3

execute at @e[tag=learnpending] run particle minecraft:poof ~ ~0.5 ~
execute as @e[tag=learnpending] run kill @s