###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###ELEVATOR CALL BUTTONS

#move elevator upwards when player calls elevator on upper floor
execute as @e[type=armor_stand,tag=elevator_platform,tag=!up,tag=!down,tag=is_down] if block -88 160 93 warped_button[powered=true] run playsound block.note_block.harp block @a -90 160 92 1 2
execute as @e[type=armor_stand,tag=elevator_platform,tag=!up,tag=!down,tag=is_down] if block -88 160 93 warped_button[powered=true] run tag @e[type=armor_stand,tag=elevator_platform] add up
execute if block -88 160 93 warped_button[powered=true] run setblock -88 160 93 minecraft:warped_button[face=wall,facing=south,powered=false]

#move elevator downwards when player calls elevator on lower floor
execute as @e[type=armor_stand,tag=elevator_platform,tag=!up,tag=!down,tag=is_up] if block -88 128 93 warped_button[powered=true] run playsound block.note_block.harp block @a -90 128 92 1 2
execute as @e[type=armor_stand,tag=elevator_platform,tag=!up,tag=!down,tag=is_up] if block -88 128 93 warped_button[powered=true] run kill @e[tag=button_prop]
execute as @e[type=armor_stand,tag=elevator_platform,tag=!up,tag=!down,tag=is_up] if block -88 128 93 warped_button[powered=true] run tag @e[type=armor_stand,tag=elevator_platform] add down
execute if block -88 128 93 warped_button[powered=true] run setblock -88 128 93 minecraft:warped_button[face=wall,facing=south,powered=false]

###ELEVATOR INSIDE BUTTONS

#move elevator upwards when player presses inside elevator on lower floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!up,tag=!down,tag=is_down] if block -92 128 91 warped_button[powered=true] run playsound block.note_block.harp block @a -90 128 92 1 2
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!up,tag=!down,tag=is_down] if block -92 128 91 warped_button[powered=true] run tag @e[type=armor_stand,tag=elevator_platform] add up
execute if block -92 128 91 warped_button[powered=true] run setblock -92 128 91 minecraft:warped_button[face=wall,facing=north,powered=false]

#move elevator downwards when player presses inside elevator on upper floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!up,tag=!down,tag=is_up] if block -92 160 91 warped_button[powered=true] run playsound block.note_block.harp block @a -90 160 92 1 2
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!up,tag=!down,tag=is_up] if block -92 160 91 warped_button[powered=true] run tag @e[type=armor_stand,tag=elevator_platform] add down
execute if block -92 160 91 warped_button[powered=true] run setblock -92 160 91 minecraft:warped_button[face=wall,facing=north,powered=false]

###ELEVATOR UP SEQUENCE

#add 1 to the elevator timer as long as elevator is moving up
scoreboard players add @e[type=armor_stand,tag=elevator_platform,tag=up] elevatorTimer 1

#turn on redstone lamp on upper floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=1}] run setblock -90 163 93 minecraft:redstone_lamp[lit=true]

#close door on lower floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=1}] run playsound entity.minecart.riding block @a -90 128 92 1 0.7
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=1}] run fill -91 127 92 -89 129 92 minecraft:barrier
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_down] at @s run tp @s ~ ~-0.125 ~
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_down] at @s run particle minecraft:crit ~1.45 ~-0.3 ~0.6 0 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_down] at @s run particle minecraft:crit ~-1.45 ~-0.3 ~0.6 0 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=20}] run stopsound @a block entity.minecart.riding

#move elevator upwards, first slow, then faster, then slow
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=40}] run playsound fx.elevator block @a[x=-92,y=127,z=87,dx=4,dy=40,dz=4] -90 127 89 10 1
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=40}] run execute as @a unless entity @s[x=-92,y=127,z=87,dx=4,dy=40,dz=4] run playsound fx.elevator.fadeout block @s -90 128 92 0.1 1
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=40..80}] at @s run tp @s ~ ~0.025 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=81..379}] at @s run tp @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=380..420}] at @s run tp @s ~ ~0.025 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=320}] run execute as @a unless entity @s[x=-92,y=127,z=87,dx=4,dy=40,dz=4] run playsound fx.elevator.fadein block @s -90 160 92 0.1 1
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=420}] run stopsound @a block fx.elevator
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=420}] run stopsound @a block fx.elevator.fadein

