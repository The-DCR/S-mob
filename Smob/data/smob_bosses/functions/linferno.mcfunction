execute store result score @s Smob_Health run data get entity @s Health
execute store result bossbar inferno value run data get entity @s Health
bossbar set inferno players @a[distance=..50]

particle small_flame ~ ~1 ~ 0 0 0 0.2 2 normal

execute if score @s[tag=smob_p1] Smob_Health matches 40..67 run bossbar set inferno name {"text":"Inferno Blaze:phase2","color":"#FF7700"}
execute if score @s[tag=smob_p1] Smob_Health matches 40..67 run tag @s add smob_p2
execute if score @s[tag=smob_p1] Smob_Health matches 40..67 run tag @s remove smob_p1

execute if score @s[tag=smob_p2] Smob_Health matches 0..39 run bossbar set inferno name {"text":"Inferno Blaze:phase3","color":"#FF7700"}
execute if score @s[tag=smob_p2] Smob_Health matches 0..39 run tag @s add smob_p3
execute if score @s[tag=smob_p2] Smob_Health matches 0..39 run tag @s remove smob_p2

execute as @a[distance=..30] run effect clear @s fire_resistance
execute as @a[distance=..30] unless entity @s[nbt={Fire:-20s}] run effect give @s poison 1 9 true

execute if score @s Smob_Health matches 40..67 at @p[distance=..30,gamemode=survival] if block ~ ~5 ~ air run tp @s ~ ~6 ~
execute if score @s Smob_Health matches 40..67 if score timer5 Smob_rng matches 25..26 if entity @p[distance=..40,gamemode=survival] run summon arrow ~ ~ ~ {Fire:200,PierceLevel:10b,Potion:"minecraft:strong_harming"}
execute if score @s Smob_Health matches 40..67 if score timer5 Smob_rng matches 50..51 if entity @p[distance=..40,gamemode=survival] run summon fireball ~ ~ ~ {power:[0.0,-0.1,0.0]}
execute if score @s Smob_Health matches 40..67 if score timer5 Smob_rng matches 75..76 if entity @p[distance=..40,gamemode=survival] run summon arrow ~ ~ ~ {Fire:200,PierceLevel:10b,Potion:"minecraft:strong_harming"}
execute if score @s Smob_Health matches 40..67 if score timer5 Smob_rng matches 100..101 if entity @p[distance=..40,gamemode=survival] run summon fireball ~ ~ ~ {power:[0.0,-0.1,0.0]}

execute if score @s Smob_Health matches 0..39 if score timer5 Smob_rng matches 0..1 at @p[distance=..40,gamemode=survival] run spreadplayers ~ ~ 1 10 false @e[tag=inferno]
execute if score @s Smob_Health matches 0..39 if score timer5 Smob_rng matches 40..41 run summon area_effect_cloud ~ ~1 ~ {Duration:50,Tags:["Smob_flame"]}
execute if score timer5 Smob_rng matches 45..46 as @e[tag=Smob_flame] at @s run tp @s ~ ~ ~ facing entity @p[distance=..40,gamemode=survival]
execute as @e[tag=Smob_flame] at @s run tp @s ^ ^ ^0.3
execute as @e[tag=Smob_flame] at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1
execute as @e[tag=Smob_flame] at @s as @p[distance=..1] run effect give @s instant_damage 1 2 true