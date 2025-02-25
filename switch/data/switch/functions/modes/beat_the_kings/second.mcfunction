
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #beat_the_kings_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #beat_the_kings_seconds switch.data matches 0.. run function switch:modes/beat_the_kings/xp_bar
execute if score #beat_the_kings_seconds switch.data matches 0.. run effect give @a[tag=switch.beat_the_kings.king] resistance infinite 3 true
execute if score #beat_the_kings_seconds switch.data matches 0 run function switch:modes/beat_the_kings/roles/announcement

execute if score #beat_the_kings_seconds switch.data matches 30 run tellraw @a[tag=switch.beat_the_kings.king] ["",{"nbt":"ParalyaAstuce","storage":"switch:main","interpret":true},{"text":" Utilisez votre arc pour drainer la vie des joueurs !"}]
execute if score #beat_the_kings_seconds switch.data matches 30 as @a[tag=switch.beat_the_kings.king] at @s run playsound entity.experience_orb.pickup ambient @s

