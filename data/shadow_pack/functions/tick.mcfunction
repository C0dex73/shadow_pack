scoreboard players enable @a[tag=ADMIN] OSARIA
scoreboard players enable @a[tag=ADMIN] AINCRAD
scoreboard players enable @a[tag=ADMIN] Kraken
scoreboard players enable @a[tag=ADMIN] UNKNOW

clear @a ender_eye


execute as @a if entity @s[scores={End=1}] run function shadow_pack:end

execute as @a[tag=ADMIN,tag=!SHADOWPACKSCORES] unless score @s OSARIA = @s OldOSARIA run tag @s add SHADOWPACKSCORES1

execute as @a[tag=ADMIN,tag=!SHADOWPACKSCORES] unless score @s AINCRAD = @s OldAINCRAD run tag @s add SHADOWPACKSCORES2

execute as @a[tag=ADMIN,tag=!SHADOWPACKSCORES] unless score @s Kraken = @s OldKraken run tag @s add SHADOWPACKSCORES3

execute as @a[tag=ADMIN,tag=!SHADOWPACKSCORES] unless score @s UNKNOW = @s OldUNKNOW run tag @s add SHADOWPACKSCORES4

tag @a[tag=SHADOWPACKSCORES1] add SHADOWPACKSCORES
tag @a[tag=SHADOWPACKSCORES2] add SHADOWPACKSCORES
tag @a[tag=SHADOWPACKSCORES3] add SHADOWPACKSCORES
tag @a[tag=SHADOWPACKSCORES4] add SHADOWPACKSCORES

execute if entity @a[tag=SHADOWPACKSCORES1] run function shadow_pack:faction1/main
execute if entity @a[tag=SHADOWPACKSCORES2] run function shadow_pack:faction2/main
execute if entity @a[tag=SHADOWPACKSCORES3] run function shadow_pack:faction3/main
execute if entity @a[tag=SHADOWPACKSCORES4] run function shadow_pack:faction4/main

execute as @a run function shadow_pack:ender_egg
function shadow_pack:actualize