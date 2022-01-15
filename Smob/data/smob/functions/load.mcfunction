scoreboard objectives add Smob_EliteCount dummy
scoreboard objectives add Smob_rng dummy
scoreboard objectives add Smob_Health dummy
scoreboard objectives add Smob_timer dummy
scoreboard players set @a Smob_timer 0
scoreboard players set multiplier Smob_rng 923013501
scoreboard players set minus Smob_rng -1
scoreboard players set sixty Smob_rng 60
tellraw @a {"text":"Reloaded", "color":"blue"}