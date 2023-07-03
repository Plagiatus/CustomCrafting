execute as @e[tag=active_craft] run data remove entity @s item
execute at @e[tag=active_craft,scores={plag_cc.slot_id=4}] run summon item ~ ~ ~ {Item:{Count:1b,id:"minecraft:stone"},Tags:["plag_cc.crafted_item"]}
scoreboard players set #crafting_success plag_cc.tmp 1