execute as @e[type=armor_stand,tag=elevator_platform,tag=up,tag=!score_set,scores={elevatorTimer=350}] if entity @a[x=-92,y=127,z=87,dx=4,dy=40,dz=4] run scoreboard players set progressTracker advProgress 47
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,tag=!score_set,scores={elevatorTimer=350}] if entity @a[x=-92,y=127,z=87,dx=4,dy=40,dz=4] run tag @s add score_set

#show particles when elevator is moving up
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=40..420}] as @e[type=armor_stand,tag=elevator_particles] at @s run particle minecraft:crit ~2.4 ~0.1 ~ 0 0 1 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=40..420}] as @e[type=armor_stand,tag=elevator_particles] at @s run particle minecraft:crit ~-2.4 ~0.1 ~ 0 0 1 0 1 force

#delete rope when moving upwards
execute at @e[type=armor_stand,tag=elevator_platform,tag=elevator_rope,tag=up] run setblock ~ ~-1 ~ minecraft:air

#give players the appropriate effects and teleport commands
execute as @a[x=-92,y=127,z=87,dx=4,dy=40,dz=4] if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=40..400}] run effect give @s minecraft:levitation 1 255 true
execute as @a[x=-92,y=128,z=87,dx=4,dy=39,dz=4] at @s if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=40}] run tp ~ 127 ~
execute as @a[x=-92,y=127,z=87,dx=4,dy=31,dz=4] at @s if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=40..80}] run tp ~ ~0.025 ~
execute as @a[x=-92,y=127,z=87,dx=4,dy=31,dz=4] at @s if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=81..379}] run tp ~ ~0.1 ~
execute as @a[x=-92,y=127,z=87,dx=4,dy=31,dz=4] at @s if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=380..420}] run tp ~ ~0.025 ~

#teleport elevator elements to correct position when elevator is up (failsafe)
execute as @e[type=armor_stand,tag=elevator_platform,tag=!elevator_pole,tag=!elevator_rope,tag=up,scores={elevatorTimer=420..}] at @s run tp @s ~ 158 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_pole,tag=up,scores={elevatorTimer=420..}] at @s run tp @s ~ 159 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_scenery_lvl51,tag=up,scores={elevatorTimer=420..}] at @s run tp @s ~ 159 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_particles,tag=up,scores={elevatorTimer=420..}] at @s run tp @s ~ 159 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_rope,tag=up,scores={elevatorTimer=420..}] at @s run tp @s ~ 160 ~

#teleport players to the correct position and remove effects when elevator is up (failsafe)
execute as @a[x=-92,y=110,z=87,dx=4,dy=48,dz=4] at @s if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=420}] run tp @s ~ 159 ~
execute as @a[x=-92,y=110,z=87,dx=4,dy=48,dz=4] at @s if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=420}] run effect clear @s minecraft:levitation

#play 'ding' sound effect when elevator stops moving
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=420}] run playsound block.note_block.chime block @a -90 160 92 2 0.6

#turn off redstone lamp on upper floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=420}] run setblock -90 163 93 minecraft:redstone_lamp[lit=false]

#open door on upper floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=440}] run playsound entity.minecart.riding block @a -90 160 92 1 0.7
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=440..459}] as @e[type=armor_stand,tag=elevator_door_up] at @s run tp @s ~ ~0.125 ~
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=440..459}] as @e[type=armor_stand,tag=elevator_door_up] at @s run particle minecraft:crit ~1.45 ~-0.7 ~0.6 0 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=440..459}] as @e[type=armor_stand,tag=elevator_door_up] at @s run particle minecraft:crit ~-1.45 ~-0.7 ~0.6 0 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=459}] run fill -91 159 92 -89 161 92 minecraft:air
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=459}] run stopsound @a block entity.minecart.riding

#remove 'up' tag to end the sequence
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=459..}] run tag @s remove is_down
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=459..}] run tag @s add is_up
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=459..}] run tag @s remove up

###ELEVATOR DOWN SEQUENCE

#add 1 to the elevator timer as long as elevator is moving down
scoreboard players add @e[type=armor_stand,tag=elevator_platform,tag=down] elevatorTimer 1

#turn on redstone lamp on lower floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1}] run setblock -90 131 93 minecraft:redstone_lamp[lit=true]

