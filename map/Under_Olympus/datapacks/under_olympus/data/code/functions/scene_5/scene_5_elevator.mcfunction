###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###ELEVATOR INSIDE BUTTON

#move elevator upwards when player presses inside elevator on lower floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!down,tag=button_pressed,tag=is_up] if block 23 164 106 warped_button[powered=true] run playsound block.note_block.harp block @a 25 164 107 1 2
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!down,tag=button_pressed,tag=is_up] if block 23 164 106 warped_button[powered=true] run spawnpoint @a 25 58 111 0
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!down,tag=button_pressed,tag=is_up] if block 23 164 106 warped_button[powered=true] run execute as @a unless entity @s[x=23,y=163,z=102,dx=4,dy=7,dz=4] unless entity @s[tag=admin] run tp @s 25 163 104 0 0
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!down,tag=button_pressed,tag=is_up] if block 23 164 106 warped_button[powered=true] run tag @e[type=armor_stand,tag=elevator_platform] add down

execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!down,tag=!button_pressed,tag=is_up] if block 23 164 106 warped_button[powered=true] run tellraw @a[x=23,y=163,z=102,dx=4,dy=7,dz=4] ["",{"text":"Warning: ","color":"red"},{"text":"Activating the elevator will teleport ","color":"white"},{"text":"all players ","color":"gold"},{"text":"into the elevator. Press the button again to ","color":"white"},{"text":"confirm","color":"gold"},{"text":".","color":"white"}]
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!down,tag=!button_pressed,tag=is_up] if block 23 164 106 warped_button[powered=true] run tag @e[type=armor_stand,tag=elevator_platform] add button_pressed

execute if block 23 164 106 warped_button[powered=true] run setblock 23 164 106 minecraft:warped_button[face=wall,facing=north,powered=false]

###ELEVATOR DOWN SEQUENCE

#add 1 to the elevator timer as long as elevator is moving down
scoreboard players add @e[type=armor_stand,tag=elevator_platform,tag=down] elevatorTimer 1

#turn on redstone lamp on lower floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1}] run setblock 25 63 108 minecraft:redstone_lamp[lit=true]

#close door on upper floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1}] run playsound entity.minecart.riding block @a 25 164 107 1 0.7
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1}] run fill 24 163 107 26 165 107 minecraft:barrier
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_up] at @s run tp @s ~ ~-0.125 ~
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_up] at @s run particle minecraft:crit ~1.45 ~-0.3 ~0.6 0 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_up] at @s run particle minecraft:crit ~-1.45 ~-0.3 ~0.6 0 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=20}] run stopsound @a block entity.minecart.riding

#move elevator downwards, first slow, then faster, then slow
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1}] run scoreboard players set musicTag tagList 0
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=80}] run playsound fx.elevator block @a[x=23,y=58,z=102,dx=4,dy=112,dz=4] 25 163 104 10 1
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=40..80}] at @s run tp @s ~ ~-0.025 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=81..1099}] at @s run tp @s ~ ~-0.1 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1100..1140}] at @s run tp @s ~ ~-0.025 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1140}] run stopsound @a block fx.elevator

#show particles when elevator is moving down
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=40..1140}] as @e[type=armor_stand,tag=elevator_particles] at @s run particle minecraft:crit ~2.4 ~0.1 ~ 0 0 1 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=40..1140}] as @e[type=armor_stand,tag=elevator_particles] at @s run particle minecraft:crit ~-2.4 ~0.1 ~ 0 0 1 0 1 force

#add rope when moving downwards
execute at @e[type=armor_stand,tag=elevator_platform,tag=elevator_rope,tag=down] run setblock ~ ~1 ~ minecraft:nether_brick_fence

#teleport elevator elements to correct position when elevator is down (failsafe)
execute as @e[type=armor_stand,tag=elevator_platform,tag=!elevator_pole,tag=!elevator_rope,tag=down,scores={elevatorTimer=1140..}] at @s run tp @s ~ 58 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_pole,tag=down,scores={elevatorTimer=1140..}] at @s run tp @s ~ 59 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_particles,tag=down,scores={elevatorTimer=1140..}] at @s run tp @s ~ 59 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_rope,tag=down,scores={elevatorTimer=1140..}] at @s run tp @s ~ 60 ~

#teleport players to the correct position and remove effects when elevator is down (failsafe)
execute as @a[x=23,y=58,z=102,dx=4,dy=112,dz=4] at @s if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1140}] run tp @s ~ 59 ~

#play 'ding' sound effect when elevator stops moving
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1140}] run playsound block.note_block.chime block @a 25 60 107 2 0.6

#turn off redstone lamp on lower floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1140}] run setblock 25 63 108 minecraft:redstone_lamp[lit=false]

#open door on lower floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1160}] run playsound entity.minecart.riding block @a 25 60 107 1 0.7
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1160..1179}] as @e[type=armor_stand,tag=elevator_door_down] at @s run tp @s ~ ~0.125 ~
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1160..1179}] as @e[type=armor_stand,tag=elevator_door_down] at @s run particle minecraft:crit ~1.45 ~-0.7 ~0.6 0 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1160..1179}] as @e[type=armor_stand,tag=elevator_door_down] at @s run particle minecraft:crit ~-1.45 ~-0.7 ~0.6 0 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1179}] run fill 24 59 107 26 61 107 minecraft:air
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1179}] run stopsound @a block entity.minecart.riding

execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1179}] run scoreboard players set progressTracker advProgress 72

#remove 'down' tag to end the sequence
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1179..}] run tag @s remove is_up
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1179..}] run tag @s add is_down
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1179..}] run tag @s remove down

###RESET ELEVATOR TIMER WHEN MOVEMENT IS FINISHED

scoreboard players set @e[type=armor_stand,tag=elevator_platform,tag=!down] elevatorTimer 0