kill @e[type=armor_stand,tag=SCORES,tag=FACTION1,tag=!MEMORY]

execute as @a[tag=SHADOWPACKSCORES] if score @s OSARIA matches 1 run function shadow_pack:faction1/1
execute as @a[tag=SHADOWPACKSCORES] if score @s OSARIA matches 2 run function shadow_pack:faction1/2
execute as @a[tag=SHADOWPACKSCORES] if score @s OSARIA matches 3 run function shadow_pack:faction1/3
execute as @a[tag=SHADOWPACKSCORES] if score @s OSARIA matches 4 run function shadow_pack:faction1/4

scoreboard players operation @e[type=armor_stand,tag=SCORES,tag=MEMORY,tag=FACTION1] OldOSARIA = @a[tag=SHADOWPACKSCORES] OSARIA
scoreboard players operation @e[type=armor_stand,tag=SCORES,tag=MEMORY,tag=FACTION1] OSARIA = @a[tag=SHADOWPACKSCORES] OSARIA
tag @a[tag=SHADOWPACKSCORES1] remove SHADOWPACKSCORES1
tag @a[tag=SHADOWPACKSCORES] remove SHADOWPACKSCORES