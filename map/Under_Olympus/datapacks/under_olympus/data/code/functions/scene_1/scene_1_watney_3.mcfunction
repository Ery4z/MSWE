###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=3}] run scoreboard players set @e[tag=scientist_watney] dialogTimer 0
execute as @e[tag=leader,scores={leaderProgress=3}] run tag @s remove waiting
execute as @e[tag=leader,scores={leaderProgress=3}] run data modify entity @s WanderTarget.X set value 85
execute as @e[tag=leader,scores={leaderProgress=3}] run data modify entity @s WanderTarget.Y set value 50
execute as @e[tag=leader,scores={leaderProgress=3}] run data modify entity @s WanderTarget.Z set value -9
scoreboard players set @e[tag=leader,scores={leaderProgress=3},x=85,y=56,z=-9,dx=0,dy=0,dz=0] leaderProgress 4