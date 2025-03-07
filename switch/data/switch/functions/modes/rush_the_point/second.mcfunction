
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #rush_the_point_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1
function switch:modes/rush_the_point/update_sidebar/timer/

execute if score #rush_the_point_seconds switch.data matches ..-1 run effect give @a jump_boost 100 250 true
execute if score #rush_the_point_seconds switch.data matches ..-1 run effect give @a slowness 100 250 true
execute if score #rush_the_point_seconds switch.data matches ..-1 run effect give @a blindness 100 250 true
execute if score #rush_the_point_seconds switch.data matches ..-1 run effect give @a night_vision 100 250 true
execute if score #rush_the_point_seconds switch.data matches ..-1 run effect give @a darkness 100 250 true
execute if score #rush_the_point_seconds switch.data matches ..-1 run setblock 14000 100 13925 air
execute if score #rush_the_point_seconds switch.data matches ..-1 run setblock 14000 100 14000 air
execute if score #rush_the_point_seconds switch.data matches ..-1 run setblock 14000 100 14075 air
execute if score #rush_the_point_seconds switch.data matches ..-1 run setblock 14000 86 14000 air

execute if score #rush_the_point_seconds switch.data matches 0 run effect clear @a

execute if score #remaining_time switch.data matches 1.. run function switch:modes/rush_the_point/xp_bar
execute if score #remaining_time switch.data matches 1.. if score #color switch.data matches 1 run scoreboard players add #red_points switch.data 10
execute if score #remaining_time switch.data matches 1.. if score #color switch.data matches 2 run scoreboard players add #blue_points switch.data 10
execute if score #remaining_time switch.data matches 1.. if score #color switch.data matches 1 run function switch:modes/rush_the_point/update_sidebar/red_points/
execute if score #remaining_time switch.data matches 1.. if score #color switch.data matches 2 run function switch:modes/rush_the_point/update_sidebar/blue_points/

# Bonus
scoreboard players add #bonus_reload switch.data 1
execute if score #bonus_reload switch.data matches 60.. run function switch:modes/rush_the_point/bonus_reload

# Bridge snowballs
execute if score #bonus_reload switch.data matches 0 run summon item 14063 103 14000 {Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Bridge Snowball","color":"yellow","italic":false}'}}},NoGravity:1b,Glowing:1b,CustomName:'{"text":"Bridge Snowball","color":"yellow","italic":false}',CustomNameVisible:1b}
execute if score #bonus_reload switch.data matches 0 run summon item 13937 103 14000 {Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Bridge Snowball","color":"yellow","italic":false}'}}},NoGravity:1b,Glowing:1b,CustomName:'{"text":"Bridge Snowball","color":"yellow","italic":false}',CustomNameVisible:1b}
execute if score #bonus_reload switch.data matches 31 run summon item 14063 103 14000 {Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Bridge Snowball","color":"yellow","italic":false}'}}},NoGravity:1b,Glowing:1b,CustomName:'{"text":"Bridge Snowball","color":"yellow","italic":false}',CustomNameVisible:1b}
execute if score #bonus_reload switch.data matches 31 run summon item 13937 103 14000 {Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Bridge Snowball","color":"yellow","italic":false}'}}},NoGravity:1b,Glowing:1b,CustomName:'{"text":"Bridge Snowball","color":"yellow","italic":false}',CustomNameVisible:1b}

