execute if score EliteSpider Smob_EliteCount matches 0 run summon spider ~ ~ ~ {Tags:["Elite"],CustomName:'{"text":"Elite Spider"}',DeathLootTable:"smob:entities/looteasy",Passengers:[{id:"minecraft:cave_spider",Passengers:[{id:"minecraft:cave_spider",Passengers:[{id:"minecraft:skeleton",Tags:["Echecked"],CustomName:'{"text":"Elite Jocky"}',HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}]}]}]}]}
execute if score EliteSpider Smob_EliteCount matches 0 run tp @s ~ ~-320 ~
execute as @e[type=spider,tag=!Echecked,tag=Elite] at @s run attribute @s generic.armor base set 20
execute as @e[type=spider,tag=!Echecked,tag=Elite] at @s run attribute @s generic.attack_damage base set 5

tag @s add Echecked
scoreboard players add EliteSpider Smob_EliteCount 1

execute if score EliteSpider Smob_EliteCount matches 50 run scoreboard players set EliteSpider Smob_EliteCount 0