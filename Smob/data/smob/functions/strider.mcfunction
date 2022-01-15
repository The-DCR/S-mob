execute if score EliteStrider Smob_EliteCount matches 0 run summon strider ~ ~ ~ {Passengers:[{id:"minecraft:strider",Passengers:[{id:"minecraft:strider",Passengers:[{id:"minecraft:strider",Passengers:[{id:"minecraft:strider"}]}]}]}]}
execute if score EliteStrider Smob_EliteCount matches 0 run tp @s ~ ~-320 ~

tag @s add Echecked
scoreboard players add EliteStrider Smob_EliteCount 1

execute if score EliteStrider Smob_EliteCount matches 50 run scoreboard players set EliteStrider Smob_EliteCount 0