
data modify entity @s Pos set value [81000.5d, 101.5d, 81000.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/purple_sky_island/spread_players
scoreboard players reset #do_spreadplayers switch.data

