###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=22}] run data modify entity @s WanderTarget.X set value -9
execute as @e[tag=leader,scores={leaderProgress=22}] run data modify entity @s WanderTarget.Y set value 50
execute as @e[tag=leader,scores={leaderProgress=22}] run data modify entity @s WanderTarget.Z set value 30
scoreboard players set @e[tag=leader,scores={leaderProgress=22},x=-9,y=56,z=30,dx=0,dy=0,dz=0] leaderProgress 23