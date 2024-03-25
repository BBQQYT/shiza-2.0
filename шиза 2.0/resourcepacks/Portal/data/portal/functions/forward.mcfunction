scoreboard players add @s raycast 1
tp @s ^ ^ ^1

execute as @s unless block ^ ^ ^1 minecraft:air run scoreboard players set @s raycast 100000

execute as @s[scores={raycast=100000..}] run summon minecraft:item_frame ~ ~ ~ {Invisible:1b,Fixed:1b,Facing:0b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}
execute as @s[scores={raycast=100000..}] run summon minecraft:item_frame ~ ~ ~ {Invisible:1b,Fixed:1b,Facing:1b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}
execute as @s[scores={raycast=100000..}] run summon minecraft:item_frame ~ ~ ~ {Invisible:1b,Fixed:1b,Facing:2b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}
execute as @s[scores={raycast=100000..}] run summon minecraft:item_frame ~ ~ ~ {Invisible:1b,Fixed:1b,Facing:3b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}
execute as @s[scores={raycast=100000..}] run summon minecraft:item_frame ~ ~ ~ {Invisible:1b,Fixed:1b,Facing:4b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}
execute as @s[scores={raycast=100000..}] run summon minecraft:item_frame ~ ~ ~ {Invisible:1b,Fixed:1b,Facing:5b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}
#execute as @s[scores={raycast=100000..}] at @s run execute as @e[limit=1,type=item_frame,nbt={Invisible:1b,Fixed:1b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] run tag @s add portal
#execute as @e[limit=1,type=item_frame,tag=!portal,nbt={Invisible:1b,Fixed:1b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] run kill @s
#execute as @e[tag=portal] run tag @s remove portal
kill @s[scores={raycast=60000..}]

particle minecraft:dust 1 1 0 1 ~ ~ ~