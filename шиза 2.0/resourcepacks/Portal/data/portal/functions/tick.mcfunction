execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:64b}}] at @s run execute as @e[type=item,distance=0..1,sort=nearest,nbt={Item:{id:"minecraft:flint",Count:1b,tag:{core:1b,CustomModelData:222222}}}] at @s run summon item ~ ~ ~ {Tags:["new"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Portal Gun","color":"dark_blue","bold":true,"italic":false}'},CustomModelData:111111,portal:1b}}}
execute as @e[tag=new] run kill @e[type=item,nbt={Item:{id:"minecraft:flint",Count:1b}}]
execute as @e[tag=new] run kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:64b}}]
execute as @e[tag=new] at @s run playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 2 0.1
execute as @e[tag=new] run tag @s remove new

execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:16b}}] at @s run execute as @e[type=item,distance=0..1,sort=nearest,nbt={Item:{id:"minecraft:slime_ball",Count:5b}}] at @s run execute as @e[type=item,distance=0..1,sort=nearest,nbt={Item:{id:"minecraft:iron_ingot",Count:5b}}] at @s run execute as @e[type=item,distance=0..1,sort=nearest,nbt={Item:{id:"minecraft:glass",Count:1b}}] at @s run summon item ~ ~ ~ {Tags:["new2"],Item:{id:"minecraft:flint",Count:1b,tag:{display:{Name:'{"text":"Energy Core","color":"blue","bold":true,"italic":false}'},CustomModelData:222222,core:1b}}}
execute as @e[tag=new2] run kill @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:16b}}]
execute as @e[tag=new2] run kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:5b}}]
execute as @e[tag=new2] run kill @e[type=item,nbt={Item:{id:"minecraft:glass",Count:1b}}]
execute as @e[tag=new2] run kill @e[type=item,nbt={Item:{id:"minecraft:slime_ball",Count:5b}}]
execute as @e[tag=new2] at @s run playsound minecraft:block.slime_block.break master @a ~ ~ ~ 1.5 0.5
execute as @e[tag=new2] run tag @s remove new2

scoreboard objectives add portal minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add raycast dummy
execute as @a[scores={portal=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{portal:1b,CustomModelData:111111}}}] at @s run function portal:portalblue
execute as @a[scores={portal=3},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{portal:1b,CustomModelData:111111}}}] at @s run function portal:portalorange
scoreboard players set @a[scores={portal=1}] portal 2
scoreboard players set @a[scores={portal=3..}] portal 0

execute as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s run execute as @e[type=!item_frame,distance=0..1] run tag @s add teleport
execute as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s run execute as @e[type=!item_frame,distance=0..1] run function portal:teleport

execute as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s run execute as @e[type=!item_frame,distance=0..1] run tag @s add teleport2
execute as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s run execute as @e[type=!item_frame,distance=0..1] run function portal:teleport2

execute as @e[tag=ray] at @s run function portal:forward
execute as @e[tag=ray2] at @s run function portal:forward2

execute as @e[type=item_frame,nbt={Facing:0b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s if block ^ ^ ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:1b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s if block ^ ^ ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:2b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s if block ^ ^ ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:3b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s if block ^ ^ ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:4b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s if block ^ ^ ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:5b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s if block ^ ^ ^-0.5 air run kill @s

execute as @e[type=item_frame,nbt={Facing:0b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s if block ^ ^ ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:1b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s if block ^ ^ ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:2b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s if block ^ ^ ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:3b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s if block ^ ^ ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:4b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s if block ^ ^ ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:5b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s if block ^ ^ ^-0.5 air run kill @s

execute as @e[type=item_frame,nbt={Facing:0b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s if block ^ ^1 ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:1b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s if block ^ ^1 ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:2b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s if block ^ ^1 ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:3b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s if block ^ ^1 ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:4b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s if block ^ ^1 ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:5b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s if block ^ ^1 ^-0.5 air run kill @s

execute as @e[type=item_frame,nbt={Facing:0b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s if block ^ ^1 ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:1b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s if block ^ ^1 ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:2b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s if block ^ ^1 ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:3b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s if block ^ ^1 ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:4b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s if block ^ ^1 ^-0.5 air run kill @s
execute as @e[type=item_frame,nbt={Facing:5b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s if block ^ ^1 ^-0.5 air run kill @s

execute as @e[type=item_frame,nbt={Facing:0b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s unless block ^ ^1 ^ air run kill @s
execute as @e[type=item_frame,nbt={Facing:1b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s unless block ^ ^1 ^ air run kill @s
execute as @e[type=item_frame,nbt={Facing:2b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s unless block ^ ^1 ^ air run kill @s
execute as @e[type=item_frame,nbt={Facing:3b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s unless block ^ ^1 ^ air run kill @s
execute as @e[type=item_frame,nbt={Facing:4b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s unless block ^ ^1 ^ air run kill @s
execute as @e[type=item_frame,nbt={Facing:5b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:444444}}}] at @s unless block ^ ^1 ^ air run kill @s

execute as @e[type=item_frame,nbt={Facing:0b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s unless block ^ ^1 ^ air run kill @s
execute as @e[type=item_frame,nbt={Facing:1b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s unless block ^ ^1 ^ air run kill @s
execute as @e[type=item_frame,nbt={Facing:2b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s unless block ^ ^1 ^ air run kill @s
execute as @e[type=item_frame,nbt={Facing:3b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s unless block ^ ^1 ^ air run kill @s
execute as @e[type=item_frame,nbt={Facing:4b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s unless block ^ ^1 ^ air run kill @s
execute as @e[type=item_frame,nbt={Facing:5b,Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:333333}}}] at @s unless block ^ ^1 ^ air run kill @s