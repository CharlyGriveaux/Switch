
## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team leave @a

kill @e[type=!player]
kill @e[type=!player]

effect give @a saturation infinite 255 true
effect give @a resistance infinite 255 true
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

## Téléportation des joueurs
function switch:choose_map_for/snowball_painter

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Snowball Painter, vous avez 5 secondes de préparation !"}]

scoreboard players set #snowball_painter_seconds switch.data -5
scoreboard players set #snowball_painter_ticks switch.data 0
scoreboard players set #remaining_time switch.data 1000
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.color dummy
scoreboard objectives add switch.temp.points dummy {"text":" Points ","color":"red"}
scoreboard objectives setdisplay sidebar switch.temp.points

## Order selection
scoreboard players set #position switch.data 0
execute as @a[sort=random] run function switch:modes/snowball_painter/define_color

