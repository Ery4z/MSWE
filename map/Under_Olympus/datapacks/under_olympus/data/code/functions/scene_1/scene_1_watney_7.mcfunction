###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=7}] run tag @s remove standing
execute as @e[tag=leader,scores={leaderProgress=7}] run scoreboard players set @e[tag=scientist_watney] dialogTimer 0
execute as @e[tag=leader,scores={leaderProgress=7}] run data modify entity @s WanderTarget.X set value 76
execute as @e[tag=leader,scores={leaderProgress=7}] run data modify entity @s WanderTarget.Y set value 50
execute as @e[tag=leader,scores={leaderProgress=7}] run data modify entity @s WanderTarget.Z set value -8
scoreboard players set @e[tag=leader,scores={leaderProgress=7},x=76,y=56,z=-8,dx=0,dy=0,dz=0] leaderProgress 8