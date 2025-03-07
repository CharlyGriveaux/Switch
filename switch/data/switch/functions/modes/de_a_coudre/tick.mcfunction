
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #de_a_coudre_ticks switch.data 1

## Global tick
execute as @e[type=player,gamemode=adventure,predicate=switch:in_water] at @s run function switch:modes/de_a_coudre/done
execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10] run function switch:modes/de_a_coudre/death
execute unless score #rounds switch.data matches 0 if score #detect_end switch.data matches 0 unless entity @a[gamemode=adventure] run function switch:modes/de_a_coudre/next_player

# XP bar
function switch:modes/de_a_coudre/xp_bar
execute if score #remaining_time switch.data matches -120.. run scoreboard players remove #remaining_time switch.data 1
execute if score #remaining_time switch.data matches 0 as @a[gamemode=adventure] at @s if entity @s[y=190,dy=100] run kill @s
execute if score #remaining_time switch.data matches -120 run kill @a[gamemode=adventure]


## Fin de partie
execute if score #detect_end switch.data matches 0 if score #rounds switch.data matches 0 run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 0 if score #de_a_coudre_seconds switch.data matches 1200.. run scoreboard players set #detect_end switch.data 2
execute if score #detect_end switch.data matches 1 run function switch:modes/de_a_coudre/process_end

