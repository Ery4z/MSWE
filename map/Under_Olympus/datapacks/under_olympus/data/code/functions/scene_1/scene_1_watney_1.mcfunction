###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=1}] run tag @s remove waiting
execute as @e[tag=leader,scores={leaderProgress=1}] at @s run data modify entity @s WanderTarget.X set from entity @p Pos[0]
execute as @e[tag=leader,scores={leaderProgress=1}] at @s run data modify entity @s WanderTarget.Y set from entity @p Pos[1]
execute as @e[tag=leader,scores={leaderProgress=1}] at @s run data modify entity @s WanderTarget.Z set from entity @p Pos[2]
execute as @e[tag=leader,scores={leaderProgress=1}] at @e[tag=scientist_watney] if entity @a[distance=..4] run scoreboard players set @s leaderProgress 2