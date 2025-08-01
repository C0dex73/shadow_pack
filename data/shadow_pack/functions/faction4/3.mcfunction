summon minecraft:armor_stand -12.0 190.5 -223.0 {Invisible:1b,Invulnerable:1b,Small:1b,CustomNameVisible:1b,CustomName:'[{"text":"3.  ","color":"aqua"},{"text":"UNKNOW","color":"yellow"}]',Tags:["SCORES","FACTION4"],NoAI:1,NoGravity:1}

scoreboard players operation @a[tag=SHADOWPACKSCORES] Place = @a[tag=SHADOWPACKSCORES] OldUNKNOW
execute as @a[tag=SHADOWPACKSCORES] unless score @s Swap matches 1 run execute if score @s UNKNOW = @s AINCRAD run function shadow_pack:faction2/swap
execute as @a[tag=SHADOWPACKSCORES] unless score @s Swap matches 1 run execute if score @s UNKNOW = @s Kraken run function shadow_pack:faction3/swap
execute as @a[tag=SHADOWPACKSCORES] unless score @s Swap matches 1 run execute if score @s UNKNOW = @s OSARIA run function shadow_pack:faction1/swap
scoreboard players set @a[tag=SHADOWPACKSCORES] Place 0