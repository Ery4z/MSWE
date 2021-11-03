###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###WORKSHOP WELDING ROUTINE---------------------------------------------------------------------------------------------------
scoreboard players add @e[tag=scientist_workshop_1] npcTimer 1

execute as @e[tag=scientist_workshop_1,scores={npcTimer=1..77}] run particle minecraft:firework 45 63.5 35.1 0 0 0 0.05 1 force
execute as @e[tag=scientist_workshop_1,scores={npcTimer=1..77}] run particle minecraft:crit 45 63.5 35.1 0 0 0 0.3 1 force
execute as @e[tag=scientist_workshop_1,scores={npcTimer=1..77}] run particle minecraft:flame 45 63.5 35.1 0 0 0 0.005 1 force
execute as @e[tag=scientist_workshop_1,scores={npcTimer=1}] run playsound minecraft:fx.weld block @a 45 63.5 35.1 0.8 1

execute as @e[tag=scientist_workshop_1,scores={npcTimer=201..277}] run particle minecraft:firework 11.1 63.5 42 0 0 0 0.05 1 force
execute as @e[tag=scientist_workshop_1,scores={npcTimer=201..277}] run particle minecraft:crit 11.1 63.5 42 0 0 0 0.3 1 force
execute as @e[tag=scientist_workshop_1,scores={npcTimer=201..277}] run particle minecraft:flame 11.1 63.5 42 0 0 0 0.005 1 force
execute as @e[tag=scientist_workshop_1,scores={npcTimer=201}] run playsound minecraft:fx.weld block @a 11.1 63.5 42 0.8 1

execute as @e[tag=scientist_workshop_1,scores={npcTimer=401..477}] run particle minecraft:firework 9.1 72.5 50 0 0 0 0.05 1 force
execute as @e[tag=scientist_workshop_1,scores={npcTimer=401..477}] run particle minecraft:crit 9.1 72.5 50 0 0 0 0.3 1 force
execute as @e[tag=scientist_workshop_1,scores={npcTimer=401..477}] run particle minecraft:flame 9.1 72.5 50 0 0 0 0.005 1 force
execute as @e[tag=scientist_workshop_1,scores={npcTimer=401}] run playsound minecraft:fx.weld block @a 9.1 72.5 50 0.8 1

execute as @e[tag=scientist_workshop_1,scores={npcTimer=601..677}] run particle minecraft:firework 34.9 69.25 52 0 0 0 0.05 1 force
execute as @e[tag=scientist_workshop_1,scores={npcTimer=601..677}] run particle minecraft:crit 34.9 69.25 52 0 0 0 0.3 1 force
execute as @e[tag=scientist_workshop_1,scores={npcTimer=601..677}] run particle minecraft:flame 34.9 69.25 52 0 0 0 0.005 1 force
execute as @e[tag=scientist_workshop_1,scores={npcTimer=601}] run playsound minecraft:fx.weld block @a 34.9 69.25 52 0.8 1

execute as @e[tag=scientist_workshop_1,scores={npcTimer=801..877}] run particle minecraft:firework 39 63.5 59.1 0 0 0 0.05 1 force
execute as @e[tag=scientist_workshop_1,scores={npcTimer=801..877}] run particle minecraft:crit 39 63.5 59.1 0 0 0 0.3 1 force
execute as @e[tag=scientist_workshop_1,scores={npcTimer=801..877}] run particle minecraft:flame 39 63.5 59.1 0 0 0 0.005 1 force
execute as @e[tag=scientist_workshop_1,scores={npcTimer=801}] run playsound minecraft:fx.weld block @a 39 63.5 59.1 0.8 1

scoreboard players set @e[tag=scientist_workshop_1,scores={npcTimer=1000..}] npcTimer 0

###WORKSHOP EASTER EGG-----------------------------------------------------------------------------------------------------

execute if block 7 71 58 stone_button[powered=true] run playsound minecraft:block.fire.extinguish master @a 7 70 55 2 0
execute if block 7 71 58 stone_button[powered=true] run particle minecraft:smoke 7 70 55.9 0.5 0 0 0.1 2000 force
execute if block 7 71 58 stone_button[powered=true] run particle minecraft:cloud 7 70 55.9 0.5 0 0 0.1 1000 force
execute if block 7 71 58 stone_button[powered=true] run advancement grant @a[advancements={code:secrets/psssh=false}] only code:secrets/psssh
execute if block 7 71 58 stone_button[powered=true] run setblock 7 71 58 minecraft:stone_button[face=wall,facing=north,powered=false]

###MAKE NPC LOOK IN PLAYER'S DIRECTION-------------------------------------------------------------------------------------
execute as @e[tag=scientist_workshop_2] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_workshop_2] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing 31 62 38