
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

# Laser game seconds timer
scoreboard players add #laser_game_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1
function switch:modes/laser_game/update_sidebar/timer/

# Start thing
execute if score #laser_game_seconds switch.data matches ..9 run kill @e[type=!player,type=!marker]
execute if score #laser_game_seconds switch.data matches 10 run kill @e[tag=switch.laser_game.base]
execute if score #laser_game_seconds switch.data matches 10 if data storage switch:main {map:"laser_game"} run summon item_frame 516 104 523 {Tags:["switch.laser_game.base"],Facing:2b,Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Glowing:1b}
execute if score #laser_game_seconds switch.data matches 10 if data storage switch:main {map:"operation_pigclaw"} run summon item_frame 36041 149 36011 {Tags:["switch.laser_game.base"],Facing:5b,Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Glowing:1b}
execute if score #laser_game_seconds switch.data matches 10 if data storage switch:main {map:"operation_pigclaw"} run summon item_frame 36041 149 36012 {Tags:["switch.laser_game.base"],Facing:5b,Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Glowing:1b}
execute if score #laser_game_seconds switch.data matches 10 if data storage switch:main {map:"nuketown"} run summon item_frame 72114 112 72090 {Tags:["switch.laser_game.base"],Facing:2b,Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Glowing:1b,Rotation:[180.0f,0.0f]}


# Base reload
scoreboard players remove #base_reload switch.data 1
execute if score #base_reload switch.data matches 0 run tellraw @a [{"text":"La base de bonus vient de se recharger !","color":"yellow"}]
execute if score #base_reload switch.data matches 0 run setblock 516 104 523 iron_trapdoor[powered=true,open=true]
execute if score #base_reload switch.data matches 0 run setblock 36041 149 36011 iron_trapdoor[powered=true,open=true,facing=east]
execute if score #base_reload switch.data matches 0 run setblock 36041 149 36012 iron_trapdoor[powered=true,open=true,facing=east]
execute if score #base_reload switch.data matches 0 run setblock 72114 112 72090 iron_trapdoor[powered=true,open=true,facing=north]
execute if score #base_reload switch.data matches 0 as @e[tag=switch.laser_game.base] run data modify entity @s Item set value {id:"minecraft:experience_bottle",Count:1b}
execute if score #base_reload switch.data matches 1.. run setblock 516 104 523 dark_oak_trapdoor[powered=true,open=true]
execute if score #base_reload switch.data matches 1.. run setblock 36041 149 36011 dark_oak_trapdoor[powered=true,open=true,facing=east]
execute if score #base_reload switch.data matches 1.. run setblock 36041 149 36012 dark_oak_trapdoor[powered=true,open=true,facing=east]
execute if score #base_reload switch.data matches 1.. run setblock 72114 112 72090 dark_oak_trapdoor[powered=true,open=true,facing=north]


# Bonus mitraillette + change color
scoreboard players remove #mitraillette switch.data 1
scoreboard players remove #change_color switch.data 1
execute if score #mitraillette switch.data matches ..0 run tag @a[tag=switch.bonus.fast] remove switch.bonus.fast
execute if score #change_color switch.data matches ..0 run team join switch.laser_game.blue @a[tag=switch.bonus.color,tag=switch.laser_game.blue]
execute if score #change_color switch.data matches ..0 run team join switch.laser_game.red @a[tag=switch.bonus.color,tag=switch.laser_game.red]
execute if score #change_color switch.data matches ..0 run tag @a[tag=switch.bonus.color] remove switch.bonus.color

