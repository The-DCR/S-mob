execute if score ElitePiglin Smob_EliteCount matches 0 run summon hoglin ~ ~ ~ {Passengers:[{id:"minecraft:piglin",CannotHunt:1b,CustomName: '{"text":"Elite Piglin"}', Tags: ["Elite"],DeathLootTable:"smob:entities/lootmedium"}]}
execute if score ElitePiglin Smob_EliteCount matches 0 run tp @s ~ ~-320 ~
execute as @e[type=piglin,tag=!Echecked,tag=Elite] at @s run item replace entity @s armor.head with sea_lantern{Enchantments: [{}]}
execute as @e[type=piglin,tag=!Echecked,tag=Elite] at @s run attribute @s generic.armor base set 40
execute as @e[type=piglin,tag=!Echecked,tag=Elite] at @s run item replace entity @s weapon.mainhand with crossbow{Enchantments:[{id:"minecraft:piercing",lvl:3s}]}

tag @s add Echecked
scoreboard players add ElitePiglin Smob_EliteCount 1

execute if score ElitePiglin Smob_EliteCount matches 50 run scoreboard players set ElitePiglin Smob_EliteCount 0