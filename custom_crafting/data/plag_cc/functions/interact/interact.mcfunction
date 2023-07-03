advancement revoke @s only plag_cc:interact

tag @s add plag_cc.player
function plag_cc:interact/check
execute as @e[type=interaction,tag=plag_cc,tag=active,tag=plag_cc.slot] at @s run function plag_cc:interact/find_slot
execute as @e[type=interaction,tag=plag_cc,tag=active,tag=plag_cc.bench] at @s run function plag_cc:interact/bench

tag @e[tag=active,tag=plag_cc] remove active
tag @s remove plag_cc.player