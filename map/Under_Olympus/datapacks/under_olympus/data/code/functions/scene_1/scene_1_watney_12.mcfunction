###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=12}] run scoreboard players add @e[tag=scientist_watney] dialogTimer 1
execute as @e[tag=leader,scores={leaderProgress=12}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] run particle minecraft:cloud 6 63.0 1 1 0 0 0.05 30
execute as @e[tag=leader,scores={leaderProgress=12}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] run playsound minecraft:block.fire.extinguish block @a 6 64 1 1 0.5
execute as @e[tag=leader,scores={leaderProgress=12}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] run fill 7 63 1 5 63 1 barrier
execute as @e[tag=leader,scores={leaderProgress=12}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] run fill 7 64 1 5 64 1 smooth_stone
execute as @e[tag=leader,scores={leaderProgress=12}] if entity @e[tag=scientist_watney,scores={dialogTimer=10}] run fill 7 64 1 5 64 1 barrier
execute as @e[tag=leader,scores={leaderProgress=12}] if entity @e[tag=scientist_watney,scores={dialogTimer=10}] run fill 7 65 1 5 65 1 smooth_stone
execute as @e[tag=leader,scores={leaderProgress=12}] run data modify entity @s WanderTarget.X set value 6
execute as @e[tag=leader,scores={leaderProgress=12}] run data modify entity @s WanderTarget.Y set value 60
execute as @e[tag=leader,scores={leaderProgress=12}] run data modify entity @s WanderTarget.Z set value 4
scoreboard players set @e[tag=leader,scores={leaderProgress=12},x=6,y=57,z=4,dx=0,dy=0,dz=0] leaderProgress 13