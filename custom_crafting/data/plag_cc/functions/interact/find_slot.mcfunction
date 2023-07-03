scoreboard players operation #tmp plag_cc.id = @s plag_cc.id
execute as @e[type=item_display,distance=..1,tag=plag_cc] if score @s plag_cc.id = #tmp plag_cc.id run function plag_cc:interact/slot