fill ~1 ~-1 ~1 ~-1 ~-2 ~-1 air
kill @e[type=item,distance=..3]
summon piglin ~ ~ ~ {IsBaby:0b,IsImmuneToZombification:1b,CannotHunt:1b,Tags:["technopig","smob_summoning","smob_p1","Echecked"],CustomNameVisible:1b,CustomName:'{"text":"Technopig","color":"#f61e61"}',ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:netherite_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}}],Attributes:[{Name:"generic.max_health",Base:100}],DeathLootTable:"smob_bosses:entities/technopig"}
item replace entity @e[tag=technopig] weapon.mainhand with crossbow{Enchantments:[{id:"minecraft:piercing",lvl:4s}]} 
effect give @e[tag=technopig,tag=smob_summoning] instant_health 1 120 true
execute as @e[tag=technopig,tag=smob_summoning] run attribute @s generic.follow_range base set 50
execute as @e[tag=technopig,tag=smob_summoning] run attribute @s generic.knockback_resistance base set 1000
execute as @e[tag=technopig,tag=smob_summoning] at @s run title @a[distance=..50] title {"text":"Technopig","color":"#e75480"}
execute as @e[tag=technopig,tag=smob_summoning] at @s run title @a[distance=..50] subtitle {"text":"The god of war","color":"dark_gray"}
execute as @e[tag=technopig,tag=smob_summoning] at @s run playsound entity.lightning_bolt.thunder master @a[distance=..50] ~ ~ ~
execute as @e[tag=technopig,tag=smob_summoning] at @s run playsound entity.lightning_bolt.impact master @a[distance=..50] ~ ~ ~
execute as @e[tag=technopig,tag=smob_summoning] at @s run bossbar remove technopig
execute as @e[tag=technopig,tag=smob_summoning] at @s run bossbar add technopig {"text":"Technopig:phase1","color":"#e75480"}
execute as @e[tag=technopig,tag=smob_summoning] at @s run bossbar set technopig color pink
execute as @e[tag=technopig,tag=smob_summoning] at @s run bossbar set technopig max 100
execute as @e[tag=technopig,tag=smob_summoning] at @s run bossbar set technopig style notched_6
execute as @e[tag=technopig,tag=smob_summoning] at @s run bossbar set technopig visible true
execute as @e[tag=technopig,tag=smob_summoning] at @s run tag @s remove smob_summoning