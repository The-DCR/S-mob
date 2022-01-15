execute if score EliteCreeper Smob_EliteCount matches 0 run summon creeper ~ ~ ~ {CustomName:'{"text":"Elite Creeper"}',Tags:["Elite"],powered:1b,ExplosionRadius:1b,Fuse:1,Attributes:[{Name:"generic.follow_range",Base:20}],DeathLootTable:"smob:entities/lootmedium"}
execute if score EliteCreeper Smob_EliteCount matches 0 run tp @s ~ ~-320 ~

tag @s add Echecked
scoreboard players add EliteCreeper Smob_EliteCount 1

execute if score EliteCreeper Smob_EliteCount matches 50 run scoreboard players set EliteCreeper Smob_EliteCount 0