execute store result score @s Smob_Health run data get entity @s Health

execute if score @s[tag=!started] Smob_timer matches ..300 run scoreboard players add @s Smob_timer 1

execute as @e[type=wither_skeleton,distance=..5] run team join wither

execute if entity @s[tag=smob_p1] run particle large_smoke ~ ~1 ~ 7 7 7 0 5 normal
execute if entity @s[tag=smob_p2] run particle large_smoke ~ ~1 ~ 7 7 7 0 5 normal
execute if entity @s[tag=smob_p3] run particle large_smoke ~ ~1 ~ 7 7 7 0 50 normal
execute if entity @s[tag=smob_p4] run particle large_smoke ~ ~1 ~ 7 7 7 0 50 normal

execute if score @s[tag=!started] Smob_timer matches 50..100 at @a[distance=..50] run playsound block.note_block.bass master @p ~ ~ ~ 1 0.5
execute if score @s[tag=!started] Smob_timer matches 50..100 run particle large_smoke ~ ~ ~ 0 2 0 0 5
execute if score @s[tag=!started] Smob_timer matches 100..140 at @a[distance=..50] run playsound block.note_block.bass master @p ~ ~ ~ 1 0.6
execute if score @s[tag=!started] Smob_timer matches 100..140 run particle large_smoke ~ ~ ~ 1 2 1 0 10
execute if score @s[tag=!started] Smob_timer matches 140..180 at @a[distance=..50] run playsound block.note_block.bass master @p ~ ~ ~ 1 0.7
execute if score @s[tag=!started] Smob_timer matches 140..180 run particle large_smoke ~ ~ ~ 2 2 2 0 30
execute if score @s[tag=!started] Smob_timer matches 180..250 at @a[distance=..50] run playsound block.note_block.bass master @p ~ ~ ~ 1 1
execute if score @s[tag=!started] Smob_timer matches 180..250 run particle large_smoke ~ ~ ~ 3 2 3 0 70

execute if entity @s[tag=smob_p3] run effect give @a[distance=..10] blindness 2 1 true
execute if entity @s[tag=smob_p4] run effect give @a[distance=..10] blindness 1 1 true

execute if score @s[tag=!started] Smob_timer matches 290..291 run tag @s add started

execute if score @s[tag=smob_p1,tag=started] Smob_Health matches 200..250 run tag @s add smob_p2
execute if score @s[tag=smob_p1,tag=started] Smob_Health matches 200..250 run playsound entity.ender_dragon.growl master @a[distance=..70]
execute if score @s[tag=smob_p1,tag=started] Smob_Health matches 200..250 at @p[distance=..50] run summon wither_skeleton ~ ~ ~ {CustomNameVisible:1b,CustomName:'{"text":"Wither Minions","bold":true}',HandItems:[{id:"minecraft:netherite_sword",Count:1b},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:wither_skeleton_skull",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F]}
execute if score @s[tag=smob_p1,tag=started] Smob_Health matches 200..250 run tag @s remove smob_p1

execute if score @s[tag=smob_p2,tag=started] Smob_Health matches 100..200 run tag @s add smob_p3
execute if score @s[tag=smob_p2,tag=started] Smob_Health matches 100..200 run playsound entity.ender_dragon.growl master @a[distance=..70]
execute if score @s[tag=smob_p2,tag=started] Smob_Health matches 100..200 at @p[distance=..50] run summon wither_skeleton ~ ~ ~ {CustomNameVisible:1b,CustomName:'{"text":"Wither Minions","bold":true}',HandItems:[{id:"minecraft:netherite_sword",Count:1b},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:wither_skeleton_skull",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F]}
execute if score @s[tag=smob_p2,tag=started] Smob_Health matches 100..200 at @p[distance=..50] run summon wither_skeleton ~ ~ ~ {CustomNameVisible:1b,CustomName:'{"text":"Wither Minions","bold":true}',HandItems:[{id:"minecraft:netherite_sword",Count:1b},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:wither_skeleton_skull",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F]}
execute if score @s[tag=smob_p2,tag=started] Smob_Health matches 100..200 run tag @s remove smob_p2

execute if score @s[tag=smob_p3,tag=started] Smob_Health matches ..100 run tag @s add smob_p4
execute if score @s[tag=smob_p3,tag=started] Smob_Health matches ..100 run playsound entity.ender_dragon.growl master @a[distance=..70]
execute if score @s[tag=smob_p3,tag=started] Smob_Health matches ..100 at @p[distance=..50] run summon wither_skeleton ~ ~ ~ {CustomNameVisible:1b,CustomName:'{"text":"Wither Minions","bold":true}',HandItems:[{id:"minecraft:netherite_sword",Count:1b},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:wither_skeleton_skull",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F]}
execute if score @s[tag=smob_p3,tag=started] Smob_Health matches ..100 at @p[distance=..50] run summon wither_skeleton ~ ~ ~ {CustomNameVisible:1b,CustomName:'{"text":"Wither Minions","bold":true}',HandItems:[{id:"minecraft:netherite_sword",Count:1b},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:wither_skeleton_skull",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F]}
execute if score @s[tag=smob_p3,tag=started] Smob_Health matches ..100 at @p[distance=..50] run summon wither_skeleton ~ ~ ~ {CustomNameVisible:1b,CustomName:'{"text":"Wither Minions","bold":true}',HandItems:[{id:"minecraft:netherite_sword",Count:1b},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:wither_skeleton_skull",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F]}
execute if score @s[tag=smob_p3,tag=started] Smob_Health matches ..100 run tag @s remove smob_p3

execute if score timer5 Smob_rng matches 50..52 as @s[tag=smob_p2] at @a[distance=..50,gamemode=survival] run summon lightning_bolt
execute if score timer5 Smob_rng matches 50..52 as @s[tag=smob_p3] at @a[distance=..50,gamemode=survival] run summon lightning_bolt
execute if score timer5 Smob_rng matches 0..2 as @s[tag=smob_p3] at @a[distance=..50,gamemode=survival] run summon arrow ~ ~5 ~ {Potion:"minecraft:strong_harming"}
execute if score timer5 Smob_rng matches 0..2 as @s[tag=smob_p4] at @a[distance=..50,gamemode=survival] run summon lightning_bolt
execute as @s[tag=smob_p4] at @a[distance=..50,gamemode=survival] run effect give @a[distance=..30] levitation 1 1 true
execute if score timer5 Smob_rng matches 66..68 as @s[tag=smob_p4] at @a[distance=..50,gamemode=survival] run summon arrow ~ ~5 ~ {Potion:"minecraft:strong_harming"}