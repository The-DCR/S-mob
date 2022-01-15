execute as @a[nbt={SelectedItem:{id:"minecraft:cooked_porkchop",tag:{Enchanted:1b}}}] run tag @s add smob_porkchop
execute as @a[nbt={SelectedItem:{id:"minecraft:cooked_beef",tag:{Enchanted:1b}}}] run tag @s add smob_beef
execute as @a[nbt={SelectedItem:{id:"minecraft:apple",tag:{Enchanted:1b}}}] run tag @s add smob_apple
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_carrot",tag:{Enchanted:1b}}}] run tag @s add smob_golden_carrot

execute as @a[nbt={Inventory:[{id:"minecraft:cooked_porkchop",Slot:-106b,tag:{Enchanted:1b}}]}] run tag @s add smob_porkchop
execute as @a[nbt={Inventory:[{id:"minecraft:cooked_beef",Slot:-106b,tag:{Enchanted:1b}}]}] run tag @s add smob_beef
execute as @a[nbt={Inventory:[{id:"minecraft:apple",Slot:-106b,tag:{Enchanted:1b}}]}] run tag @s add smob_apple
execute as @a[nbt={Inventory:[{id:"minecraft:golden_carrot",Slot:-106b,tag:{Enchanted:1b}}]}] run tag @s add smob_golden_carrot

execute as @a[tag=smob_porkchop] run function sfood:ench_porkchop
execute as @a[tag=smob_beef] run function sfood:ench_beef
execute as @a[tag=smob_apple] run function sfood:ench_apple
execute as @a[tag=smob_golden_carrot] run function sfood:ench_golden_carrot

execute as @a[nbt=!{SelectedItem:{id:"minecraft:cooked_porkchop",tag:{Enchanted:1b}}},nbt=!{Inventory:[{id:"minecraft:cooked_porkchop",Slot:-106b,tag:{Enchanted:1b}}]}] run tag @s remove smob_porkchop
execute as @a[nbt=!{SelectedItem:{id:"minecraft:cooked_beef",tag:{Enchanted:1b}}},nbt=!{Inventory:[{id:"minecraft:cooked_beef",Slot:-106b,tag:{Enchanted:1b}}]}] run tag @s remove smob_beef
execute as @a[nbt=!{SelectedItem:{id:"minecraft:apple",tag:{Enchanted:1b}}},nbt=!{Inventory:[{id:"minecraft:apple",Slot:-106b,tag:{Enchanted:1b}}]}] run tag @s remove smob_apple
execute as @a[nbt=!{SelectedItem:{id:"minecraft:golden_carrot",tag:{Enchanted:1b}}},nbt=!{Inventory:[{id:"minecraft:golden_carrot",Slot:-106b,tag:{Enchanted:1b}}]}] run tag @s remove smob_golden_carrot

scoreboard players set @a[nbt=!{SelectedItem:{id:"minecraft:cooked_porkchop",tag:{Enchanted:1b}}},nbt=!{Inventory:[{id:"minecraft:cooked_porkchop",Slot:-106b,tag:{Enchanted:1b}}]}] smob_porkchop 0
scoreboard players set @a[nbt=!{SelectedItem:{id:"minecraft:cooked_beef",tag:{Enchanted:1b}}},nbt=!{Inventory:[{id:"minecraft:cooked_beef",Slot:-106b,tag:{Enchanted:1b}}]}] smob_beef 0
scoreboard players set @a[nbt=!{SelectedItem:{id:"minecraft:apple",tag:{Enchanted:1b}}},nbt=!{Inventory:[{id:"minecraft:apple",Slot:-106b,tag:{Enchanted:1b}}]}] smob_apple 0
scoreboard players set @a[nbt=!{SelectedItem:{id:"minecraft:golden_carrot",tag:{Enchanted:1b}}},nbt=!{Inventory:[{id:"minecraft:golden_carrot",Slot:-106b,tag:{Enchanted:1b}}]}] smob_golden_carrot 0