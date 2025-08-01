summon minecraft:armor_stand -12.0 190.5 -223.0 {Invisible:1b,Invulnerable:1b,Small:1b,CustomNameVisible:1b,CustomName:'[{"text":"3.  ","color":"aqua"},{"text":"OSARIA","color":"yellow"}]',Tags:["SCORES","FACTION1"],NoAI:1,NoGravity:1}

scoreboard players operation @a[tag=SHADOWPACKSCORES] Place = @a[tag=SHADOWPACKSCORES] OldOSARIA
execute as @a[tag=SHADOWPACKSCORES] unless score @s Swap matches 1 run execute if score @s OSARIA = @s AINCRAD run function shadow_pack:faction2/swap
execute as @a[tag=SHADOWPACKSCORES] unless score @s Swap matches 1 run execute if score @s OSARIA = @s Kraken run function shadow_pack:faction3/swap
execute as @a[tag=SHADOWPACKSCORES] unless score @s Swap matches 1 run execute if score @s OSARIA = @s UNKNOW run function shadow_pack:faction4/swap
scoreboard players set @a[tag=SHADOWPACKSCORES] Place 0