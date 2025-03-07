
## Fonction executée tous les ticks lorsque le mode de jeu est activé

# Timer
scoreboard players add #layers_4_teams_ticks switch.data 1

# Détection des morts
execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10,sort=random] run function switch:modes/layers_4_teams/death

# Enchantement efficiency 5 sur les pioches
execute as @a run item modify entity @s weapon.mainhand switch:handheld/enchant_efficiency_5

## Détection de fin de partie
execute if score #remaining_time switch.data matches 1.. run function switch:modes/layers_4_teams/detect_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/layers_4_teams/process_end

