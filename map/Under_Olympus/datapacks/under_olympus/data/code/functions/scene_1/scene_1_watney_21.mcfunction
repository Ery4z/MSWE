###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=21}] run data modify entity @s WanderTarget.X set value -2
execute as @e[tag=leader,scores={leaderProgress=21}] run data modify entity @s WanderTarget.Y set value 50
execute as @e[tag=leader,scores={leaderProgress=21}] run data modify entity @s WanderTarget.Z set value 19
scoreboard players set @e[tag=leader,scores={leaderProgress=21},x=-2,y=56,z=19,dx=0,dy=0,dz=0] leaderProgress 22