
execute if entity @s[tag=switch.first_life,tag=!switch.second_life] run tellraw @a [{"selector":"@s","color":"dark_red"},{"text":" est mort définitivement, il a survécu "},{"score":{"name":"#pitchout_seconds","objective":"switch.data"}},{"text":" secondes !"}]
execute if entity @s[tag=switch.second_life,tag=!switch.third_life] run tellraw @a [{"selector":"@s","color":"red"},{"text":" est tombé, il ne lui reste plus qu'une vie !"}]
execute if entity @s[tag=switch.third_life] run tellraw @a [{"selector":"@s","color":"red"},{"text":" est tombé, il lui reste seulement 2 vies !"}]

tag @s[tag=switch.first_life,tag=!switch.second_life] remove switch.first_life
tag @s[tag=switch.second_life,tag=!switch.third_life] remove switch.second_life
tag @s[tag=switch.third_life] remove switch.third_life
execute if entity @s[tag=switch.first_life] if data storage switch:main {map:"pitchout_1"} run function switch:modes/pitchout/map_1/tp_give

gamemode spectator @s[tag=!switch.first_life]
execute if entity @s[tag=!switch.first_life] at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
effect clear @s[tag=!switch.first_life]
clear @s[tag=!switch.first_life]

