
execute store result score #nb_red switch.data if entity @a[team=switch.glassrunner.red]
execute store result score #nb_blue switch.data if entity @a[team=switch.glassrunner.blue]

execute if score #nb_red switch.data > #nb_blue switch.data run team join switch.glassrunner.blue @s
execute if score #nb_red switch.data <= #nb_blue switch.data run team join switch.glassrunner.red @s

execute if entity @s[team=switch.glassrunner.red] run function switch:modes/glassrunner/start/team/red
execute if entity @s[team=switch.glassrunner.blue] run function switch:modes/glassrunner/start/team/blue
