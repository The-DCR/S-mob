execute if score EliteSkeleton Smob_EliteCount matches 0 run summon skeleton ~ ~ ~ {CustomName: '{"text":"Elite Skeleton"}', Tags: ["Elite"],DeathLootTable:"smob:entities/looteasy"}
execute if score EliteSkeleton Smob_EliteCount matches 0 run tp @s ~ ~-320 ~
execute as @e[type=skeleton,tag=!Echecked,tag=Elite] at @s run item replace entity @s armor.head with sea_lantern{Enchantments: [{}]}
execute as @e[type=skeleton,tag=!Echecked,tag=Elite] at @s run attribute @s generic.armor base set 20
execute as @e[type=skeleton,tag=!Echecked,tag=Elite] at @s run item replace entity @s weapon.mainhand with bow{Enchantments: [{id: "minecraft:power", lvl: 3s}, {id: "minecraft:punch", lvl: 2s}]}

tag @s add Echecked
scoreboard players add EliteSkeleton Smob_EliteCount 1

execute if score EliteSkeleton Smob_EliteCount matches 25 run scoreboard players set EliteSkeleton Smob_EliteCount 0