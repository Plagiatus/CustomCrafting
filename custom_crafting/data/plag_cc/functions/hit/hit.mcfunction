advancement revoke @s only plag_cc:hit

function plag_cc:hit/check
execute as @e[tag=plag_cc.bench,tag=active] at @s run function plag_cc:hit/craft

tag @e[tag=active,tag=plag_cc] remove active