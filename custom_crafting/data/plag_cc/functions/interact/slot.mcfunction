execute if data entity @s item run tag @s add has_item

execute as @s[tag=has_item] at @s run summon item ~ ~ ~ {Item:{Count:1b,id:"minecraft:oak_button"},Tags:["plag_cc.new_item"],Motion:[0d,0.2d,0d]}
execute as @e[tag=has_item] run data modify entity @e[type=item,tag=plag_cc.new_item,limit=1] Item set from entity @s item
execute as @e[tag=has_item] run data remove entity @s item

tag @s remove has_item
tag @e remove plag_cc.new_item

data modify entity @s item set from entity @p[tag=plag_cc.player] SelectedItem
data modify entity @s item.Count set value 1b
item modify entity @p[tag=plag_cc.player] weapon.mainhand plag_cc:decrease_amount