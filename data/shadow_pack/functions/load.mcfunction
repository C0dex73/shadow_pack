tellraw @a ["",{"text":"!!","obfuscated":true,"color":"dark_red"},{"text":"ShadowDataPack","color":"black"},{"text":" just "},{"text":"RELOADED","color":"green"},{"text":"!!","obfuscated":true,"color":"dark_red"},{"text":"\n"},{"text":"!!","obfuscated":true,"color":"dark_red"},{"text":" A DataPack made by "},{"text":"C0dex73 ","color":"dark_blue"},{"text":" !!","obfuscated":true,"color":"dark_red"},{"text":"\n"},{"text":"!!","obfuscated":true,"color":"dark_red"},{"text":"       Current Factions :        "},{"text":"!!","obfuscated":true,"color":"dark_red"},{"text":"\n"},{"text":"!!","obfuscated":true,"color":"dark_red"},{"text":"             OSARIA  ","color":"yellow"},{"text":"           !!","obfuscated":true,"color":"dark_red"},{"text":"\n","obfuscated":true},{"text":"!!","obfuscated":true,"color":"dark_red"},{"text":"             AINCRAD       ","color":"yellow"},{"text":"      !!","obfuscated":true,"color":"dark_red"},{"text":"\n","obfuscated":true},{"text":"!!","obfuscated":true,"color":"dark_red"},{"text":"             Faction 3  ","color":"yellow"},{"text":"           !!","obfuscated":true,"color":"dark_red"},{"text":"\n","obfuscated":true},{"text":"!!","obfuscated":true,"color":"dark_red"},{"text":"             UNKNOW   ","color":"yellow"},{"text":"          !!","obfuscated":true,"color":"dark_red"}]

scoreboard objectives remove End
scoreboard objectives add End trigger

scoreboard players set @a[tag=ENDED] End 2

scoreboard objectives remove OSARIA 
scoreboard objectives remove AINCRAD 
scoreboard objectives remove Kraken 
scoreboard objectives remove UNKNOW 

scoreboard objectives add Egg dummy
scoreboard players set @a Egg 0

scoreboard objectives remove OldOSARIA 
scoreboard objectives remove OldAINCRAD 
scoreboard objectives remove OldKraken 
scoreboard objectives remove OldUNKNOW 
scoreboard objectives remove Swap 
scoreboard objectives remove Place 

scoreboard objectives add OSARIA trigger
scoreboard objectives add AINCRAD trigger
scoreboard objectives add Kraken trigger
scoreboard objectives add UNKNOW trigger

scoreboard objectives add OldOSARIA dummy
scoreboard objectives add OldAINCRAD dummy
scoreboard objectives add OldKraken dummy
scoreboard objectives add OldUNKNOW dummy
scoreboard objectives add Swap dummy
scoreboard objectives add Place dummy

scoreboard players enable @a[tag=ADMIN] OSARIA
scoreboard players enable @a[tag=ADMIN] AINCRAD
scoreboard players enable @a[tag=ADMIN] Kraken
scoreboard players enable @a[tag=ADMIN] UNKNOW

summon minecraft:armor_stand -12 180 -223 {Invisible:1b,NoGravity:1,Invulnerable:1b,Small:1b,Tags:["SCORES","FACTION1","MEMORY"]}
summon minecraft:armor_stand -12 180 -223 {Invisible:1b,NoGravity:1,Invulnerable:1b,Small:1b,Tags:["SCORES","FACTION2","MEMORY"]}
summon minecraft:armor_stand -12 180 -223 {Invisible:1b,NoGravity:1,Invulnerable:1b,Small:1b,Tags:["SCORES","FACTION3","MEMORY"]}
summon minecraft:armor_stand -12 180 -223 {Invisible:1b,NoGravity:1,Invulnerable:1b,Small:1b,Tags:["SCORES","FACTION4","MEMORY"]}

scoreboard players set @e[type=armor_stand,tag=SCORES,tag=MEMORY,tag=FACTION1] OSARIA 1
scoreboard players set @e[type=armor_stand,tag=SCORES,tag=MEMORY,tag=FACTION1] OldOSARIA 1
scoreboard players set @e[type=armor_stand,tag=SCORES,tag=MEMORY,tag=FACTION2] AINCRAD 2
scoreboard players set @e[type=armor_stand,tag=SCORES,tag=MEMORY,tag=FACTION2] OldAINCRAD 2
scoreboard players set @e[type=armor_stand,tag=SCORES,tag=MEMORY,tag=FACTION3] Kraken 3
scoreboard players set @e[type=armor_stand,tag=SCORES,tag=MEMORY,tag=FACTION3] OldKraken 3
scoreboard players set @e[type=armor_stand,tag=SCORES,tag=MEMORY,tag=FACTION4] UNKNOW 4
scoreboard players set @e[type=armor_stand,tag=SCORES,tag=MEMORY,tag=FACTION4] OldUNKNOW 4
scoreboard players set @a[tag=ADMIN] Swap 0
scoreboard players set @a[tag=ADMIN] Place 0

kill @e[type=armor_stand,tag=SCORES,tag=!MEMORY]
function shadow_pack:actualize

summon minecraft:armor_stand -12.0 192 -223.0 {Invisible:1b,Invulnerable:1b,Small:1b,CustomNameVisible:1b,CustomName:'{"text":"*---SCORES---*","color":"green"}',Tags:["SCORES"],NoAI:1,NoGravity:1}
summon minecraft:armor_stand -12.0 191.5 -223.0 {Invisible:1b,Invulnerable:1b,Small:1b,CustomNameVisible:1b,CustomName:'[{"text":"1.  ","color":"aqua"},{"text":"OSARIA","color":"yellow"}]',Tags:["SCORES","FACTION1"],NoAI:1,NoGravity:1}
summon minecraft:armor_stand -12.0 191 -223.0 {Invisible:1b,Invulnerable:1b,Small:1b,CustomNameVisible:1b,CustomName:'[{"text":"2.  ","color":"aqua"},{"text":"AINCRAD","color":"yellow"}]',Tags:["SCORES","FACTION2"],NoAI:1,NoGravity:1}
summon minecraft:armor_stand -12.0 190.5 -223.0 {Invisible:1b,Invulnerable:1b,Small:1b,CustomNameVisible:1b,CustomName:'[{"text":"3.  ","color":"aqua"},{"text":"Krakens","color":"yellow"}]',Tags:["SCORES","FACTION3"],NoAI:1,NoGravity:1}
summon minecraft:armor_stand -12.0 190 -223.0 {Invisible:1b,Invulnerable:1b,Small:1b,CustomNameVisible:1b,CustomName:'[{"text":"4.  ","color":"aqua"},{"text":"UNKNOW","color":"yellow"}]',Tags:["SCORES","FACTION4"],NoAI:1,NoGravity:1}