###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###KITCHEN COOK 3 ROUTINE---------------------------------------------------------------------------------------------------
scoreboard players add @e[tag=scientist_cook_3] npcTimer 1

execute as @e[tag=scientist_cook_3,scores={npcTimer=0..20}] at @s run tp @s ~0.1 ~ ~ -90 0
execute as @e[tag=scientist_cook_3,scores={npcTimer=21..70}] at @s run tp @s ~ ~ ~-0.1 180 0
execute as @e[tag=scientist_cook_3,scores={npcTimer=71..140}] at @s run tp @s ~0.1 ~ ~ -90 0
execute as @e[tag=scientist_cook_3,scores={npcTimer=141..160}] at @s run tp @s ~ ~ ~-0.1 180 0
execute as @e[tag=scientist_cook_3,scores={npcTimer=160}] run data merge entity @s {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}

execute as @e[tag=scientist_cook_3,scores={npcTimer=261..280}] at @s run tp @s ~ ~ ~0.1 0 0
execute as @e[tag=scientist_cook_3,scores={npcTimer=261}] run data merge entity @s {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}
execute as @e[tag=scientist_cook_3,scores={npcTimer=281..350}] at @s run tp @s ~-0.1 ~ ~ 90 0
execute as @e[tag=scientist_cook_3,scores={npcTimer=351..400}] at @s run tp @s ~ ~ ~0.1 0 0
execute as @e[tag=scientist_cook_3,scores={npcTimer=401..420}] at @s run tp @s ~-0.1 ~ ~ 90 0
execute as @e[tag=scientist_cook_3,scores={npcTimer=420}] run data merge entity @s {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}}]}
execute as @e[tag=scientist_cook_3,scores={npcTimer=520}] run data merge entity @s {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}

scoreboard players set @e[tag=scientist_cook_3,scores={npcTimer=520..}] npcTimer 0

###KITCHEN ROBOT 1 ROUTINE---------------------------------------------------------------------------------------------------
scoreboard players add @e[tag=robot_cook_1] npcTimer 1

execute as @e[tag=robot_cook_1,scores={npcTimer=0..40}] at @s run tp @s ~-0.1 ~ ~ 90 0
execute as @e[tag=robot_cook_1,scores={npcTimer=41..50}] at @s run tp @s ~ ~ ~-0.1 180 0
execute as @e[tag=robot_cook_1,scores={npcTimer=51..70}] at @s run tp @s ~-0.1 ~ ~ 90 0
execute as @e[tag=robot_cook_1,scores={npcTimer=71..90}] at @s run tp @s ~ ~ ~-0.1 180 0

execute as @e[tag=robot_cook_1,scores={npcTimer=90}] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[tag=robot_cook_1,scores={npcTimer=90}] at @s run data merge entity @s {HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:1}},{}]}

execute as @e[tag=robot_cook_1,scores={npcTimer=91..130}] at @s run tp @s ~ ~ ~0.1 0 0
execute as @e[tag=robot_cook_1,scores={npcTimer=131..170}] at @s run tp @s ~-0.1 ~ ~ 90 0
execute as @e[tag=robot_cook_1,scores={npcTimer=171..240}] at @s run tp @s ~ ~ ~-0.1 180 0
execute as @e[tag=robot_cook_1,scores={npcTimer=241..320}] at @s run tp @s ~0.1 ~ ~ -90 0
execute as @e[tag=robot_cook_1,scores={npcTimer=321..360}] at @s run tp @s ~ ~ ~0.1 0 0
execute as @e[tag=robot_cook_1,scores={npcTimer=361..470}] at @s run tp @s ~0.1 ~ ~ -90 0
execute as @e[tag=robot_cook_1,scores={npcTimer=471..490}] at @s run tp @s ~ ~ ~0.1 0 0

execute as @e[tag=robot_cook_1,scores={npcTimer=480}] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:barrel",Count:1b}]}
execute as @e[tag=robot_cook_1,scores={npcTimer=480}] at @s run data merge entity @s {HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:2}},{}]}

execute as @e[tag=robot_cook_1,scores={npcTimer=491..580}] at @s run tp @s ~-0.1 ~ ~ 90 0

scoreboard players set @e[tag=robot_cook_1,scores={npcTimer=580..}] npcTimer 0

###MAKE NPC LOOK IN PLAYER'S DIRECTION-------------------------------------------------------------------------------------
execute as @e[tag=scientist_hallway_4] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_hallway_4] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing 29 62 -27.0

execute as @e[tag=scientist_hallway_5] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_hallway_5] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing 6 64 -16