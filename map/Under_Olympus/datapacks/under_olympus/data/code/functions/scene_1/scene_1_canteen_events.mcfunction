###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###KITCHEN COOK_1 ROUTINE---------------------------------------------------------------------------------------------------
scoreboard players add @e[tag=scientist_cook_1] npcTimer 1

execute as @e[tag=scientist_cook_1,scores={npcTimer=0..50}] at @s run tp @s ~ ~ ~-0.1 180 0

execute as @e[tag=scientist_cook_1,scores={npcTimer=30}] run fill 73 63 -35 73 63 -37 minecraft:barrier
execute as @e[tag=scientist_cook_1,scores={npcTimer=30}] run fill 73 64 -35 73 64 -37 minecraft:smooth_stone
execute as @e[tag=scientist_cook_1,scores={npcTimer=40}] run fill 73 64 -35 73 64 -37 minecraft:barrier
execute as @e[tag=scientist_cook_1,scores={npcTimer=40}] run fill 73 65 -35 73 65 -37 minecraft:smooth_stone

execute as @e[tag=scientist_cook_1,scores={npcTimer=51..140}] at @s run tp @s ~0.1 ~ ~ -90 0
execute as @e[tag=scientist_cook_1,scores={npcTimer=106}] at @s run tp @s ~ ~-0.5 ~ ~ ~
execute as @e[tag=scientist_cook_1,scores={npcTimer=141..230}] at @s run tp @s ~ ~ ~0.1 0 0

execute as @e[tag=scientist_cook_1,scores={npcTimer=150}] run fill 73 64 -35 73 64 -37 minecraft:smooth_stone
execute as @e[tag=scientist_cook_1,scores={npcTimer=150}] run fill 73 65 -35 73 65 -37 minecraft:iron_block
execute as @e[tag=scientist_cook_1,scores={npcTimer=160}] run fill 73 63 -35 73 63 -37 minecraft:smooth_stone
execute as @e[tag=scientist_cook_1,scores={npcTimer=160}] run fill 73 64 -35 73 64 -37 minecraft:iron_block

execute as @e[tag=scientist_cook_1,scores={npcTimer=231..250}] at @s run tp @s ~-0.1 ~ ~ 90 0
execute as @e[tag=scientist_cook_1,scores={npcTimer=245}] at @s run tp @s ~ ~0.5 ~ ~ ~
execute as @e[tag=scientist_cook_1,scores={npcTimer=251..390}] at @s run tp @s ~ ~ ~ ~ 20
execute as @e[tag=scientist_cook_1,scores={npcTimer=251}] run data merge entity @s {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}}]}
execute as @e[tag=scientist_cook_1,scores={npcTimer=390}] run data merge entity @s {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}
execute as @e[tag=scientist_cook_1,scores={npcTimer=391..410}] at @s run tp @s ~0.1 ~ ~ -90 0
execute as @e[tag=scientist_cook_1,scores={npcTimer=395}] at @s run tp @s ~ ~-0.5 ~ ~ ~
execute as @e[tag=scientist_cook_1,scores={npcTimer=411..440}] at @s run tp @s ~ ~ ~-0.1 180 0
execute as @e[tag=scientist_cook_1,scores={npcTimer=441..470}] at @s run tp @s ~0.1 ~ ~ -90 0
execute as @e[tag=scientist_cook_1,scores={npcTimer=471..770}] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_cook_1,scores={npcTimer=471..770}] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing 82 62 -30
execute as @e[tag=scientist_cook_1,scores={npcTimer=771..800}] at @s run tp @s ~-0.1 ~ ~ 90 0
execute as @e[tag=scientist_cook_1,scores={npcTimer=801..860}] at @s run tp @s ~ ~ ~-0.1 180 0
execute as @e[tag=scientist_cook_1,scores={npcTimer=861..950}] at @s run tp @s ~-0.1 ~ ~ 90 0

execute as @e[tag=scientist_cook_1,scores={npcTimer=860}] run fill 73 63 -35 73 63 -37 minecraft:barrier
execute as @e[tag=scientist_cook_1,scores={npcTimer=860}] run fill 73 64 -35 73 64 -37 minecraft:smooth_stone
execute as @e[tag=scientist_cook_1,scores={npcTimer=870}] run fill 73 64 -35 73 64 -37 minecraft:barrier
execute as @e[tag=scientist_cook_1,scores={npcTimer=870}] run fill 73 65 -35 73 65 -37 minecraft:smooth_stone

execute as @e[tag=scientist_cook_1,scores={npcTimer=895}] at @s run tp @s ~ ~0.5 ~ ~ ~
execute as @e[tag=scientist_cook_1,scores={npcTimer=951..1000}] at @s run tp @s ~ ~ ~0.1 0 0

execute as @e[tag=scientist_cook_1,scores={npcTimer=980}] run fill 73 64 -35 73 64 -37 minecraft:smooth_stone
execute as @e[tag=scientist_cook_1,scores={npcTimer=980}] run fill 73 65 -35 73 65 -37 minecraft:iron_block
execute as @e[tag=scientist_cook_1,scores={npcTimer=990}] run fill 73 63 -35 73 63 -37 minecraft:smooth_stone
execute as @e[tag=scientist_cook_1,scores={npcTimer=990}] run fill 73 64 -35 73 64 -37 minecraft:iron_block

scoreboard players set @e[tag=scientist_cook_1,scores={npcTimer=1500..}] npcTimer 0

###MAKE NPC LOOK IN PLAYER'S DIRECTION-------------------------------------------------------------------------------------
execute as @e[tag=scientist_fish] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_fish] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing entity @e[tag=fish,sort=nearest,limit=1]

execute as @e[tag=scientist_pooling] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_pooling] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing 83 61 -46.0

execute as @e[tag=scientist_cassier] at @s run tp @s ~ ~ ~ facing entity @p[distance=..5]
execute as @e[tag=scientist_cassier] at @s unless entity @a[distance=..5] run tp @s ~ ~ ~ facing 82 62 -35

execute as @e[tag=scientist_hallway_1] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_hallway_1] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing 118 64 -1
execute as @e[tag=scientist_hallway_1] at @s unless entity @a[distance=..4] run tag @s remove spoken_to
execute as @e[tag=scientist_hallway_1,tag=!spoken_to] at @s if entity @a[distance=..4] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 1.2
execute as @e[tag=scientist_hallway_1,tag=!spoken_to] at @s if entity @a[distance=..4] run tellraw @a[distance=..8] ["",{"text":"<","color":"white"},{"text":"Dr. Gordon","color":"gold"},{"text":"> ","color":"white"},{"text":"These deals look amazing!","color":"white"}]
execute as @e[tag=scientist_hallway_1,tag=!spoken_to] at @s if entity @a[distance=..4] run tag @s add spoken_to

execute as @e[tag=scientist_hallway_2] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_hallway_2] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing 127.0 62 -28.0

execute as @e[tag=scientist_hallway_3] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_hallway_3] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing 90 62 -11.0

execute as @e[tag=scientist_spy] at @s run tp @s ~ ~ ~ facing entity @p[sort=furthest,x=76,y=62,z=-54,dx=36,dy=9,dz=36]