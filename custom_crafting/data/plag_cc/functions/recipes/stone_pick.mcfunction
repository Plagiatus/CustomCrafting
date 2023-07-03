scoreboard players set #craft plag_cc.tmp 0
scoreboard players set #air plag_cc.tmp 0

execute as @e[tag=active_craft,scores={plag_cc.slot_id=0..2},nbt={item:{id:"minecraft:cobblestone"}}] run scoreboard players add #craft plag_cc.tmp 1
execute as @e[tag=active_craft,scores={plag_cc.slot_id=4},nbt={item:{id:"minecraft:stick"}}] run scoreboard players add #craft plag_cc.tmp 1
execute as @e[tag=active_craft,scores={plag_cc.slot_id=7},nbt={item:{id:"minecraft:stick"}}] run scoreboard players add #craft plag_cc.tmp 1
execute as @e[tag=active_craft,scores={plag_cc.slot_id=0..8},nbt={item:{id:"minecraft:air"}}] run scoreboard players add #air plag_cc.tmp 1

execute if score #craft plag_cc.tmp matches 5 if score #air plag_cc.tmp matches 4 run function plag_cc:hit/craft_success
execute if score #craft plag_cc.tmp matches 5 if score #air plag_cc.tmp matches 4 run data merge entity @e[type=item,tag=plag_cc.crafted_item,limit=1] {Item:{Count:1b,id:"minecraft:stone_pickaxe"}}