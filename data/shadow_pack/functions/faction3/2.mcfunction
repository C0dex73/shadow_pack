summon minecraft:armor_stand -12.0 191.0 -223.0 {Invisible:1b,Invulnerable:1b,Small:1b,CustomNameVisible:1b,CustomName:'[{"text":"2.  ","color":"aqua"},{"text":"Faction 3","color":"yellow"}]',Tags:["SCORES","FACTION3"],NoAI:1,NoGravity:1}

scoreboard players operation @a[tag=SHADOWPACKSCORES] Place = @a[tag=SHADOWPACKSCORES] OldKraken
execute as @a[tag=SHADOWPACKSCORES] unless score @s Swap matches 1 run execute if score @s Kraken = @s AINCRAD run function shadow_pack:faction2/swap
execute as @a[tag=SHADOWPACKSCORES] unless score @s Swap matches 1 run execute if score @s Kraken = @s OSARIA run function shadow_pack:faction1/swap
execute as @a[tag=SHADOWPACKSCORES] unless score @s Swap matches 1 run execute if score @s Kraken = @s UNKNOW run function shadow_pack:faction4/swap
scoreboard players set @a[tag=SHADOWPACKSCORES] Place 0