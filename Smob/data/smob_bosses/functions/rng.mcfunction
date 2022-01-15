scoreboard players operation main Smob_rng *= multiplier Smob_rng
scoreboard players add main Smob_rng 865112262
execute if score main Smob_rng matches ..-1 run scoreboard players operation main Smob_rng *= minus Smob_rng
scoreboard players operation output Smob_rng = main Smob_rng 
scoreboard players operation output Smob_rng %= sixty Smob_rng