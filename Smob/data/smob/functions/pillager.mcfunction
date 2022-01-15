execute if score ElitePillager Smob_EliteCount matches 0 run summon pillager ~ ~ ~ {CustomName: '{"text":"Elite Pillager"}', Tags: ["Elite"],DeathLootTable:"smob:entities/looteasy"}
execute if score ElitePillager Smob_EliteCount matches 0 run tp @s ~ ~-320 ~
execute as @e[type=pillager,tag=!Echecked,tag=Elite] at @s run item replace entity @s armor.head with sea_lantern{Enchantments: [{}]}
execute as @e[type=pillager,tag=!Echecked,tag=Elite] at @s run attribute @s generic.armor base set 20
execute as @e[type=pillager,tag=!Echecked,tag=Elite] at @s run item replace entity @s weapon.mainhand with crossbow

tag @s add Echecked
scoreboard players add ElitePillager Smob_EliteCount 1

execute if score ElitePillager Smob_EliteCount matches 25 run scoreboard players set ElitePillager Smob_EliteCount 0