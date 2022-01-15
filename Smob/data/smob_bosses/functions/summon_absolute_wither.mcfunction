fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
kill @e[type=item,distance=..3]
summon wither ~ ~ ~ {Tags:["abw","smob_summoning","smob_p1"],CustomNameVisible:1b,CustomName:'{"text":"Absolute Wither","color":"black"}',DeathLootTable:"smob_bosses:entities/absolutewither",Invul:300}
execute as @e[tag=abw,tag=smob_summoning] at @s run title @a[distance=..50] title {"text":"Absolute Wither","color":"dark_gray"}
execute as @e[tag=abw,tag=smob_summoning] at @s run title @a[distance=..50] subtitle {"text":"The god of decay","color":"dark_gray"}
execute as @e[tag=abw,tag=smob_summoning] at @s run playsound entity.dragon_fireball.explode master @a[distance=..70]
execute as @e[tag=abw,tag=smob_summoning] at @s run playsound entity.ender_dragon.growl master @a[distance=..70]
execute as @e[tag=abw,tag=smob_summoning] at @s run team join wither
execute as @e[tag=abw,tag=smob_summoning] at @s run scoreboard players set @s Smob_timer 0 
execute as @e[tag=abw,tag=smob_summoning] at @s run tag @s remove smob_summoning