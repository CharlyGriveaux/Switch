
data modify entity @s Pos set value [65006.5d, 109.5d, 65003.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/orange_rings/spread_players
scoreboard players reset #do_spreadplayers switch.data

