
## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team leave @a
tag @a add switch.first_life
tag @a add switch.second_life
tag @a add switch.third_life

kill @e[type=item]
kill @e[type=arrow]

effect give @a speed infinite 0 true
effect give @a jump_boost infinite 2 true
effect give @a saturation infinite 255 true
effect give @a resistance infinite 255 true
effect give @a regeneration 5 255 true
difficulty normal
time set 6000
weather clear

## Téléportation des joueurs
scoreboard players set #is_adventure switch.data 1
function switch:choose_map_for/pitchout
scoreboard players set #spawn_count switch.data 0
execute if data storage switch:main {map:"pitchout_1"} as @a[sort=random] run function switch:modes/pitchout/map_1/tp_give
execute as @a run function switch:modes/pitchout/xp_bar

gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Pitchout, exterminez les autres !"}]

scoreboard objectives add switch.temp.cooldown dummy
scoreboard players set @a switch.temp.cooldown 120

scoreboard players set #pitchout_seconds switch.data -5
scoreboard players set #pitchout_ticks switch.data 0
scoreboard players set #process_end switch.data 0

