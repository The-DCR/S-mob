particle ash ~ ~ ~ 3 3 3 0 1
execute if entity @s[scores={Smob_timer=-1},nbt={OnGround:1b}] run scoreboard players set @s Smob_timer 0
execute if block ~ ~-1 ~ air run tag @s[scores={Smob_sneak=1..}] add smob_doublejump
execute if block ~ ~-1 ~ cave_air run tag @s[scores={Smob_sneak=1..}] add smob_doublejump
execute if block ~ ~-1 ~ void_air run tag @s[scores={Smob_sneak=1..}] add smob_doublejump
scoreboard players add @s[tag=smob_doublejump,scores={Smob_timer=0..}] Smob_timer 1
execute if block ~ ~-1 ~ air run effect give @s[tag=smob_doublejump,scores={Smob_timer=1..}] minecraft:levitation 1 80 true
execute if block ~ ~-1 ~ cave_air run effect give @s[tag=smob_doublejump,scores={Smob_timer=1..}] minecraft:levitation 1 80 true
execute if block ~ ~-1 ~ void_air run effect give @s[tag=smob_doublejump,scores={Smob_timer=1..}] minecraft:levitation 1 80 true
execute if block ~ ~-1 ~ air if entity @s[tag=smob_doublejump,scores={Smob_timer=1..}] run particle large_smoke ~ ~-1.5 ~ 0.5 1 0.5 0 50
execute if block ~ ~-1 ~ cave_air if entity @s[tag=smob_doublejump,scores={Smob_timer=1..}] run particle large_smoke ~ ~-1.5 ~ 0.5 1 0.5 0 50
execute if block ~ ~-1 ~ void_air if entity @s[tag=smob_doublejump,scores={Smob_timer=1..}] run particle large_smoke ~ ~-1.5 ~ 0.5 1 0.5 0 50
effect clear @s[tag=smob_doublejump,scores={Smob_timer=3..}] minecraft:levitation
scoreboard players set @s[scores={Smob_sneak=1..}] Smob_sneak 0
tag @s[tag=smob_doublejump,scores={Smob_timer=3..}] remove smob_doublejump
scoreboard players set @s[scores={Smob_timer=3..}] Smob_timer -1
execute if block ~ ~-3 ~ air run effect give @s jump_boost 1 255 true
execute if block ~ ~-3 ~ cave_air run effect give @s jump_boost 1 255 true
execute if block ~ ~-3 ~ void_air run effect give @s jump_boost 1 255 true