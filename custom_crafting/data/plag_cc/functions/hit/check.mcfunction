# finds the interaction entity that was hit, tags it as "active".
# execute as the player

data modify storage plag:cc UUID set from entity @s UUID
execute at @s as @e[type=interaction,tag=plag_cc.bench,distance=..5.5] if data entity @s attack run function plag_cc:hit/check_helper