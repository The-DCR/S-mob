execute store result score @s Smob_Health run data get entity @s Health
execute store result bossbar technopig value run data get entity @s Health
bossbar set technopig players @a[distance=..50]

effect give @s fire_resistance 1 0 true
execute if block ~ ~-2 ~ water if block ~ ~ ~ air run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 water replace magma_block
execute if block ~ ~-1 ~ water if block ~ ~ ~ air run fill ~ ~-1 ~ ~ ~-1 ~ magma_block replace water
execute if block ~ ~ ~ water run tp @s ~ ~0.3 ~

execute if score @s[tag=smob_p1] Smob_Health matches 32..83 run item replace entity @s weapon.mainhand with netherite_sword{Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:knockback",lvl:2s}]}
execute if score @s[tag=smob_p1] Smob_Health matches 32..83 run playsound entity.ender_dragon.hurt master @a[distance=..50]
execute if score @s[tag=smob_p1] Smob_Health matches 32..83 run bossbar set technopig name {"text":"Technopig:phase2","color":"#e75480"}
execute if score @s[tag=smob_p1] Smob_Health matches 32..83 run tag @s add smob_p2
execute if score @s[tag=smob_p1] Smob_Health matches 32..83 run tag @s remove smob_p1

execute if score @s[tag=smob_p2] Smob_Health matches 0..16 run item replace entity @s weapon.mainhand with netherite_axe{Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:knockback",lvl:2s}]}
execute if score @s[tag=smob_p1] Smob_Health matches 0..16 run playsound entity.ender_dragon.hurt master @a[distance=..50]
execute if score @s[tag=smob_p2] Smob_Health matches 0..16 run effect give @s strength 1000000 0
execute if score @s[tag=smob_p2] Smob_Health matches 0..16 run effect give @s speed 1000000 1 true
execute if score @s[tag=smob_p2] Smob_Health matches 0..16 run effect give @s fire_resistance 1000000 1 true
execute if score @s[tag=smob_p2] Smob_Health matches 0..16 run playsound entity.wandering_trader.drink_potion master @a[distance=..50]
execute if score @s[tag=smob_p2] Smob_Health matches 0..16 run bossbar set technopig name {"text":"Technopig:phase3","color":"#e75480"}
execute if score @s[tag=smob_p2] Smob_Health matches 0..16 run tag @s add smob_p3
execute if score @s[tag=smob_p2] Smob_Health matches 0..16 run tag @s remove smob_p2

execute if score timer Smob_rng matches 200..201 run tp @p[distance=..50,gamemode=survival]
execute if score timer Smob_rng matches 200..201 run playsound entity.ender_pearl.throw master @a[distance=..20] ~ ~ ~ 3

execute if score timer Smob_rng matches 500..501 run tp @p[distance=..50,gamemode=survival]
execute if score timer Smob_rng matches 500..501 run playsound entity.ender_pearl.throw master @a[distance=..20] ~ ~ ~ 3