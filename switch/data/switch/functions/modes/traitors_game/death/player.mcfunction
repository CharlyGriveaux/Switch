
scoreboard players reset @s switch.temp.deathCount
tag @s[tag=!switch.traitors_game.second_life] remove switch.alive
gamemode spectator @s[tag=!switch.alive]
tp @s[tag=!switch.alive] 100 110 100
effect clear @s[tag=!switch.alive]
clear @s[tag=!switch.alive]


#Second life management for Ninja role
tellraw @s[tag=switch.traitors_game.second_life] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Vous est mort mais votre capacité de "},{"text":"ninja","color":"green"},{"text":" vous permet de revenir dans la partie !"}]
execute if entity @s[tag=switch.traitors_game.second_life] run function switch:modes/traitors_game/teleport_players
execute at @s[tag=switch.traitors_game.second_life] run playsound entity.wither.break_block ambient @s
attribute @s[tag=switch.traitors_game.second_life] generic.max_health base set 10.0
attribute @s[tag=switch.traitors_game.second_life] generic.movement_speed modifier add 1-1-1-1-1 "Ninja" 1.15 multiply_base
tag @s[tag=switch.traitors_game.second_life] remove switch.traitors_game.second_life


