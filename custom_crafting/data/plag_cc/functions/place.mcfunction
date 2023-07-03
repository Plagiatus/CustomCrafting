setblock ~ ~ ~ crafting_table
execute align xyz run summon interaction ~.5 ~ ~.5 {Tags:["plag_cc","new","plag_cc.bench"],width:1.01f,height:1.01f}
scoreboard players add #total plag_cc.id 1
scoreboard players operation @e[tag=plag_cc.bench,tag=new] plag_cc.id = #total plag_cc.id
scoreboard players operation #bench plag_cc.id = #total plag_cc.id

scoreboard players set #slot plag_cc.slot_id 0

execute align xyz positioned ~.3125 ~1 ~.3125 run function plag_cc:util/init_slot
execute align xyz positioned ~.5 ~1 ~.3125 run function plag_cc:util/init_slot
execute align xyz positioned ~.6875 ~1 ~.3125 run function plag_cc:util/init_slot
execute align xyz positioned ~.3125 ~1 ~.5 run function plag_cc:util/init_slot
execute align xyz positioned ~.5 ~1 ~.5 run function plag_cc:util/init_slot
execute align xyz positioned ~.6875 ~1 ~.5 run function plag_cc:util/init_slot
execute align xyz positioned ~.3125 ~1 ~.6875 run function plag_cc:util/init_slot
execute align xyz positioned ~.5 ~1 ~.6875 run function plag_cc:util/init_slot
execute align xyz positioned ~.6875 ~1 ~.6875 run function plag_cc:util/init_slot

