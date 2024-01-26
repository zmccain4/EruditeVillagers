tag @e[tag=book0,nbt={VillagerData:{profession:"minecraft:none"}}] remove book0
tag @e[tag=book0done,nbt={VillagerData:{profession:"minecraft:none"}}] remove book0done

tag @e[type=villager,tag=!book0,tag=!book0done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={VillagerData:{level:1}}] add book0
tag @e[type=villager,tag=!book1,tag=!book1done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={VillagerData:{level:2}}] add book1
tag @e[type=villager,tag=!book2,tag=!book2done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={VillagerData:{level:3}}] add book2
tag @e[type=villager,tag=!book3,tag=!book3done,nbt={VillagerData:{profession:"minecraft:librarian"}},nbt={VillagerData:{level:4}}] add book3

tag @e[tag=!enchantmentlearnable,type=item,nbt={Item:{id:"minecraft:enchanted_book"}}] add enchantmentlearnable