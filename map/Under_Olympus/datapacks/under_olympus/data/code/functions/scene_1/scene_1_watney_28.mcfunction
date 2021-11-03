###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=28}] run scoreboard players set @e[tag=scientist_watney] dialogTimer 0
execute as @e[tag=leader,scores={leaderProgress=28}] run tag @s remove standing
execute as @e[tag=leader,scores={leaderProgress=28}] run data modify entity @s WanderTarget.X set value -41
execute as @e[tag=leader,scores={leaderProgress=28}] run data modify entity @s WanderTarget.Y set value 51
execute as @e[tag=leader,scores={leaderProgress=28}] run data modify entity @s WanderTarget.Z set value 31
scoreboard players set @e[tag=leader,scores={leaderProgress=28},x=-41,y=57,z=31,dx=0,dy=0,dz=0] leaderProgress 29