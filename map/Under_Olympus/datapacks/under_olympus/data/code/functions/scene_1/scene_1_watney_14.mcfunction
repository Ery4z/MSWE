###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=14}] run tag @s add standing
execute as @e[tag=leader,scores={leaderProgress=14}] at @e[tag=scientist_watney] run tp @e[tag=scientist_watney] ~ ~ ~ -90 20

execute as @e[tag=leader,scores={leaderProgress=14}] run scoreboard players add @e[tag=scientist_watney] dialogTimer 1
execute as @e[tag=leader,scores={leaderProgress=14}] if entity @e[tag=scientist_watney,scores={dialogTimer=20}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=14}] if entity @e[tag=scientist_watney,scores={dialogTimer=20}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"This should do it.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=14}] if entity @e[tag=scientist_watney,scores={dialogTimer=40}] run data merge entity @e[tag=scientist_watney,limit=1] {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}
execute as @e[tag=leader,scores={leaderProgress=14}] if entity @e[tag=scientist_watney,scores={dialogTimer=50}] run particle minecraft:crit 16 64 4 0 0.2 0 0.3 50 force
execute as @e[tag=leader,scores={leaderProgress=14}] if entity @e[tag=scientist_watney,scores={dialogTimer=50}] run setblock 16 64 4 minecraft:lever[face=floor,powered=true,facing=north]
execute as @e[tag=leader,scores={leaderProgress=14}] if entity @e[tag=scientist_watney,scores={dialogTimer=50}] run playsound minecraft:block.lever.click block @a 17 64 4 1 1
execute as @e[tag=leader,scores={leaderProgress=14}] if entity @e[tag=scientist_watney,scores={dialogTimer=60}] run data merge entity @e[tag=scientist_watney,limit=1] {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}
execute as @e[tag=leader,scores={leaderProgress=14}] if entity @e[tag=scientist_watney,scores={dialogTimer=70}] run particle minecraft:cloud 28.0 65 8 0 1.5 0 0.05 30
execute as @e[tag=leader,scores={leaderProgress=14}] if entity @e[tag=scientist_watney,scores={dialogTimer=70}] run playsound minecraft:block.fire.extinguish block @a 25 65 8 1.5 0
execute as @e[tag=leader,scores={leaderProgress=14}] if entity @e[tag=scientist_watney,scores={dialogTimer=70}] run clone 22 73 4 28 77 4 22 63 8
execute as @e[tag=leader,scores={leaderProgress=14}] if entity @e[tag=scientist_watney,scores={dialogTimer=80}] run clone 22 73 2 28 77 2 22 63 8
execute as @e[tag=leader,scores={leaderProgress=14}] if entity @e[tag=scientist_watney,scores={dialogTimer=90}] run clone 22 73 0 28 77 0 22 63 8
execute as @e[tag=leader,scores={leaderProgress=14}] if entity @e[tag=scientist_watney,scores={dialogTimer=100}] run clone 22 73 -2 28 77 -2 22 63 8
execute as @e[tag=leader,scores={leaderProgress=14}] if entity @e[tag=scientist_watney,scores={dialogTimer=110}] run clone 22 73 -4 28 77 -4 22 63 8
execute as @e[tag=leader,scores={leaderProgress=14}] if entity @e[tag=scientist_watney,scores={dialogTimer=120}] run clone 22 73 -6 28 77 -6 22 63 8
execute as @e[tag=leader,scores={leaderProgress=14}] if entity @e[tag=scientist_watney,scores={dialogTimer=130}] run scoreboard players set @s leaderProgress 15