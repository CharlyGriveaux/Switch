
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #pitch_creep_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #pitch_creep_seconds switch.data matches 0.. run function switch:modes/pitch_creep/xp_bar
execute if score #pitch_creep_seconds switch.data matches 0 as @a at @s run function switch:modes/pitch_creep/give_items

# Spawning creepers
execute if score #pitch_creep_seconds switch.data matches 0.. at @e[type=marker,tag=switch.selected_map,limit=1] run summon creeper ~ ~ ~ {AbsorptionAmount:2048f,Tags:["switch.new"],Attributes:[{Name:"generic.follow_range",Base:128}]}
execute if score #pitch_creep_seconds switch.data matches 0.. at @e[type=marker,tag=switch.selected_map,limit=1] run summon creeper ~ ~ ~ {AbsorptionAmount:2048f,Tags:["switch.new"],Attributes:[{Name:"generic.follow_range",Base:128}]}
execute if score #pitch_creep_seconds switch.data matches 0.. run tag @e[type=creeper,tag=switch.new] remove switch.new
execute if score #pitch_creep_seconds switch.data matches ..-1 run tp @e[type=!player,type=!marker] 0 -10000 0
execute if score #pitch_creep_seconds switch.data matches ..-1 run kill @e[type=!player,type=!marker]

# Spawn skeleton every 5 seconds
scoreboard players operation #temp switch.data = #pitch_creep_seconds switch.data
scoreboard players operation #temp switch.data %= #5 switch.data
execute if score #temp switch.data matches 0 at @e[type=marker,tag=switch.selected_map,limit=1] run summon skeleton ~ ~ ~ {AbsorptionAmount:2048f,Tags:["switch.new"],Attributes:[{Name:"generic.follow_range",Base:128}]}

