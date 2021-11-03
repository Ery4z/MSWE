###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=15}] run tag @s remove standing
execute as @e[tag=leader,scores={leaderProgress=15}] run scoreboard players set @e[tag=scientist_watney] dialogTimer 0
execute as @e[tag=leader,scores={leaderProgress=15}] run data modify entity @s WanderTarget.X set value 6
execute as @e[tag=leader,scores={leaderProgress=15}] run data modify entity @s WanderTarget.Y set value 60
execute as @e[tag=leader,scores={leaderProgress=15}] run data modify entity @s WanderTarget.Z set value 4
scoreboard players set @e[tag=leader,scores={leaderProgress=15},x=6,y=57,z=4,dx=0,dy=0,dz=0] leaderProgress 16