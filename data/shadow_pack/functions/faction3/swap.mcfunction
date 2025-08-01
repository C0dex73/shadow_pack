scoreboard players set @a[tag=SHADOWPACKSCORES] Swap 1

scoreboard players operation @e[type=armor_stand,tag=SCORES,tag=MEMORY,tag=FACTION3] OldKraken = @a[tag=SHADOWPACKSCORES] Place
scoreboard players operation @e[type=armor_stand,tag=SCORES,tag=MEMORY,tag=FACTION3] Kraken = @a[tag=SHADOWPACKSCORES] Place

kill @e[type=armor_stand,tag=SCORES,tag=FACTION3,tag=!MEMORY]
execute as @a[tag=SHADOWPACKSCORES] if score @s Place matches 1 run function shadow_pack:faction3/1
execute as @a[tag=SHADOWPACKSCORES] if score @s Place matches 2 run function shadow_pack:faction3/2
execute as @a[tag=SHADOWPACKSCORES] if score @s Place matches 3 run function shadow_pack:faction3/3
execute as @a[tag=SHADOWPACKSCORES] if score @s Place matches 4 run function shadow_pack:faction3/4

scoreboard players set @a[tag=SHADOWPACKSCORES] Swap 0