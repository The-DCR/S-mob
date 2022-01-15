effect give @e[type=creeper,tag=Elite] invisibility 1 1 true
effect give @e[tag=Elite] speed 1 2 true

execute at @e[type=enderman,tag=Elite] run particle smoke ~ ~1.5 ~ 0.3 0.3 0.3 0 15
execute at @e[type=creeper,tag=Elite] run particle dripping_lava ~ ~1.2 ~ 0.15 0.15 0.15 5 1