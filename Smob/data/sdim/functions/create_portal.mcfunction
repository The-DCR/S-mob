playsound entity.ender_eye.death master @a[distance=..7] ~ ~ ~
kill @e[type=item,distance=..1]
setblock ~ ~-1 ~ end_portal_frame
setblock ~ ~ ~ nether_portal
summon area_effect_cloud ~ ~-1 ~ {Particle:"reverse_portal",Duration:1000000000,Tags:["smob_portal"]}
execute as @e[type=area_effect_cloud,tag=smob_portal] at @s run execute align xyz run tp @s ~ ~ ~
execute as @e[type=area_effect_cloud,tag=smob_portal] at @s run tp ~0.5 ~ ~0.5