###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=27}] run tag @s add standing
execute as @e[tag=leader,scores={leaderProgress=27}] at @e[tag=scientist_watney] run tp @e[tag=scientist_watney] ~ ~ ~ 160 0

execute as @e[tag=leader,scores={leaderProgress=27}] run scoreboard players add @e[tag=scientist_watney] dialogTimer 1
execute as @e[tag=leader,scores={leaderProgress=27}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=27}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Your assignment should be in here.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=27}] if entity @e[tag=scientist_watney,scores={dialogTimer=30}] run data merge entity @e[tag=scientist_watney,limit=1] {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}
execute as @e[tag=leader,scores={leaderProgress=27}] if entity @e[tag=scientist_watney,scores={dialogTimer=40}] run playsound minecraft:block.piston.extend block @a -43 64 33 0.8 0.6
execute as @e[tag=leader,scores={leaderProgress=27}] if entity @e[tag=scientist_watney,scores={dialogTimer=40}] run kill @e[tag=item_frame]
execute as @e[tag=leader,scores={leaderProgress=27}] if entity @e[tag=scientist_watney,scores={dialogTimer=40}] run setblock -44 64 33 minecraft:bookshelf
execute as @e[tag=leader,scores={leaderProgress=27}] if entity @e[tag=scientist_watney,scores={dialogTimer=40}] run setblock -43 64 33 minecraft:oak_stairs[facing=east]
execute as @e[tag=leader,scores={leaderProgress=27}] if entity @e[tag=scientist_watney,scores={dialogTimer=40}] run summon minecraft:item_frame -42 64 33 {Tags:["npc","item_frame"],Facing:5,Item:{id:"minecraft:acacia_pressure_plate",Count:1b},ItemRotation:4}
execute as @e[tag=leader,scores={leaderProgress=27}] if entity @e[tag=scientist_watney,scores={dialogTimer=70}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=27}] if entity @e[tag=scientist_watney,scores={dialogTimer=70}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"There you go!","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=27}] if entity @e[tag=scientist_watney,scores={dialogTimer=90}] run playsound minecraft:block.piston.contract block @a -43 64 33 0.8 0.6
execute as @e[tag=leader,scores={leaderProgress=27}] if entity @e[tag=scientist_watney,scores={dialogTimer=90}] run kill @e[tag=item_frame]
execute as @e[tag=leader,scores={leaderProgress=27}] if entity @e[tag=scientist_watney,scores={dialogTimer=90}] run setblock -44 64 33 minecraft:oak_stairs[facing=east]
execute as @e[tag=leader,scores={leaderProgress=27}] if entity @e[tag=scientist_watney,scores={dialogTimer=90}] run setblock -43 64 33 minecraft:air
execute as @e[tag=leader,scores={leaderProgress=27}] if entity @e[tag=scientist_watney,scores={dialogTimer=90}] run summon minecraft:item_frame -43 64 33 {Tags:["npc","item_frame"],Facing:5,Item:{id:"minecraft:acacia_pressure_plate",Count:1b},ItemRotation:4}
execute as @e[tag=leader,scores={leaderProgress=27}] if entity @e[tag=scientist_watney,scores={dialogTimer=100}] run data merge entity @e[tag=scientist_watney,limit=1] {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}
execute as @e[tag=leader,scores={leaderProgress=27}] if entity @e[tag=scientist_watney,scores={dialogTimer=110}] run scoreboard players set @s leaderProgress 28