#close door on upper floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1}] run playsound entity.minecart.riding block @a -90 160 92 1 0.7
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1}] run fill -91 159 92 -89 161 92 minecraft:barrier
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_up] at @s run tp @s ~ ~-0.125 ~
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_up] at @s run particle minecraft:crit ~1.45 ~-0.3 ~0.6 0 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_up] at @s run particle minecraft:crit ~-1.45 ~-0.3 ~0.6 0 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=20}] run stopsound @a block entity.minecart.riding

#move elevator downwards, first slow, then faster, then slow
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=40}] run playsound fx.elevator block @a[x=-92,y=127,z=87,dx=4,dy=40,dz=4] -90 159 89 10 1
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=40}] run execute as @a unless entity @s[x=-92,y=127,z=87,dx=4,dy=40,dz=4] run playsound fx.elevator.fadeout block @s -90 160 92 0.1 1
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=40..80}] at @s run tp @s ~ ~-0.025 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=81..379}] at @s run tp @s ~ ~-0.1 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=380..420}] at @s run tp @s ~ ~-0.025 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=320}] run execute as @a unless entity @s[x=-92,y=127,z=87,dx=4,dy=40,dz=4] run playsound fx.elevator.fadein block @s -90 128 92 0.1 1
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=420}] run stopsound @a block fx.elevator
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=420}] run stopsound @a block fx.elevator.fadein

#show particles when elevator is moving down
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=40..420}] as @e[type=armor_stand,tag=elevator_particles] at @s run particle minecraft:crit ~2.4 ~0.1 ~ 0 0 1 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=40..420}] as @e[type=armor_stand,tag=elevator_particles] at @s run particle minecraft:crit ~-2.4 ~0.1 ~ 0 0 1 0 1 force

#add rope when moving downwards
execute at @e[type=armor_stand,tag=elevator_platform,tag=elevator_rope,tag=down] run setblock ~ ~1 ~ minecraft:nether_brick_fence

execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=81}] run fill -91 160 88 -89 160 88 minecraft:air

#teleport elevator elements to correct position when elevator is down (failsafe)
execute as @e[type=armor_stand,tag=elevator_platform,tag=!elevator_pole,tag=!elevator_rope,tag=down,scores={elevatorTimer=420..}] at @s run tp @s ~ 126 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_pole,tag=down,scores={elevatorTimer=420..}] at @s run tp @s ~ 127 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_scenery_lvl51,tag=down,scores={elevatorTimer=420..}] at @s run tp @s ~ 127 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_particles,tag=down,scores={elevatorTimer=420..}] at @s run tp @s ~ 127 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_rope,tag=down,scores={elevatorTimer=420..}] at @s run tp @s ~ 128 ~

#teleport players to the correct position and remove effects when elevator is down (failsafe)
execute as @a[x=-92,y=110,z=87,dx=4,dy=16,dz=4] at @s if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=420}] run tp @s ~ 127 ~

#play 'ding' sound effect when elevator stops moving
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=420}] run playsound block.note_block.chime block @a -90 128 92 2 0.6

#turn off redstone lamp on lower floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=420}] run setblock -90 131 93 minecraft:redstone_lamp[lit=false]

#open door on lower floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=440}] run playsound entity.minecart.riding block @a -90 128 92 1 0.7
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=440..459}] as @e[type=armor_stand,tag=elevator_door_down] at @s run tp @s ~ ~0.125 ~
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=440..459}] as @e[type=armor_stand,tag=elevator_door_down] at @s run particle minecraft:crit ~1.45 ~-0.7 ~0.6 0 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=440..459}] as @e[type=armor_stand,tag=elevator_door_down] at @s run particle minecraft:crit ~-1.45 ~-0.7 ~0.6 0 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=459}] run fill -91 127 92 -89 129 92 minecraft:air
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=459}] run stopsound @a block entity.minecart.riding

#remove 'down' tag to end the sequence
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=459..}] run tag @s remove is_up
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=459..}] run tag @s add is_down
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=459..}] run tag @s remove down

###RESET ELEVATOR TIMER WHEN MOVEMENT IS FINISHED

scoreboard players set @e[type=armor_stand,tag=elevator_platform,tag=!down,tag=!up] elevatorTimer 0