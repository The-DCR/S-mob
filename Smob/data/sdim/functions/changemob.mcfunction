execute as @e[type=zombie,tag=!Echecked,distance=0..] at @s run function sdim:zombie
execute as @e[type=husk,tag=!Echecked,distance=0..] at @s run function sdim:zombie
execute as @e[type=creeper,tag=!Echecked,distance=0..] at @s run function sdim:creeper
execute as @e[type=skeleton,tag=!Echecked,distance=0..] at @s run function sdim:skeleton
execute as @e[type=stray,tag=!Echecked,distance=0..] at @s run function sdim:skeleton
execute as @e[type=pillager,tag=!Echecked,distance=0..] at @s run function sdim:pillager
execute as @e[type=villager,tag=!Echecked,distance=0..] at @s run function sdim:pillager
execute as @e[type=piglin,tag=!Echecked,distance=0..] at @s run function sdim:piglin
execute as @e[type=zombified_piglin,tag=!Echecked,distance=0..] at @s run function sdim:piglin_convert
execute as @e[type=enderman,tag=!Echecked,distance=0..] at @s run function sdim:enderman
execute as @e[type=spider,tag=!Echecked,distance=0..] at @s run function sdim:spider

execute at @a if block ~ ~ ~ #beds run summon creeper ~ ~ ~ {ExplosionRadius:1b,Fuse:0,Tags:["Echecked"]}