kill @e[type=armor_stand,tag=SCORES,tag=FACTION4,tag=!MEMORY]

execute as @a[tag=SHADOWPACKSCORES] if score @s UNKNOW matches 1 run function shadow_pack:faction4/1
execute as @a[tag=SHADOWPACKSCORES] if score @s UNKNOW matches 2 run function shadow_pack:faction4/2
execute as @a[tag=SHADOWPACKSCORES] if score @s UNKNOW matches 3 run function shadow_pack:faction4/3
execute as @a[tag=SHADOWPACKSCORES] if score @s UNKNOW matches 4 run function shadow_pack:faction4/4

scoreboard players operation @e[type=armor_stand,tag=SCORES,tag=MEMORY,tag=FACTION4] OldUNKNOW = @a[tag=SHADOWPACKSCORES] UNKNOW
scoreboard players operation @e[type=armor_stand,tag=SCORES,tag=MEMORY,tag=FACTION4] UNKNOW = @a[tag=SHADOWPACKSCORES] UNKNOW

tag @a[tag=SHADOWPACKSCORES4] remove SHADOWPACKSCORES4
tag @a[tag=SHADOWPACKSCORES] remove SHADOWPACKSCORES