# finds the interaction entity that was interacted, tags it as "active".
# execute as the player

data modify storage plag:cc UUID set from entity @s UUID
execute at @s as @e[type=interaction,tag=plag_cc,distance=..5.5] if data entity @s interaction run function plag_cc:interact/check_helper