fill ~1 ~-1 ~1 ~-1 ~-2 ~-1 air
kill @e[type=item,distance=..3]
summon iron_golem ~ ~ ~ {Tags:["eig","smob_summoning","smob_p1"],CustomNameVisible:1b,CustomName:'{"text":"Enraged Golem","color":"#BEBEBE"}',DeathLootTable:"smob_bosses:entities/enragedgolem"}
execute as @e[tag=eig,tag=smob_summoning] at @s run effect give @s resistance 1000000 3 true
execute as @e[tag=eig,tag=smob_summoning] at @s run title @a[distance=..50] title {"text":"Enraged Golem","color":"#BEBEBE"}
execute as @e[tag=eig,tag=smob_summoning] at @s run title @a[distance=..50] subtitle {"text":"The god of protection","color":"dark_gray"}
execute as @e[tag=eig,tag=smob_summoning] at @s run playsound block.anvil.use master @a[distance=..50]
execute as @e[tag=eig,tag=smob_summoning] at @s run playsound entity.ravager.roar master @a[distance=..50]
execute as @e[tag=eig,tag=smob_summoning] at @s run bossbar remove eig
execute as @e[tag=eig,tag=smob_summoning] at @s run bossbar add eig {"text":"Enraged Iron golem:phase1","color":"#BEBEBE"}
execute as @e[tag=eig,tag=smob_summoning] at @s run bossbar set eig color white
execute as @e[tag=eig,tag=smob_summoning] at @s run bossbar set eig max 100
execute as @e[tag=eig,tag=smob_summoning] at @s run bossbar set eig style notched_10
execute as @e[tag=eig,tag=smob_summoning] at @s run bossbar set eig visible true
execute as @e[tag=eig,tag=smob_summoning] at @s run tag @s remove smob_summoning