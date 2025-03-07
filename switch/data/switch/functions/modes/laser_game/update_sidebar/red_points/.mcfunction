
execute if score #red_points switch.data matches ..99 run team modify switch.temp.sidebar.1 prefix [{"text":"Équipe Rouge : ","color":"red"}]
execute if score #red_points switch.data matches 100..199 run team modify switch.temp.sidebar.1 prefix [{"text":"Équipe Rouge : ","color":"red"},{"text":"1","color":"yellow"}]
execute if score #red_points switch.data matches 200..299 run team modify switch.temp.sidebar.1 prefix [{"text":"Équipe Rouge : ","color":"red"},{"text":"2","color":"yellow"}]
execute if score #red_points switch.data matches 300..399 run team modify switch.temp.sidebar.1 prefix [{"text":"Équipe Rouge : ","color":"red"},{"text":"3","color":"yellow"}]
execute if score #red_points switch.data matches 400..499 run team modify switch.temp.sidebar.1 prefix [{"text":"Équipe Rouge : ","color":"red"},{"text":"4","color":"yellow"}]
execute if score #red_points switch.data matches 500..599 run team modify switch.temp.sidebar.1 prefix [{"text":"Équipe Rouge : ","color":"red"},{"text":"5","color":"yellow"}]
execute if score #red_points switch.data matches 600..699 run team modify switch.temp.sidebar.1 prefix [{"text":"Équipe Rouge : ","color":"red"},{"text":"6","color":"yellow"}]
execute if score #red_points switch.data matches 700..799 run team modify switch.temp.sidebar.1 prefix [{"text":"Équipe Rouge : ","color":"red"},{"text":"7","color":"yellow"}]
execute if score #red_points switch.data matches 800..899 run team modify switch.temp.sidebar.1 prefix [{"text":"Équipe Rouge : ","color":"red"},{"text":"8","color":"yellow"}]
execute if score #red_points switch.data matches 900..999 run team modify switch.temp.sidebar.1 prefix [{"text":"Équipe Rouge : ","color":"red"},{"text":"9","color":"yellow"}]
execute if score #red_points switch.data matches 1000.. run team modify switch.temp.sidebar.1 prefix [{"text":"Équipe Rouge : ","color":"red"},{"text":"10","color":"yellow"}]

scoreboard players operation #score_for_suffix switch.data = #red_points switch.data
scoreboard players operation #score_for_suffix switch.data %= #100 switch.data

execute if score #score_for_suffix switch.data matches 0 run team modify switch.temp.sidebar.1 suffix [{"text":"00","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 5 run team modify switch.temp.sidebar.1 suffix [{"text":"05","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 10 run team modify switch.temp.sidebar.1 suffix [{"text":"10","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 15 run team modify switch.temp.sidebar.1 suffix [{"text":"15","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 20 run team modify switch.temp.sidebar.1 suffix [{"text":"20","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 25 run team modify switch.temp.sidebar.1 suffix [{"text":"25","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 30 run team modify switch.temp.sidebar.1 suffix [{"text":"30","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 35 run team modify switch.temp.sidebar.1 suffix [{"text":"35","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 40 run team modify switch.temp.sidebar.1 suffix [{"text":"40","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 45 run team modify switch.temp.sidebar.1 suffix [{"text":"45","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 50 run team modify switch.temp.sidebar.1 suffix [{"text":"50","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 55 run team modify switch.temp.sidebar.1 suffix [{"text":"55","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 60 run team modify switch.temp.sidebar.1 suffix [{"text":"60","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 65 run team modify switch.temp.sidebar.1 suffix [{"text":"65","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 70 run team modify switch.temp.sidebar.1 suffix [{"text":"70","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 75 run team modify switch.temp.sidebar.1 suffix [{"text":"75","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 80 run team modify switch.temp.sidebar.1 suffix [{"text":"80","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 85 run team modify switch.temp.sidebar.1 suffix [{"text":"85","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 90 run team modify switch.temp.sidebar.1 suffix [{"text":"90","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 95 run team modify switch.temp.sidebar.1 suffix [{"text":"95","color":"yellow"}]

