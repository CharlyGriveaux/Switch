
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #glassrunner_seconds switch.data 1

execute positioned 2997 128 2997 as @a[dx=5,dy=3,dz=5] run function switch:modes/glassrunner/ctp/center/adding_timer
execute positioned 2997 128 2997 unless entity @a[dx=5,dy=3,dz=5] run function switch:modes/glassrunner/ctp/center/reset

execute if score #glassrunner.ctp.center.red.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/center/red
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/center/blue



execute positioned 2924 128 3074 as @a[dx=2,dy=3,dz=2] run function switch:modes/glassrunner/ctp/side1/adding_timer
execute positioned 2924 128 3074 unless entity @a[dx=2,dy=3,dz=2] run function switch:modes/glassrunner/ctp/side1/reset

execute if score #glassrunner.ctp.side1.red.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/side1/red
execute if score #glassrunner.ctp.side1.blue.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/side1/blue



execute positioned 3074 128 2924 as @a[dx=2,dy=3,dz=2] run function switch:modes/glassrunner/ctp/side2/adding_timer
execute positioned 3074 128 2924 unless entity @a[dx=2,dy=3,dz=2] run function switch:modes/glassrunner/ctp/side2/reset

execute if score #glassrunner.ctp.side2.red.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/side2/red
execute if score #glassrunner.ctp.side2.blue.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/side2/blue




function switch:modes/glassrunner/ctp/update_sb