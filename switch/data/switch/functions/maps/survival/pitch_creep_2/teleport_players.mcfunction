
data modify entity @s Pos set value [38000.5d, 108.5d, 38000.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/pitch_creep_2/spread_players
scoreboard players reset #do_spreadplayers switch.data

