###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=30..}] run particle minecraft:dolphin -39 64.1 31 0.2 0 0.2 0 5
execute as @e[tag=leader,scores={leaderProgress=30..}] run particle minecraft:end_rod -39 64.1 31 0.2 0 0.2 0.02 1

execute as @e[tag=leader,scores={leaderProgress=30}] run scoreboard players set @e[tag=scientist_watney] dialogTimer 0
execute as @e[tag=leader,scores={leaderProgress=30}] run data modify entity @s WanderTarget.X set value -34
execute as @e[tag=leader,scores={leaderProgress=30}] run data modify entity @s WanderTarget.Y set value 57
execute as @e[tag=leader,scores={leaderProgress=30}] run data modify entity @s WanderTarget.Z set value 35
execute as @e[tag=leader,scores={leaderProgress=30}] run fill -30 57 30 -30 58 30 minecraft:orange_stained_glass

scoreboard players set @e[tag=leader,scores={leaderProgress=30}] leaderProgress 31