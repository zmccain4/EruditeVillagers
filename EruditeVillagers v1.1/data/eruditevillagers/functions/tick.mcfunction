tag @e[tag=book0,nbt={VillagerData:{profession:"minecraft:none"}}] remove book0
tag @e[tag=book0done,nbt={VillagerData:{profession:"minecraft:none"}}] remove book0done

tag @e[type=villager,tag=!book0,tag=!book0done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={VillagerData:{level:1}}] add book0
tag @e[type=villager,tag=!book1,tag=!book1done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={VillagerData:{level:2}}] add book1
tag @e[type=villager,tag=!book2,tag=!book2done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={VillagerData:{level:3}}] add book2
tag @e[type=villager,tag=!book3,tag=!book3done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={VillagerData:{level:4}}] add book3

# Add additional trade for Master Level Librarians:
execute as @e[type=villager,tag=!book4,tag=!book4done,nbt={VillagerData:{profession:"minecraft:librarian",level:5}}] run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:16},buyB:{id:"minecraft:diamond_pickaxe",Count:2,tag:{Enchantments:[{}],display:{Name:"\"Drop an Enchanted Item\""}}},sell:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[]},Count:1},maxUses:12}

tag @e[type=villager,tag=!book4,tag=!book4done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={VillagerData:{level:5}}] add book4

tag @e[tag=!bookenchantmentlearnable,type=item,nbt={Item:{id:"minecraft:enchanted_book"}}] add bookenchantmentlearnable
tag @e[tag=!enchantmentlearnable,type=item,nbt={Item:{tag:{Enchantments:[{}]}}}] add enchantmentlearnable
