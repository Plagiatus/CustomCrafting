scoreboard players operation #tmp plag_cc.bench_id = @s plag_cc.id

# tellraw @a [{"score":{"name": "#tmp","objective": "plag_cc.bench_id"}}]

# execute align xyz as @e[dy=1,tag=plag_cc.slot,type=item_display] run tellraw @a [{"score":{"name": "@s","objective": "plag_cc.bench_id"}}, ", ", {"score":{"name": "#tmp","objective": "plag_cc.bench_id"}}]
execute align xyz as @e[dy=1,tag=plag_cc.slot,type=item_display] if score @s plag_cc.bench_id = #tmp plag_cc.bench_id run tag @s add active_craft

scoreboard players set #crafting_success plag_cc.tmp 0

execute if score #crafting_success plag_cc.tmp matches 0 run function plag_cc:recipes/stone_pick
execute if score #crafting_success plag_cc.tmp matches 0 run function plag_cc:recipes/stone_pick_fancy

tag @e remove active_craft