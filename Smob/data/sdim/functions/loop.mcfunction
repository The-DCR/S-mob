execute in smob:elite_dimension run function sdim:changemob

execute as @e[type=area_effect_cloud,tag=smob_portal] at @s run function sdim:portal

execute as @e[type=item,nbt={Item:{id:"minecraft:quartz",Count:1b,tag:{Ecrystal:1b}}}] at @s as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},limit=1,distance=0..1] if block ~ ~-1 ~ ancient_debris run function sdim:create_portal