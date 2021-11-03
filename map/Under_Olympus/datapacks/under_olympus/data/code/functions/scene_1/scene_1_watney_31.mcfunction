###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=31}] run scoreboard players add @e[tag=scientist_watney] dialogTimer 1
execute if entity @e[tag=leader,scores={leaderProgress=31}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] run playsound entity.minecart.riding block @a -3 64 75 1 0.7
execute if entity @e[tag=leader,scores={leaderProgress=31}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] run execute as @e[tag=elevator_platform,type=minecraft:falling_block] run data merge entity @s {Glowing:1}
execute if entity @e[tag=leader,scores={leaderProgress=31}] if entity @e[tag=scientist_watney,scores={dialogTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_down] at @s run tp @s ~ ~0.125 ~
execute if entity @e[tag=leader,scores={leaderProgress=31}] if entity @e[tag=scientist_watney,scores={dialogTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_down] at @s run particle minecraft:crit ~1.45 ~-0.7 ~-0.6 0 0 0 0 1 force
execute if entity @e[tag=leader,scores={leaderProgress=31}] if entity @e[tag=scientist_watney,scores={dialogTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_down] at @s run particle minecraft:crit ~-1.45 ~-0.7 ~-0.6 0 0 0 0 1 force
execute if entity @e[tag=leader,scores={leaderProgress=31}] if entity @e[tag=scientist_watney,scores={dialogTimer=20}] run fill -2 63 75 -4 65 75 minecraft:air
execute if entity @e[tag=leader,scores={leaderProgress=31}] if entity @e[tag=scientist_watney,scores={dialogTimer=20}] run stopsound @a block entity.minecart.riding
execute as @e[tag=leader,scores={leaderProgress=31}] if entity @e[tag=scientist_watney,scores={dialogTimer=20}] run scoreboard players set @s leaderProgress 32