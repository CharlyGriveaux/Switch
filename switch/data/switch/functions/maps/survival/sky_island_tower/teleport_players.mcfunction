
data modify entity @s Pos set value [77052.5d, 183.5d, 77038.5d]
execute at @s run tp @a ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/sky_island_tower/spread_players
scoreboard players reset #do_spreadplayers switch.data

