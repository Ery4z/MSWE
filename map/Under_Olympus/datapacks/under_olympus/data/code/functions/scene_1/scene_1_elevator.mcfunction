###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###ELEVATOR INSIDE BUTTON

#move elevator upwards when player presses inside elevator on lower floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!up,tag=!down,tag=button_pressed,tag=is_down] if block -1 64 76 warped_button[powered=true] run playsound block.note_block.harp block @a -3 64 75 1 2
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!up,tag=!down,tag=button_pressed,tag=is_down] if block -1 64 76 warped_button[powered=true] run spawnpoint @a -3 94 71 180
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!up,tag=!down,tag=button_pressed,tag=is_down] if block -1 64 76 warped_button[powered=true] run execute as @a unless entity @s[x=-5,y=63,z=76,dx=4,dy=41,dz=4] unless entity @s[tag=admin] run tp @s -3 63 78 180 0
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!up,tag=!down,tag=button_pressed,tag=is_down] if block -1 64 76 warped_button[powered=true] run tag @e[type=armor_stand,tag=elevator_platform] add up

execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!up,tag=!down,tag=!button_pressed,tag=is_down] if block -1 64 76 warped_button[powered=true] run execute as @e[tag=elevator_platform,type=minecraft:falling_block] run data merge entity @s {Glowing:0}
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!up,tag=!down,tag=!button_pressed,tag=is_down] if block -1 64 76 warped_button[powered=true] run tellraw @a[x=-5,y=63,z=76,dx=4,dy=41,dz=4] ["",{"text":"Warning: ","color":"red"},{"text":"Activating the elevator will teleport ","color":"white"},{"text":"all players ","color":"gold"},{"text":"into the elevator. Press the button again to ","color":"white"},{"text":"confirm","color":"gold"},{"text":".","color":"white"}]
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!up,tag=!down,tag=!button_pressed,tag=is_down] if block -1 64 76 warped_button[powered=true] run tag @e[type=armor_stand,tag=elevator_platform] add button_pressed

execute if block -1 64 76 warped_button[powered=true] run setblock -1 64 76 minecraft:warped_button[face=wall,facing=south,powered=false]

###ELEVATOR UP SEQUENCE

#add 1 to the elevator timer as long as elevator is moving up
scoreboard players add @e[type=armor_stand,tag=elevator_platform,tag=up] elevatorTimer 1

#turn on redstone lamp on upper floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=1}] run setblock -3 99 74 minecraft:redstone_lamp[lit=true]

#close door on lower floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=1}] run playsound entity.minecart.riding block @a -3 64 75 1 0.7
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=1}] run fill -2 63 75 -4 65 75 minecraft:barrier
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_down] at @s run tp @s ~ ~-0.125 ~
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_down] at @s run particle minecraft:crit ~1.45 ~-0.3 ~-0.6 0 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_down] at @s run particle minecraft:crit ~-1.45 ~-0.3 ~-0.6 0 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=20}] run stopsound @a block entity.minecart.riding

#move elevator upwards, first slow, then faster, then slow
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=40}] run playsound fx.elevator block @a[x=-5,y=63,z=76,dx=4,dy=40,dz=4] -3 63 78 10 1
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=40..80}] at @s run tp @s ~ ~0.025 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=81..379}] at @s run tp @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=380..420}] at @s run tp @s ~ ~0.025 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=420}] run stopsound @a block fx.elevator

execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=350}] run scoreboard players set progressTracker advProgress 7

#show particles when elevator is moving up
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=40..420}] as @e[type=armor_stand,tag=elevator_particles] at @s run particle minecraft:crit ~2.4 ~0.1 ~ 0 0 1 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=40..420}] as @e[type=armor_stand,tag=elevator_particles] at @s run particle minecraft:crit ~-2.4 ~0.1 ~ 0 0 1 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=40..420}] as @e[type=armor_stand,tag=elevator_particles] at @s run particle minecraft:crit ~ ~0.1 ~2.4 1 0 0 0 1 force

#delete rope when moving upwards
execute at @e[type=armor_stand,tag=elevator_platform,tag=elevator_rope,tag=up] run setblock ~ ~-1 ~ minecraft:air

#give players the appropriate effects and teleport commands
execute as @a[x=-5,y=63,z=76,dx=4,dy=40,dz=4] if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=40..400}] run effect give @s minecraft:levitation 1 255 true
execute as @a[x=-5,y=64,z=76,dx=4,dy=39,dz=4] at @s if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=40}] run tp ~ 63 ~
execute as @a[x=-5,y=63,z=76,dx=4,dy=31,dz=4] at @s if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=40..80}] run tp ~ ~0.025 ~
execute as @a[x=-5,y=63,z=76,dx=4,dy=31,dz=4] at @s if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=81..379}] run tp ~ ~0.1 ~
execute as @a[x=-5,y=63,z=76,dx=4,dy=31,dz=4] at @s if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=380..420}] run tp ~ ~0.025 ~

#teleport elevator elements to correct position when elevator is up (failsafe)
execute as @e[type=armor_stand,tag=elevator_platform,tag=!elevator_pole,tag=!elevator_rope,tag=up,scores={elevatorTimer=420..}] at @s run tp @s ~ 94 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_pole,tag=up,scores={elevatorTimer=420..}] at @s run tp @s ~ 95 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_scenery_lvl51,tag=up,scores={elevatorTimer=420..}] at @s run tp @s ~ 95 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_particles,tag=up,scores={elevatorTimer=420..}] at @s run tp @s ~ 95 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_rope,tag=up,scores={elevatorTimer=420..}] at @s run tp @s ~ 96 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_scenery_lvl52,tag=up,scores={elevatorTimer=420..}] at @s run tp @s ~ 96 ~

#teleport players to the correct position and remove effects when elevator is up (failsafe)
execute as @a[x=-5,y=62,z=76,dx=4,dy=32,dz=4] at @s if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=420}] run tp @s ~ 95 ~
execute as @a[x=-5,y=62,z=76,dx=4,dy=32,dz=4] at @s if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=420}] run effect clear @s minecraft:levitation

#play 'ding' sound effect when elevator stops moving
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=420}] run playsound block.note_block.chime block @a -3 96 75 2 0.6

#turn off redstone lamp on upper floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=420}] run setblock -3 99 74 minecraft:redstone_lamp[lit=false]

#open door on upper floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=440}] run playsound entity.minecart.riding block @a -3 96 75 1 0.7
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=440..459}] as @e[type=armor_stand,tag=elevator_door_up] at @s run tp @s ~ ~0.125 ~
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=440..459}] as @e[type=armor_stand,tag=elevator_door_up] at @s run particle minecraft:crit ~1.45 ~-0.7 ~-0.6 0 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=440..459}] as @e[type=armor_stand,tag=elevator_door_up] at @s run particle minecraft:crit ~-1.45 ~-0.7 ~-0.6 0 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=459}] run fill -2 95 75 -4 97 75 minecraft:air
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=459}] run stopsound @a block entity.minecart.riding

#remove 'up' tag to end the sequence
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=459..}] run tag @s remove is_down
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=459..}] run tag @s add is_up
execute as @e[type=armor_stand,tag=elevator_platform,tag=up,scores={elevatorTimer=459..}] run tag @s remove up

###RESET ELEVATOR TIMER WHEN MOVEMENT IS FINISHED

scoreboard players set @e[type=armor_stand,tag=elevator_platform,tag=!down,tag=!up] elevatorTimer 0