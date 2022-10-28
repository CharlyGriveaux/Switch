
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #warden_escape_ticks switch.data 1

kill @e[type=item]

execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..5,sort=random] run function switch:modes/warden_escape/death

effect clear @a[predicate=!switch:is_sneaking] wither
effect give @a[predicate=switch:is_sneaking] wither 1 1 true

execute unless entity @a[tag=switch.alive] run function switch:modes/warden_escape/process_end
execute if score #remaining_time switch.data matches 0 run function switch:modes/warden_escape/process_end

