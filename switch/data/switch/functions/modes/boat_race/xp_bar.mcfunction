
##XP from 0 to 1000 points
#points > 0 && points < 1000
#480 seconds = 100%
#0 seconds = 0%
scoreboard players operation #points switch.data = #boat_race_seconds switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 480000
function switch:engine/xp_bar

scoreboard players operation #levels switch.data = #remaining_time switch.data
function switch:engine/xp_bar_levels

