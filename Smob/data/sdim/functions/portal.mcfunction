execute unless block ~ ~1 ~ nether_portal run fill ~ ~ ~ ~ ~1 ~ air
execute unless block ~ ~1 ~ nether_portal run kill @s

execute unless block ~ ~ ~ end_portal_frame run fill ~ ~ ~ ~ ~1 ~ air
execute unless block ~ ~ ~ end_portal_frame run kill @s

particle campfire_signal_smoke 
particle ash ~ ~ ~ 3 3 3 0.1 2

execute as @e[distance=..1,type=!armor_stand,type=!area_effect_cloud] at @s if block ~ ~1 ~ nether_portal run function sdim:teleport_to_dim
execute as @e[distance=..1,type=!armor_stand,type=!area_effect_cloud] at @s if block ~ ~1 ~ nether_portal run function sdim:teleport_to_dim_r