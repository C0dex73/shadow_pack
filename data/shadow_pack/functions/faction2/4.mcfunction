summon minecraft:armor_stand -12.0 190.0 -223.0 {Invisible:1b,Invulnerable:1b,Small:1b,CustomNameVisible:1b,CustomName:'[{"text":"4.  ","color":"aqua"},{"text":"AINCRAD","color":"yellow"}]',Tags:["SCORES","FACTION2"],NoAI:1,NoGravity:1}

scoreboard players operation @a[tag=SHADOWPACKSCORES] Place = @a[tag=SHADOWPACKSCORES] OldAINCRAD
execute as @a[tag=SHADOWPACKSCORES] unless score @s Swap matches 1 run execute if score @s AINCRAD = @s OSARIA run function shadow_pack:faction1/swap
execute as @a[tag=SHADOWPACKSCORES] unless score @s Swap matches 1 run execute if score @s AINCRAD = @s Kraken run function shadow_pack:faction3/swap
execute as @a[tag=SHADOWPACKSCORES] unless score @s Swap matches 1 run execute if score @s AINCRAD = @s UNKNOW run function shadow_pack:faction4/swap
scoreboard players set @a[tag=SHADOWPACKSCORES] Place 0