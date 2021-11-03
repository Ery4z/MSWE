###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] run tag @s add standing
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=1..179}] at @e[tag=scientist_watney] run tp @e[tag=scientist_watney] ~ ~ ~ -90 25

execute as @e[tag=leader,scores={leaderProgress=29}] run scoreboard players add @e[tag=scientist_watney] dialogTimer 1
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Your assignment involves our newest piece of technology.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=80}] run data merge entity @e[tag=scientist_watney,limit=1] {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=90}] run setblock -40 64 31 minecraft:warped_button[face=floor,facing=east,powered=true]
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=90}] run playsound minecraft:block.stone_button.click_on block @a -40 64 31 1 1

execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=95}] run particle minecraft:enchanted_hit -39 64.1 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=96}] run particle minecraft:enchanted_hit -39 64.2 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=97}] run particle minecraft:enchanted_hit -39 64.3 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=98}] run particle minecraft:enchanted_hit -39 64.4 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=99}] run particle minecraft:enchanted_hit -39 64.5 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=100}] run particle minecraft:enchanted_hit -39 64.6 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=101}] run particle minecraft:enchanted_hit -39 64.7 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=102}] run particle minecraft:enchanted_hit -39 64.8 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=103}] run particle minecraft:enchanted_hit -39 64.9 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=104}] run particle minecraft:enchanted_hit -39 65.0 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=105}] run particle minecraft:enchanted_hit -39 65.1 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=106}] run particle minecraft:enchanted_hit -39 65.2 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=107}] run particle minecraft:enchanted_hit -39 65.3 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=108}] run particle minecraft:enchanted_hit -39 65.4 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=109}] run particle minecraft:enchanted_hit -39 65.5 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=110}] run particle minecraft:enchanted_hit -39 65.6 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=111}] run particle minecraft:enchanted_hit -39 65.7 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=112}] run particle minecraft:enchanted_hit -39 65.8 31 0.25 0 0.25 0 100
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=113}] run particle minecraft:enchanted_hit -39 65.9 31 0.25 0 0.25 0 100

execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=100}] run data merge entity @e[tag=scientist_watney,limit=1] {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=100}] run summon minecraft:item -39 65 31 {Tags:["npc","robot_hologram"],Item:{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:5}},PickupDelay:32767,Age:-32768}
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=100}] run playsound minecraft:block.beacon.ambient block @a -39 65 31 1 2
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=100..}] run particle minecraft:dolphin -39 64.1 31 0.2 0 0.2 0 5
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=100..}] run particle minecraft:end_rod -39 64.1 31 0.2 0 0.2 0.02 1
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=180}] run tag @s remove standing
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=180}] run tag @s add waiting
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=180}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=180}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"They are called Robust Olympian Block Oriented Transporters, or RO-BOT for short.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=360}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=360}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"They automate a lot of the work that needs to be done in and around the facility.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=540}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=540}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"But due to the recent seismic activities, we've been experiencing power outages in some sectors of the facility.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=720}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=720}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Because of this, a lot of the RO-BOT tracks have been reset to their default settings.. and we don't know how to program them.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=900}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=900}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"That's where you come in! You're the engineer after all.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=1080}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=1080}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Your task is to reprogram the tracks so that the RO-BOTs will be able to furfill their tasks again.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=1260}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=1260}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"The freight elevator in the vehicle hangar will take you straight to your first job.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=1440}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=1440}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"I'll be in my office if you need me. Good luck!","color":"white"}]

execute as @e[tag=leader,scores={leaderProgress=29}] if entity @e[tag=scientist_watney,scores={dialogTimer=1500}] run scoreboard players set @s leaderProgress 30