# executed as the entity to check against
data modify storage plag:cc UUID_tmp set from storage plag:cc UUID
scoreboard players set @s plag_cc.tmp -1

execute store success score @s plag_cc.tmp run data modify storage plag:cc UUID_tmp set from entity @s interaction.player

execute if score @s plag_cc.tmp matches 0 run tag @s add active
execute if score @s plag_cc.tmp matches 0 run data remove entity @s interaction