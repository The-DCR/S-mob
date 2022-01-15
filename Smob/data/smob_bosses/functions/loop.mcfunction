scoreboard players add timer Smob_rng 1
scoreboard players add @a Smob_timer 0
execute if score timer Smob_rng matches 600.. run scoreboard players set timer Smob_rng 0
scoreboard players add timer5 Smob_rng 1
execute if score timer5 Smob_rng matches 100.. run scoreboard players set timer5 Smob_rng 0

execute as @a[nbt={Inventory:[{id:"minecraft:gold_ingot",Slot:-106b,tag:{Ewar:1b}}]}] run effect give @s strength 1 0 true
execute as @a[nbt={Inventory:[{id:"minecraft:gold_ingot",Slot:-106b,tag:{Ewar:1b}}]}] run effect give @s haste 1 0 true
execute as @a[nbt={Inventory:[{id:"minecraft:coal",Slot:-106b,tag:{Efire:1b}}]}] run effect give @s fire_resistance 1 0 true
execute as @a[nbt={Inventory:[{id:"minecraft:coal",Slot:-106b,tag:{Efire:1b}}]}] at @s if block ~ ~-2 ~ lava run fill ~1 ~-1 ~1 ~-1 ~-2 ~-1 lava replace ice
execute as @a[nbt={Inventory:[{id:"minecraft:coal",Slot:-106b,tag:{Efire:1b}}]}] at @s if block ~ ~-1 ~ lava if block ~ ~-2 ~ lava if block ~ ~-1 ~1 lava if block ~1 ~-1 ~ lava if block ~-1 ~-1 ~ lava if block ~ ~-1 ~-1 lava if block ~ ~ ~ air run setblock ~ ~-1 ~ ice
execute as @a[nbt={Inventory:[{id:"minecraft:coal",Slot:-106b,tag:{Efire:1b}}]}] at @s if block ~ ~-1 ~ lava if block ~ ~-2 ~ lava if block ~ ~-1 ~1 lava if block ~1 ~-1 ~ lava if block ~-1 ~-1 ~ lava if block ~ ~-1 ~-1 lava if block ~ ~ ~ cave_air run setblock ~ ~-1 ~ ice
execute as @a[nbt={Inventory:[{id:"minecraft:coal",Slot:-106b,tag:{Efire:1b}}]}] at @s if block ~ ~-1 ~ lava if block ~ ~-2 ~ lava if block ~ ~-1 ~1 lava if block ~1 ~-1 ~ lava if block ~-1 ~-1 ~ lava if block ~ ~-1 ~-1 lava if block ~ ~ ~ void_air run setblock ~ ~-1 ~ ice
execute as @a[tag=!smob_def,nbt={Inventory:[{id:"minecraft:iron_ingot",Slot:-106b,tag:{Edef:1b}}]}] run effect give @s health_boost 1000000 2 true
execute as @a[nbt={Inventory:[{id:"minecraft:iron_ingot",Slot:-106b,tag:{Edef:1b}}]}] run tag @s add smob_def
execute as @a[tag=smob_def,nbt=!{Inventory:[{id:"minecraft:iron_ingot",Slot:-106b,tag:{Edef:1b}}]}] run effect clear @s health_boost
execute as @a[tag=smob_def,nbt=!{Inventory:[{id:"minecraft:iron_ingot",Slot:-106b,tag:{Edef:1b}}]}] run effect give @s poison 1 1 true
execute as @a[tag=smob_def,nbt=!{Inventory:[{id:"minecraft:iron_ingot",Slot:-106b,tag:{Edef:1b}}]}] run tag @s remove smob_def
execute as @a[nbt={Inventory:[{id:"minecraft:netherite_scrap",Slot:-106b,tag:{Wrel:1b}}]}] at @s run function smob_bosses:wither_relic_ability
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Cwg:1b}}}] at @s run function smob_bosses:cawwot_gwun

effect give @a[tag=smob_def] resistance 1 0 true
effect give @a[tag=smob_def] slowness 1 0 true

# Technopig
execute unless entity @e[tag=technopig] run bossbar set technopig players
execute as @e[tag=technopig,tag=!smob_summoning] at @s run function smob_bosses:ltechnopig

# Inferno_blaze
execute unless entity @e[tag=inferno] run bossbar set inferno players
execute as @e[tag=inferno,tag=!smob_summoning] at @s run function smob_bosses:linferno

# Enraged golem
execute unless entity @e[tag=eig] run bossbar set eig players
execute as @e[tag=eig,tag=!smob_summoning] at @s run function smob_bosses:lenraged_golem

# Absolute Wither
execute as @e[tag=abw,tag=!smob_summoning] at @s run function smob_bosses:lwither

# Cawwot gwun
execute as @e[tag=carrot_bullet,tag=smob_new] at @s run tp @s ~ ~ ~ facing entity @p
tag @e[tag=carrot_bullet,tag=smob_new] remove smob_new
execute as @e[tag=carrot_bullet] at @s run tp @s ^ ^ ^-1
scoreboard players add @e[tag=carrot_bullet] Smob_carrot 1
kill @e[tag=carrot_bullet,scores={Smob_carrot=60..}]
execute as @e[tag=carrot_bullet_h] at @s if entity @e[type=!armor_stand,type=!snowball,type=!item,distance=..1] run playsound entity.arrow.hit_player master @a ~ ~ ~
execute as @e[tag=carrot_bullet_h] at @s if entity @e[type=!armor_stand,type=!snowball,type=!item,distance=..1] run particle explosion ~ ~2 ~ 0 0 0 0 1
execute as @e[tag=carrot_bullet_h] at @s if entity @e[type=!armor_stand,type=!snowball,type=!item,distance=..1] run kill @e[type=armor_stand,tag=carrot_bullet,distance=..2]
execute as @e[tag=carrot_bullet] at @s if entity @e[type=!armor_stand,type=!snowball,type=!item,distance=..1] run playsound entity.arrow.hit_player master @a ~ ~ ~
execute as @e[tag=carrot_bullet] at @s if entity @e[type=!armor_stand,type=!snowball,type=!item,distance=..1] run particle explosion ~ ~2 ~ 0 0 0 0 1
execute as @e[tag=carrot_bullet] at @s if entity @e[type=!armor_stand,type=!snowball,type=!item,distance=..1] run kill @e[type=armor_stand,tag=carrot_bullet,distance=..2]
execute as @e[tag=carrot_bullet] at @s unless block ~ ~2 ~ air run playsound entity.arrow.hit master @a ~ ~ ~
execute as @e[tag=carrot_bullet] at @s unless block ~ ~2 ~ air run particle explosion ~ ~2 ~ 0 0 0 0 1
execute as @e[tag=carrot_bullet] at @s unless block ~ ~2 ~ air run kill @s