execute positioned as @s run fill ~-1 ~ ~2 ~1 ~ ~2 end_portal_frame[facing=north]
execute positioned as @s run fill ~-1 ~ ~-2 ~1 ~ ~-2 end_portal_frame[facing=south]
execute positioned as @s run fill ~-2 ~ ~-1 ~-2 ~ ~1 end_portal_frame[facing=east]
execute positioned as @s run fill ~2 ~ ~-1 ~2 ~ ~1 end_portal_frame[facing=west]
give @s ender_eye 12
scoreboard players set @s End 2
