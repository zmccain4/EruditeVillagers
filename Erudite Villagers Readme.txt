Erudite Villagers is a minecraft datapack that aims to balance the power Librarian villagers have with more interesting ways of getting enchanted books, like the enchanting table, exploring anchient cities and end cities, and fishing, while still allowing Librarian villagers to be useful. 

The way it does this is by only allowing Librarians to sell books with copies of echantments that the player has given them. If a Librarian has an enchanted book trade available, the player can select which enchantment the Librarian sells by dropping an enchanted book near it. The villager will 'learn' the first enchantment on the enchanted book, and the book will be consumed. The villager will now sell enchanted books with that enchantment.

Currently, the emerald cost and number of trades available is not changed by this datapack at all.

Master Level Librarian Villagers have the opportunity to learn one enchantment off of a enchanted item - When a librarian unlocks this trade, drop an enchanted item near them. They will only learn the first enchantment, and the item will be unchanged.

I highly recommend making a backup of your world before enabling this datapack, because it has the power to delete existing enchanted book trade from librarians if they are not loaded when the pack is enabled, or if something else goes wrong. This is still a work in progress, so make frequent backups.

If you add this datapack to an existing world, all existing Librarians (except Masters) that are not loaded in while enabling the datapack will have the enchanted book trade they learned at the level the are currently at deleted. For example, a Journeyman librarian that knows 3 enchanted book trades will have the most recently learned one deleted, if it isn't loaded while the datapack is being enabled. To prevent this, run the following commands BEFORE installing the datapack, at each location you have librarians you want to keep all the trades of:

/tag @e[nbt={VillagerData:{profession:"minecraft:librarian",level:1}}] add book0done
/tag @e[nbt={VillagerData:{profession:"minecraft:librarian",level:2}}] add book1done
/tag @e[nbt={VillagerData:{profession:"minecraft:librarian",level:3}}] add book2done
/tag @e[nbt={VillagerData:{profession:"minecraft:librarian",level:4}}] add book3done

Those commands tag librarians with the tags they'll need to prevent the enchantments they already know from being deleted. It will only work on villagers that are currently loaded in, so use the commands at every place you have villagers, and make a backup of your world, because there is no way to recover the trades once they are removed.

After enabling the datapack, I recommend using the /reload command at each place you have villagers, and checking that the trades you are trying to preserve still exist. After that, or if playing in a new world with no librarian trades to preserve, the datapack should work fine without commands.


No considerations have been made to make this datapack compatible with other modifications to the game. If anything changes the number of trades a librarian has, this datapack will break.