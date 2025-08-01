execute if entity @s[nbt={Inventory:[{id:"minecraft:dragon_egg"}]}] run scoreboard players set @s Egg 1
execute if entity @s[scores={Egg=1}] run execute in the_end run setblock 0 80 0 dragon_egg
execute if entity @s[scores={Egg=1}] run clear @s dragon_egg
execute if entity @s[scores={Egg=1}] run scoreboard players set @s Egg 0