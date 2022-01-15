fill ~1 ~-1 ~1 ~-1 ~-2 ~-1 air
kill @e[type=item,distance=..3]
summon blaze ~ ~ ~ {Tags:["inferno","smob_summoning","smob_p1"],CustomNameVisible:1b,CustomName:'{"text":"Inferno Blaze","color":"#FF7700"}',Attributes:[{Name:"generic.armor",Base:20},{Name:"generic.armor_toughness",Base:12}],DeathLootTable:"smob_bosses:entities/infernoblaze"}
execute as @e[tag=inferno,tag=smob_summoning] at @s run effect give @s health_boost 1000000 14 true
execute as @e[tag=inferno,tag=smob_summoning] at @s run effect give @s resistance 1000000 2 true
execute as @e[tag=inferno,tag=smob_summoning] at @s run effect give @s instant_health 1 120 true
execute as @e[tag=inferno,tag=smob_summoning] at @s run title @a[distance=..50] title {"text":"Inferno blaze","color":"#FF7700"}
execute as @e[tag=inferno,tag=smob_summoning] at @s run title @a[distance=..50] subtitle {"text":"The god of fire","color":"dark_gray"}
execute as @e[tag=inferno,tag=smob_summoning] at @s run playsound entity.player.hurt_on_fire master @a[distance=..50] ~ ~ ~ 1 0.5
execute as @e[tag=inferno,tag=smob_summoning] at @s run playsound entity.dragon_fireball.explode master @a[distance=..50] ~ ~ ~ 1 2
execute as @e[tag=inferno,tag=smob_summoning] at @s run bossbar remove inferno
execute as @e[tag=inferno,tag=smob_summoning] at @s run bossbar add inferno {"text":"Inferno Blaze:phase1","color":"#FF7700"}
execute as @e[tag=inferno,tag=smob_summoning] at @s run bossbar set inferno color yellow
execute as @e[tag=inferno,tag=smob_summoning] at @s run bossbar set inferno max 80
execute as @e[tag=inferno,tag=smob_summoning] at @s run bossbar set inferno style notched_6
execute as @e[tag=inferno,tag=smob_summoning] at @s run bossbar set inferno visible true
execute as @e[tag=inferno,tag=smob_summoning] at @s run tag @s remove smob_summoning