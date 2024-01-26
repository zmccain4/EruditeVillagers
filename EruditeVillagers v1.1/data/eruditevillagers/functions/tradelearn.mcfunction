# Steps to 'learn' book0 as a trade 

# Identify books close enough to villagers that don't know book0
execute as @e[tag=bookenchantmentlearnable] at @s if entity @e[tag=book0,distance=0..1.25,limit=1,sort=nearest] run tag @s add booklearnpending

# Add stored enchantments from tagged book to enchanted book trade
execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[0].sell{id:"minecraft:enchanted_book"}.tag.StoredEnchantments insert 0 from entity @s Item.tag.StoredEnchantments[0]
execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[1].sell{id:"minecraft:enchanted_book"}.tag.StoredEnchantments insert 0 from entity @s Item.tag.StoredEnchantments[0]

# Add Lore Text to book to make villager get tagged as book0done
execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[0].sell{id:"minecraft:enchanted_book"}.tag.display.Lore set value ['"Novice Level Trade"']
execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[1].sell{id:"minecraft:enchanted_book"}.tag.display.Lore set value ['"Novice Level Trade"']

# Make trade tradeable again by resetting the buyB to just a book, with Count:1
execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} set value {id:"minecraft:book",Count:1}

# Prevent Villager from learning book0 again
execute as @e[tag=booklearnpending] at @s run tag @e[tag=book0,limit=1,sort=nearest] add book0done
execute as @e[tag=booklearnpending] at @s run tag @e[tag=book0,limit=1,sort=nearest] remove book0

# Destroy book
execute at @e[tag=booklearnpending] run particle minecraft:poof ~ ~0.5 ~
execute as @e[tag=booklearnpending] run kill @s


# same for book1
execute as @e[tag=bookenchantmentlearnable] at @s if entity @e[tag=book1,tag=!book0,distance=0..1.25,limit=1] run tag @s add booklearnpending

execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book1,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book1,limit=1,sort=nearest] Offers.Recipes[2].sell{id:"minecraft:enchanted_book"}.tag.StoredEnchantments insert 0 from entity @s Item.tag.StoredEnchantments[0]
execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book1,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book1,limit=1,sort=nearest] Offers.Recipes[3].sell{id:"minecraft:enchanted_book"}.tag.StoredEnchantments insert 0 from entity @s Item.tag.StoredEnchantments[0]

execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book1,limit=1,sort=nearest] Offers.Recipes[2].sell{id:"minecraft:enchanted_book"}.tag.display.Lore set value ['"Apprentice Level Trade"']
execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book1,limit=1,sort=nearest] Offers.Recipes[3].sell{id:"minecraft:enchanted_book"}.tag.display.Lore set value ['"Apprentice Level Trade"']

execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book1,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book1,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} set value {id:"minecraft:book",Count:1}

execute as @e[tag=booklearnpending] at @s run tag @e[tag=book1,limit=1,sort=nearest] add book1done
execute as @e[tag=booklearnpending] at @s run tag @e[tag=book1,limit=1,sort=nearest] remove book1

execute at @e[tag=booklearnpending] run particle minecraft:poof ~ ~0.5 ~
execute as @e[tag=booklearnpending] run kill @s

# same for book2
execute as @e[tag=bookenchantmentlearnable] at @s if entity @e[tag=book2,tag=!book0,tag=!book1,distance=0..1.25,limit=1] run tag @s add booklearnpending

execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book2,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book2,limit=1,sort=nearest] Offers.Recipes[4].sell{id:"minecraft:enchanted_book"}.tag.StoredEnchantments insert 0 from entity @s Item.tag.StoredEnchantments[0]
execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book2,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book2,limit=1,sort=nearest] Offers.Recipes[5].sell{id:"minecraft:enchanted_book"}.tag.StoredEnchantments insert 0 from entity @s Item.tag.StoredEnchantments[0]

execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book2,limit=1,sort=nearest] Offers.Recipes[4].sell{id:"minecraft:enchanted_book"}.tag.display.Lore set value ['"Journeyman Level Trade"']
execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book2,limit=1,sort=nearest] Offers.Recipes[5].sell{id:"minecraft:enchanted_book"}.tag.display.Lore set value ['"Journeyman Level Trade"']

execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book2,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book2,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} set value {id:"minecraft:book",Count:1}

execute as @e[tag=booklearnpending] at @s run tag @e[tag=book2,limit=1,sort=nearest] add book2done
execute as @e[tag=booklearnpending] at @s run tag @e[tag=book2,limit=1,sort=nearest] remove book2

execute at @e[tag=booklearnpending] run particle minecraft:poof ~ ~0.5 ~
execute as @e[tag=booklearnpending] run kill @s

# same for book3
execute as @e[tag=bookenchantmentlearnable] at @s if entity @e[tag=book3,tag=!book0,tag=!book1,tag=!book2,distance=0..1.25,limit=1] run tag @s add booklearnpending

execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book3,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book3,limit=1,sort=nearest] Offers.Recipes[6].sell{id:"minecraft:enchanted_book"}.tag.StoredEnchantments insert 0 from entity @s Item.tag.StoredEnchantments[0]
execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book3,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book3,limit=1,sort=nearest] Offers.Recipes[7].sell{id:"minecraft:enchanted_book"}.tag.StoredEnchantments insert 0 from entity @s Item.tag.StoredEnchantments[0]

execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book3,limit=1,sort=nearest] Offers.Recipes[6].sell{id:"minecraft:enchanted_book"}.tag.display.Lore set value ['"Expert Level Trade"']
execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book0,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book3,limit=1,sort=nearest] Offers.Recipes[7].sell{id:"minecraft:enchanted_book"}.tag.display.Lore set value ['"Expert Level Trade"']

execute as @e[tag=booklearnpending] at @s if data entity @e[tag=book3,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} run data modify entity @e[tag=book3,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:enchanted_book"} set value {id:"minecraft:book",Count:1}

execute as @e[tag=booklearnpending] at @s run tag @e[tag=book3,limit=1,sort=nearest] add book3done
execute as @e[tag=booklearnpending] at @s run tag @e[tag=book3,limit=1,sort=nearest] remove book3

execute at @e[tag=booklearnpending] run particle minecraft:poof ~ ~0.5 ~
execute as @e[tag=booklearnpending] run kill @s


# Steps to 'learn' book4 as a trade 

# Identify items close enough to villagers that don't know book4
execute as @e[tag=enchantmentlearnable,tag=!learnt] at @s if entity @e[tag=book4,distance=0..1.25,limit=1] run tag @s add learnpending

# Add enchantment from tagged item to enchanted book trade
execute as @e[tag=learnpending] at @s if data entity @e[tag=book4,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:diamond_pickaxe"} run data modify entity @e[tag=book4,limit=1,sort=nearest] Offers.Recipes[9].sell{id:"minecraft:enchanted_book"}.tag.StoredEnchantments insert 0 from entity @s Item.tag.Enchantments[0]

# Add Lore Text to book to make villager get tagged as book4done
execute as @e[tag=learnpending] at @s if data entity @e[tag=book4,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:diamond_pickaxe"} run data modify entity @e[tag=book4,limit=1,sort=nearest] Offers.Recipes[9].sell{id:"minecraft:enchanted_book"}.tag.display.Lore set value ['"Master Level Trade"']

# Make trade tradeable again by resetting the buyB to just a book, with Count:1
execute as @e[tag=learnpending] at @s if data entity @e[tag=book4,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:diamond_pickaxe"} run data modify entity @e[tag=book4,limit=1,sort=nearest] Offers.Recipes[].buyB{id:"minecraft:diamond_pickaxe"} set value {id:"minecraft:book",Count:1}

# Prevent Villager from learning book4 again
execute as @e[tag=learnpending] at @s run tag @e[tag=book4,limit=1,sort=nearest] add book4done
execute as @e[tag=learnpending] at @s run tag @e[tag=book4,limit=1,sort=nearest] remove book4

# Visual indicator
execute at @e[tag=learnpending] run particle minecraft:firework ~ ~0.5 ~

# Uncomment below to remove learned enchantement from item
# execute as @e[tag=learnpending] run data remove entity @s Item.tag.Enchantments[0]

# Uncomment below to destroy item after learning enchantment
# execute as @e[tag=learnpending] run kill @s

execute as @e[tag=learnpending] run tag @s add learnt
execute as @e[tag=learnpending] run tag @s remove learnpending
