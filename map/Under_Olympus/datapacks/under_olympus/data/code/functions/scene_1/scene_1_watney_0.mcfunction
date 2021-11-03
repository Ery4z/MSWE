###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=0}] run tag @s add waiting
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=75,y=62,z=-55,dx=32,dy=6,dz=32] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=75,y=62,z=-55,dx=32,dy=6,dz=32] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Hey! Over Here!","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=75,y=62,z=-55,dx=32,dy=6,dz=32] run scoreboard players set @s leaderProgress 1