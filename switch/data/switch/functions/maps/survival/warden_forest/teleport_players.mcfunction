
data modify entity @s Pos set value [10000.5d, 103.5d, 10000.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/warden_forest/spread_players
scoreboard players reset #do_spreadplayers switch.data

