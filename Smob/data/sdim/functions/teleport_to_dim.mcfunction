execute in overworld as @s[distance=0..] at @s in smob:elite_dimension run tag @s add smob_teleporting
execute in smob:elite_dimension as @s[distance=0..] at @s in overworld run tag @s add smob_teleporting
execute in overworld as @s[distance=0..,tag=smob_teleporting] at @s in smob:elite_dimension run tp ~ ~ ~
execute in overworld run tag @s[distance=0..,tag=smob_teleporting] remove smob_teleporting