
data modify entity @s Pos set value [1500.5d, 121.5d, 1500.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/traitor_original/spread_players
scoreboard players reset #do_spreadplayers switch.data

