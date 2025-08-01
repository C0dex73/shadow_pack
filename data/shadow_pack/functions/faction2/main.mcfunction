kill @e[type=armor_stand,tag=SCORES,tag=FACTION2,tag=!MEMORY]

execute as @a[tag=SHADOWPACKSCORES] if score @s AINCRAD matches 1 run function shadow_pack:faction2/1
execute as @a[tag=SHADOWPACKSCORES] if score @s AINCRAD matches 2 run function shadow_pack:faction2/2
execute as @a[tag=SHADOWPACKSCORES] if score @s AINCRAD matches 3 run function shadow_pack:faction2/3
execute as @a[tag=SHADOWPACKSCORES] if score @s AINCRAD matches 4 run function shadow_pack:faction2/4

scoreboard players operation @e[type=armor_stand,tag=SCORES,tag=MEMORY,tag=FACTION2] OldAINCRAD = @a[tag=SHADOWPACKSCORES] AINCRAD
scoreboard players operation @e[type=armor_stand,tag=SCORES,tag=MEMORY,tag=FACTION2] AINCRAD = @a[tag=SHADOWPACKSCORES] AINCRAD

tag @a[tag=SHADOWPACKSCORES2] remove SHADOWPACKSCORES2
tag @a[tag=SHADOWPACKSCORES] remove SHADOWPACKSCORES