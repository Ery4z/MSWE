###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=20}] run data modify entity @s WanderTarget.X set value 24
execute as @e[tag=leader,scores={leaderProgress=20}] run data modify entity @s WanderTarget.Y set value 50
execute as @e[tag=leader,scores={leaderProgress=20}] run data modify entity @s WanderTarget.Z set value 17
execute as @e[tag=leader,scores={leaderProgress=20},x=24,y=56,z=17,dx=0,dy=0,dz=0] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=20},x=24,y=56,z=17,dx=0,dy=0,dz=0] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"They are so busy working on those vehicles in here!","color":"white"}]
scoreboard players set @e[tag=leader,scores={leaderProgress=20},x=24,y=56,z=17,dx=0,dy=0,dz=0] leaderProgress 21