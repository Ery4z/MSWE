###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=6}] run tag @s add standing
execute as @e[tag=leader,scores={leaderProgress=6}] at @e[tag=scientist_watney] run tp @e[tag=scientist_watney] ~ ~ ~ 180 20
execute as @e[tag=leader,scores={leaderProgress=6}] run scoreboard players add @e[tag=scientist_watney] dialogTimer 1
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=60}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=60}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"I must have your assignment in my office..","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=60}] run data merge entity @e[tag=scientist_watney,limit=1] {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=70}] run setblock 78 63 -15 minecraft:warped_button[facing=south,face=wall,powered=true]
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=70}] run playsound minecraft:block.stone_button.click_on block @a 78 63 -15 1 1
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=80}] run data merge entity @e[tag=scientist_watney,limit=1] {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=90}] run playsound minecraft:block.fire.extinguish block @a 73 65 -8 1.5 0
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=90}] run particle minecraft:cloud 73 65 -5.0 0 1.5 0 0.05 30
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=90}] run clone 69 73 -11 69 77 -5 73 63 -11
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=100}] run clone 67 73 -11 67 77 -5 73 63 -11
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=110}] run clone 65 73 -11 65 77 -5 73 63 -11
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=120}] run clone 63 73 -11 63 77 -5 73 63 -11
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=130}] run clone 61 73 -11 61 77 -5 73 63 -11
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=130}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.no neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=130}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Somewhere..","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=140}] run clone 59 73 -11 59 77 -5 73 63 -11
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=170}] run scoreboard players set @s leaderProgress 7