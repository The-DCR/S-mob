execute if score EliteZombie Smob_EliteCount matches 0 run summon zombie ~ ~ ~ {CustomName:'{"text":"Elite Zombie"}',Tags:["Elite"],DeathLootTable:"smob:entities/looteasy"}
execute if score EliteZombie Smob_EliteCount matches 0 run tp @s ~ ~-320 ~
execute as @e[type=zombie,tag=!Echecked,tag=Elite] at @s run item replace entity @s armor.head with sea_lantern{Enchantments:[{}]}
execute as @e[type=zombie,tag=!Echecked,tag=Elite] at @s run attribute @s generic.armor base set 50
execute as @e[type=zombie,tag=!Echecked,tag=Elite] at @s run item replace entity @s weapon.mainhand with iron_sword

tag @s add Echecked
scoreboard players add EliteZombie Smob_EliteCount 1

execute if score EliteZombie Smob_EliteCount matches 25 run scoreboard players set EliteZombie Smob_EliteCount 0