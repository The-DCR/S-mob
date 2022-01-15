execute if score EliteEnderman Smob_EliteCount matches 0 run summon enderman ~ ~ ~ {CustomName:'{"text":"Elite Enderman"}',Tags:["Elite"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000}],DeathLootTable:"smob:entities/loothard"}
execute if score EliteEnderman Smob_EliteCount matches 0 run tp @s ~ ~-320 ~
execute as @e[type=enderman,tag=!Echecked,tag=Elite] at @s run attribute @s generic.armor base set 20
execute as @e[type=enderman,tag=!Echecked,tag=Elite] at @s run attribute @s generic.knockback_resistance base set 20
execute as @e[type=enderman,tag=!Echecked,tag=Elite] at @s run attribute @s generic.attack_damage base set 15

tag @s add Echecked
scoreboard players add EliteEnderman Smob_EliteCount 1

execute if score EliteEnderman Smob_EliteCount matches 200 run scoreboard players set EliteEnderman Smob_EliteCount 0