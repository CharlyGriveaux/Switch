
tag @s add switch.temp

scoreboard players set #color switch.data 0
execute store success score #color switch.data if entity @s[team=switch.laser_game.red]

scoreboard players set @s switch.temp.cooldown -20
scoreboard players set @s[tag=switch.bonus.fast] switch.temp.cooldown -4
playsound mechanization:gadgets.laser_gun ambient @s

function iris:setup/load
execute anchored eyes positioned ^ ^ ^ run function iris:get_target
execute as @e[tag=iris.ray] run function iris:set_coordinates
execute if entity @s[tag=switch.laser_game.blue] as @e[tag=iris.target,tag=switch.laser_game.red,tag=!global.ignore] at @s run function switch:modes/laser_game/shooted_player_red
execute if entity @s[tag=switch.laser_game.red] as @e[tag=iris.target,tag=switch.laser_game.blue,tag=!global.ignore] at @s run function switch:modes/laser_game/shooted_player_blue
execute at @e[tag=iris.ray] if block ~ ~ ~.01 iron_trapdoor run function switch:modes/laser_game/shooted_base
execute as @e[tag=iris.ray] at @s run function switch:modes/laser_game/shoot_particles

kill @e[type=marker, tag=iris.ray]
tag @e[type=!#iris:ignore] remove iris.target
tag @s remove switch.temp

