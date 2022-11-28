#> iris:find_closest_surface/west/main
#
# Finds the closest surface facing west
#
# @within iris:find_closest_surface/main

data modify storage iris:data List set from storage iris:data Surfaces.West
execute store result score $surfaces iris run data get storage iris:data List
scoreboard players operation $cuboid_id iris = $surfaces iris
scoreboard players remove $cuboid_id iris 1
execute if score $surfaces iris matches 1.. run function iris:find_closest_surface/west/loop