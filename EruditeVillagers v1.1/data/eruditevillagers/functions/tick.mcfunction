# Remove tags from villagers that have lost job site block:
tag @e[tag=book0,nbt={VillagerData:{profession:"minecraft:none"}}] remove book0
tag @e[tag=book0done,nbt={VillagerData:{profession:"minecraft:none"}}] remove book0done

# Tag trades that have already been modified.
tag @e[type=villager,tag=!book0,tag=!book0done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book",tag:{display:{Lore:['"Novice Level Trade"']}}}}]}}] add book0done
tag @e[type=villager,tag=!book1,tag=!book1done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book",tag:{display:{Lore:['"Apprentice Level Trade"']}}}}]}}] add book1done
tag @e[type=villager,tag=!book2,tag=!book2done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book",tag:{display:{Lore:['"Journeyman Level Trade"']}}}}]}}] add book2done
tag @e[type=villager,tag=!book3,tag=!book3done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book",tag:{display:{Lore:['"Expert Level Trade"']}}}}]}}] add book3done

tag @e[type=villager,tag=!book4,tag=!book4done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book",tag:{display:{Lore:['"Master Level Trade"']}}}}]}}] add book4done

# Tag trades that are pending modification. (Excluding already modified trades tagged with book#done)
tag @e[type=villager,tag=!book0,tag=!book0done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={Offers:{Recipes:[{buyB:{id:"minecraft:enchanted_book",tag:{display:{Lore:['"Novice Level Trade"']}}}}]}}] add book0
tag @e[type=villager,tag=!book1,tag=!book1done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={Offers:{Recipes:[{buyB:{id:"minecraft:enchanted_book",tag:{display:{Lore:['"Apprentice Level Trade"']}}}}]}}] add book1
tag @e[type=villager,tag=!book2,tag=!book2done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={Offers:{Recipes:[{buyB:{id:"minecraft:enchanted_book",tag:{display:{Lore:['"Journeyman Level Trade"']}}}}]}}] add book2
tag @e[type=villager,tag=!book3,tag=!book3done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={Offers:{Recipes:[{buyB:{id:"minecraft:enchanted_book",tag:{display:{Lore:['"Expert Level Trade"']}}}}]}}] add book3

tag @e[type=villager,tag=!book4,tag=!book4done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={Offers:{Recipes:[{buyB:{id:"minecraft:diamond_pickaxe",tag:{display:{Lore:['"Master Level Trade"']}}}}]}}] add book4

# Tag books and items that could be used to modify trades.
tag @e[tag=!bookenchantmentlearnable,type=item,nbt={Item:{id:"minecraft:enchanted_book"}}] add bookenchantmentlearnable
tag @e[tag=!enchantmentlearnable,type=item,nbt={Item:{tag:{Enchantments:[{}]}}}] add enchantmentlearnable
