execute in smob:elite_dimension as @s[distance=0..] at @s in overworld run tag @s add smob_teleporting_r
execute in smob:elite_dimension as @s[distance=0..,tag=smob_teleporting_r] at @s in overworld run tp ~ ~ ~
execute in smob:elite_dimension run tag @s[distance=0..,tag=smob_teleporting_r] remove smob_teleporting_r