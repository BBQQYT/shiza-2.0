execute as @e[type=item_frame,nbt={Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] run kill @s

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ray2"],Radius:0f,Duration:1200}
tp @e[tag=ray2,limit=1,sort=nearest] @s
tp @e[tag=ray2,limit=1,sort=nearest] ~ ~1.5 ~
scoreboard players set @e[tag=ray2,limit=1,sort=nearest] raycast 0