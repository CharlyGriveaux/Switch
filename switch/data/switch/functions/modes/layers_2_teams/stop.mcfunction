
tp @e[type=!player] 0 -10000 0
kill @e[type=!player]

team remove switch.temp.red
team remove switch.temp.blue

# Attributes
execute as @a run attribute @s generic.attack_speed base set 4.0

scoreboard objectives remove switch.temp.deathCount

