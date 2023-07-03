summon interaction ~ ~ ~ {Tags:["plag_cc","new","plag_cc.slot"],width:0.125f,height:0.01f}
summon item_display ~ ~ ~ {Tags:["plag_cc","new","plag_cc.slot"],width:0.125f,height:0.01f,item_display:"fixed",transformation:[0.1250f,0.0000f,0.0000f,0.0000f,0.0000f,-0.0000f,0.1250f,0.0000f,0.0000f,-0.1250f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

scoreboard players add #total plag_cc.id 1

scoreboard players operation @e[tag=plag_cc.slot,tag=new] plag_cc.id = #total plag_cc.id
scoreboard players operation @e[tag=plag_cc.slot,tag=new] plag_cc.bench_id = #bench plag_cc.id
scoreboard players operation @e[tag=plag_cc.slot,tag=new] plag_cc.slot_id = #slot plag_cc.slot_id

tag @e[tag=plag_cc] remove new
scoreboard players add #slot plag_cc.slot_id 1