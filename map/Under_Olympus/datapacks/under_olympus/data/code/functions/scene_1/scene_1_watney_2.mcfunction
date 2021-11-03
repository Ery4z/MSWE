###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=2}] at @e[tag=scientist_watney] if entity @a[distance=..4] run tag @s add waiting
execute as @e[tag=leader,scores={leaderProgress=2}] at @e[tag=scientist_watney] unless entity @a[distance=..4] run tag @s remove waiting
execute as @e[tag=leader,scores={leaderProgress=2}] at @s run data modify entity @s WanderTarget.X set from entity @p Pos[0]
execute as @e[tag=leader,scores={leaderProgress=2}] at @s run data modify entity @s WanderTarget.Y set from entity @p Pos[1]
execute as @e[tag=leader,scores={leaderProgress=2}] at @s run data modify entity @s WanderTarget.Z set from entity @p Pos[2]

execute as @e[tag=leader,scores={leaderProgress=2}] run scoreboard players add @e[tag=scientist_watney] dialogTimer 1
execute as @e[tag=leader,scores={leaderProgress=2}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=2}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"You're finally awake. Welcome to the Olympus facility!","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=2}] if entity @e[tag=scientist_watney,scores={dialogTimer=180}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=2}] if entity @e[tag=scientist_watney,scores={dialogTimer=180}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"You must be the new guy. My name is Dr. Watney, i'm your supervisor.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=2}] if entity @e[tag=scientist_watney,scores={dialogTimer=360}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=2}] if entity @e[tag=scientist_watney,scores={dialogTimer=360}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"I hope you had a nice journey. You've been in hibernation for 8 months.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=2}] if entity @e[tag=scientist_watney,scores={dialogTimer=540}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=2}] if entity @e[tag=scientist_watney,scores={dialogTimer=540}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Anyway, it's good to have you here. There is plenty of work to be done.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=2}] if entity @e[tag=scientist_watney,scores={dialogTimer=720}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=2}] if entity @e[tag=scientist_watney,scores={dialogTimer=720}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Take a look around if you want. You can find me at the big iron door when you're done.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=2}] if entity @e[tag=scientist_watney,scores={dialogTimer=800}] run scoreboard players set @s leaderProgress 3