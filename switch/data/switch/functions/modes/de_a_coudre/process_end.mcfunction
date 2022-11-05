
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #position switch.data matches 1 run scoreboard players add @a[scores={switch.temp.lives=1..}] switch.money 1
execute if score #process_end switch.data matches 1 if score #position switch.data matches 1 run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[scores={switch.temp.lives=1..}]"}]
execute if score #process_end switch.data matches 1 unless score #position switch.data matches 1 run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Temps écoulé ! Il n'y a eu aucun gagnant ;("}]
execute if score #process_end switch.data matches 1 run scoreboard players reset @a switch.temp.lives
execute if score #process_end switch.data matches 1 as @a run function switch:modes/de_a_coudre/death

execute if score #process_end switch.data matches 100 run function switch:engine/restart

