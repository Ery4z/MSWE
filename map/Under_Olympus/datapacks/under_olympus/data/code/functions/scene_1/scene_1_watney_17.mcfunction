###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=17}] run scoreboard players add @e[tag=scientist_watney] dialogTimer 1
execute as @e[tag=leader,scores={leaderProgress=17}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] run playsound minecraft:block.fire.extinguish block @a 6 64 1 1 0.5
execute as @e[tag=leader,scores={leaderProgress=17}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] run fill 7 65 1 5 65 1 iron_block
execute as @e[tag=leader,scores={leaderProgress=17}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] run fill 7 64 1 5 64 1 smooth_stone
execute as @e[tag=leader,scores={leaderProgress=17}] if entity @e[tag=scientist_watney,scores={dialogTimer=10}] run fill 7 64 1 5 64 1 iron_block
execute as @e[tag=leader,scores={leaderProgress=17}] if entity @e[tag=scientist_watney,scores={dialogTimer=10}] run fill 7 63 1 5 63 1 smooth_stone
execute as @e[tag=leader,scores={leaderProgress=17}] run data modify entity @s WanderTarget.X set value 25
execute as @e[tag=leader,scores={leaderProgress=17}] run data modify entity @s WanderTarget.Y set value 50
execute as @e[tag=leader,scores={leaderProgress=17}] run data modify entity @s WanderTarget.Z set value -4
execute as @e[tag=leader,scores={leaderProgress=17},x=25,y=56,z=-4,dx=0,dy=0,dz=0] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=17},x=25,y=56,z=-4,dx=0,dy=0,dz=0] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"This way please.","color":"white"}]
scoreboard players set @e[tag=leader,scores={leaderProgress=17},x=25,y=56,z=-4,dx=0,dy=0,dz=0] leaderProgress 18