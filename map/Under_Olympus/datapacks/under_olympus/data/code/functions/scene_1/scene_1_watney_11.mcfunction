###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=11}] run tag @s remove waiting
execute as @e[tag=leader,scores={leaderProgress=11}] run data merge entity @e[tag=scientist_watney,limit=1] {Glowing:0}
execute as @e[tag=leader,scores={leaderProgress=11}] run data modify entity @s WanderTarget.X set value 6
execute as @e[tag=leader,scores={leaderProgress=11}] run data modify entity @s WanderTarget.Y set value 50
execute as @e[tag=leader,scores={leaderProgress=11}] run data modify entity @s WanderTarget.Z set value -4
scoreboard players set @e[tag=leader,scores={leaderProgress=11},x=6,y=56,z=-4,dx=0,dy=0,dz=0] leaderProgress 12