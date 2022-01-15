execute store result score @s Smob_Health run data get entity @s Health
execute store result bossbar eig value run data get entity @s Health
bossbar set eig players @a[distance=..50]

particle angry_villager ~ ~1 ~ 1 1 1 0 1 normal

execute if score @s[tag=smob_p1] Smob_Health matches 50..70 run bossbar set eig name {"text":"Enraged Iron golem:phase2","color":"#BEBEBE"}
execute if score @s[tag=smob_p1] Smob_Health matches 50..70 run tag @s add smob_p2
execute if score @s[tag=smob_p1] Smob_Health matches 50..70 run tag @s remove smob_p1

execute if score @s[tag=smob_p2] Smob_Health matches 0..50 run bossbar set eig name {"text":"Enraged Iron golem:phase3","color":"#BEBEBE"}
execute if score @s[tag=smob_p2] Smob_Health matches 0..50 run tag @s add smob_p3
execute if score @s[tag=smob_p2] Smob_Health matches 0..50 run tag @s remove smob_p2

execute if score @s Smob_Health matches 50..70 if score timer5 Smob_rng matches 0..1 run effect give @s levitation 1 10 true
execute if score @s Smob_Health matches 50..70 if score timer5 Smob_rng matches 1..2 run effect clear levitation
execute if score @s Smob_Health matches 50..70 if score timer5 Smob_rng matches 45..46 as @e[distance=..7,type=!iron_golem] run effect give @s instant_damage 1 1 true
execute if score @s Smob_Health matches 50..70 if score timer5 Smob_rng matches 45..46 as @a[distance=..40] run playsound entity.generic.explode hostile @s
execute if score @s Smob_Health matches 50..70 if score timer5 Smob_rng matches 45..46 as @a[distance=..40] run particle explosion ~ ~ ~ 2 0 2 0 5

execute if score @s Smob_Health matches 0..50 if score timer Smob_rng matches 1..20 run tp @s ^ ^ ^0.7 facing entity @p[gamemode=survival]
execute if score @s Smob_Health matches 0..50 if score timer Smob_rng matches 1..20 as @e[distance=..3,type=!iron_golem] run effect give @s instant_damage 1 2 true
execute if score @s Smob_Health matches 0..50 if score timer Smob_rng matches 19..20 run spreadplayers ~ ~ 0 1 false @s 

execute if score @s Smob_Health matches 0..50 if score timer Smob_rng matches 201..220 run tp @s ^ ^ ^0.7 facing entity @p[gamemode=survival]
execute if score @s Smob_Health matches 0..50 if score timer Smob_rng matches 201..220 as @e[distance=..3,type=!iron_golem] run effect give @s instant_damage 1 1 true
execute if score @s Smob_Health matches 0..50 if score timer Smob_rng matches 219..220 run spreadplayers ~ ~ 0 1 false @s 

execute if score @s Smob_Health matches 0..50 if score timer Smob_rng matches 401..420 run tp @s ^ ^ ^0.7 facing entity @p[gamemode=survival]
execute if score @s Smob_Health matches 0..50 if score timer Smob_rng matches 401..420 as @e[distance=..3,type=!iron_golem] run effect give @s instant_damage 1 1 true
execute if score @s Smob_Health matches 0..50 if score timer Smob_rng matches 419..420 run spreadplayers ~ ~ 0 1 false @s 

execute as @e[type=arrow,distance=..4] at @s run particle block barrier ~ ~ ~ 0 0 0 0 20
kill @e[type=arrow,distance=..4]
data modify entity @s AngryAt set from entity @p UUID