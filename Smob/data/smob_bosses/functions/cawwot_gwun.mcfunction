execute if score @s Smob_carrot matches 1.. run summon armor_stand ^ ^ ^2 {Invisible:1b,NoGravity:1b,Tags:["carrot_bullet","smob_new"],Passengers:[{id:"minecraft:snowball",Tags:["carrot_bullet_h"],Item:{id:"minecraft:carrot",Count:1b}}]}
execute if score @s Smob_carrot matches 1.. run playsound entity.arrow.shoot master @a ~ ~ ~
scoreboard players set @a[scores={Smob_carrot=1..}] Smob_carrot 0