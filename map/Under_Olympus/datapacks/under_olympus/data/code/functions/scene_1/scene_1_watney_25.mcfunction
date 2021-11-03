###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=25}] run tag @s remove waiting
execute as @e[tag=leader,scores={leaderProgress=25}] run tag @s add standing
execute as @e[tag=leader,scores={leaderProgress=25}] at @e[tag=scientist_watney] run tp @e[tag=scientist_watney] ~ ~ ~ 90 20

execute as @e[tag=leader,scores={leaderProgress=25}] run scoreboard players add @e[tag=scientist_watney] dialogTimer 1
execute as @e[tag=leader,scores={leaderProgress=25}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=25}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Let me grab my keys.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=25}] if entity @e[tag=scientist_watney,scores={dialogTimer=80}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.no neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=25}] if entity @e[tag=scientist_watney,scores={dialogTimer=80}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Where are my keys..","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=25}] if entity @e[tag=scientist_watney,scores={dialogTimer=160}] run setblock -30 61 30 minecraft:redstone_torch
execute as @e[tag=leader,scores={leaderProgress=25}] if entity @e[tag=scientist_watney,scores={dialogTimer=160}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=25}] if entity @e[tag=scientist_watney,scores={dialogTimer=160}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Here they are!","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=25}] if entity @e[tag=scientist_watney,scores={dialogTimer=160}] run data merge entity @e[tag=scientist_watney,limit=1] {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}
execute as @e[tag=leader,scores={leaderProgress=25}] if entity @e[tag=scientist_watney,scores={dialogTimer=180}] run data merge entity @e[tag=scientist_watney,limit=1] {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}
execute as @e[tag=leader,scores={leaderProgress=25}] if entity @e[tag=scientist_watney,scores={dialogTimer=240}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=25}] if entity @e[tag=scientist_watney,scores={dialogTimer=240}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Come on in.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=25}] if entity @e[tag=scientist_watney,scores={dialogTimer=240}] run scoreboard players set @s leaderProgress 26