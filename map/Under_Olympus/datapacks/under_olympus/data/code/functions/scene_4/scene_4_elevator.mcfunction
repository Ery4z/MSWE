###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###ELEVATOR INSIDE BUTTON

#move elevator upwards when player presses inside elevator on lower floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!down,tag=button_pressed,tag=is_up] if block -284 160 357 warped_button[powered=true] run playsound block.note_block.harp block @a -283 160 355 1 2
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!down,tag=button_pressed,tag=is_up] if block -284 160 357 warped_button[powered=true] run spawnpoint @a 129 162 28 -90
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!down,tag=button_pressed,tag=is_up] if block -284 160 357 warped_button[powered=true] run execute as @a unless entity @s[x=-288,y=159,z=353,dx=4,dy=7,dz=4] unless entity @s[tag=admin] run tp @s -286 159 355 -90 0
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!down,tag=button_pressed,tag=is_up] if block -284 160 357 warped_button[powered=true] run tag @e[type=armor_stand,tag=elevator_platform] add down

execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!down,tag=!button_pressed,tag=is_up] if block -284 160 357 warped_button[powered=true] run tellraw @a[x=-288,y=159,z=353,dx=4,dy=7,dz=4] ["",{"text":"Warning: ","color":"red"},{"text":"Activating the elevator will teleport ","color":"white"},{"text":"all players ","color":"gold"},{"text":"into the elevator. Press the button again to ","color":"white"},{"text":"confirm","color":"gold"},{"text":".","color":"white"}]
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=!down,tag=!button_pressed,tag=is_up] if block -284 160 357 warped_button[powered=true] run tag @e[type=armor_stand,tag=elevator_platform] add button_pressed

execute if block -284 160 357 warped_button[powered=true] run setblock -284 160 357 minecraft:warped_button[face=wall,facing=west,powered=false]

###ELEVATOR DOWN SEQUENCE

#add 1 to the elevator timer as long as elevator is moving down
scoreboard players add @e[type=armor_stand,tag=elevator_platform,tag=down] elevatorTimer 1

#close door on upper floor
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1}] run scoreboard players set suitTag tagList 0
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1}] run playsound entity.minecart.riding block @a -283 160 355 1 0.7
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1}] run fill -283 159 354 -283 161 356 minecraft:barrier
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_up] at @s run tp @s ~ ~-0.125 ~
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_up] at @s run particle minecraft:crit ~0.6 ~-0.3 ~1.45 0 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1..20}] as @e[type=armor_stand,tag=elevator_door_up] at @s run particle minecraft:crit ~0.6 ~-0.3 ~-1.45 0 0 0 0 1 force            
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=20}] run stopsound @a block entity.minecart.riding

#move elevator downwards, first slow, then faster, then slow
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=40}] run playsound fx.elevator.crash block @a[x=-288,y=159,z=353,dx=4,dy=7,dz=4] -286 159 355 10 1
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=40..80}] at @s run tp @s ~ ~-0.025 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=81..379}] at @s run tp @s ~ ~-0.1 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=380..420}] at @s run tp @s ~ ~-0.025 ~

#show particles when elevator is moving down
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=40..420}] as @e[type=armor_stand,tag=elevator_particles] at @s run particle minecraft:crit ~ ~0.1 ~2.4 1 0 0 0 1 force
execute if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=40..420}] as @e[type=armor_stand,tag=elevator_particles] at @s run particle minecraft:crit ~ ~0.1 ~-2.4 1 0 0 0 1 force

#add rope when moving downwards
execute at @e[type=armor_stand,tag=elevator_platform,tag=elevator_rope,tag=down] run setblock ~ ~1 ~ minecraft:nether_brick_fence

#teleport elevator elements to correct position when elevator is down (failsafe)
execute as @e[type=armor_stand,tag=elevator_platform,tag=!elevator_pole,tag=!elevator_rope,tag=down,scores={elevatorTimer=420..}] at @s run tp @s ~ 126 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_pole,tag=down,scores={elevatorTimer=420..}] at @s run tp @s ~ 127 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_particles,tag=down,scores={elevatorTimer=420..}] at @s run tp @s ~ 127 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=elevator_rope,tag=down,scores={elevatorTimer=420..}] at @s run tp @s ~ 128 ~

#teleport players to the correct position and remove effects when elevator is down (failsafe)
execute as @a[x=-288,y=54,z=353,dx=4,dy=112,dz=4] at @s if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=420}] run tp @s ~ 127 ~

#special effects
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=360},limit=1] run playsound fx.elevator.rumble block @a[x=-288,y=54,z=353,dx=4,dy=112,dz=4] -286 127 355 10 1
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=380}] run clone -286 54 348 -286 166 348 -286 54 352
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=380}] run clone -286 54 348 -286 166 348 -286 54 358
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=380}] run clone -297 167 365 -291 168 371 -289 167 352
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=380}] run fill -282 159 354 -282 161 356 minecraft:black_concrete

execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=400..570}] run execute as @a at @s unless block ~ ~-1 ~ minecraft:air run tp @s ~ ~0.1 ~ ~ ~

execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=540},limit=1] run playsound fx.elevator.cable.1 block @a[x=-288,y=54,z=353,dx=4,dy=112,dz=4] -286 130 354 10 1
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=540}] run fill -286 130 354 -286 136 354 minecraft:air
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=540}] run setblock -286 136 354 minecraft:chain[axis=y]
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=540}] run setblock -286 130 354 minecraft:chain[axis=y]
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=540},limit=1] run particle minecraft:smoke -286 133 354 0 2 0 0.05 150 force
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=540},limit=1] run particle minecraft:firework -286 136.0 354 0 0 0 0.05 15 force

execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=580},limit=1] run playsound fx.elevator.cable.2 block @a[x=-288,y=54,z=353,dx=4,dy=112,dz=4] -286 131 356 10 1
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=580}] run fill -286 131 356 -286 138 356 minecraft:air
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=580}] run setblock -286 138 356 minecraft:chain[axis=y]
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=580}] run setblock -286 131 356 minecraft:chain[axis=y]
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=580},limit=1] run particle minecraft:smoke -286 134 356 0 2 0 0.05 150 force
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=580},limit=1] run particle minecraft:firework -286 138.0 356 0 0 0 0.05 15 force

execute as @a[x=-288,y=54,z=353,dx=4,dy=112,dz=4] at @s if entity @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=590}] run tp @s ~-8 55 ~
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=590},limit=1] run playsound fx.elevator.fall block @a[x=-296,y=54,z=353,dx=4,dy=112,dz=4] -294 55 355 10 1
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=590..740},limit=1] run particle minecraft:crit -294 55.2 353.2 1.5 0.1 0.1 0.5 5 force
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=590..740},limit=1] run particle minecraft:crit -294 55.2 357.8 1.5 0.1 0.1 0.5 5 force
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=590..740},limit=1] run particle minecraft:crit -295.8 55.2 355 0.1 0.1 1.5 0.5 5 force
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=590..740},limit=1] run particle minecraft:crit -291.2 55.2 355 0.1 0.1 1.5 0.5 5 force
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=590..740},limit=1] run execute as @a at @s unless block ~ ~-1 ~ minecraft:air run tp @s ~ ~0.15 ~ ~ ~

execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=735},limit=1] run particle minecraft:crit -294 55 355 1 0.5 1 0.1 1000 force
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=735},limit=1] run particle minecraft:cloud -294 55 355 1 0.5 1 0.1 500 force
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=735},limit=1] run particle minecraft:smoke -294 55 355 1 0.5 1 0.1 5000 force

execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=740},limit=1] run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato

execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=740..940},limit=1] run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:74}

execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=750},limit=1] run tp @a[x=-296,y=54,z=353,dx=4,dy=112,dz=4] 129 162 28 -90 90

execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=751},limit=1] run fill 132 163 27 132 165 29 minecraft:barrier

execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=890},limit=1] run playsound minecraft:fx.comms.incoming block @a[x=127,y=161,z=26,dx=4,dy=50,dz=4] 129 162 28 10 0.6

execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=941},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:74}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=942},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:73}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=943},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:72}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=944},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:71}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=945},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:70}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=946},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:69}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=947},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:70}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=948},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:71}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=949},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:72}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=950},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:73}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=951},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:72}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=952},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:71}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=953},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:72}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=954},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:73}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=955},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:74}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=956..1090},limit=1] run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:74}

execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1070},limit=1] run playsound minecraft:fx.comms.incoming block @a[x=127,y=161,z=26,dx=4,dy=50,dz=4] 129 162 28 10 0.8

execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1091},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:74}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1092},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:73}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1093},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:72}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1094},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:71}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1095},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:70}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1096},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:69}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1097},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:68}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1098},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:67}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1099},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:66}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1100},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:65}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1101},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:66}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1102},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:67}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1103},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:66}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1104},limit=1] run item replace entity @a weapon.offhand with minecraft:poisonous_potato{CustomModelData:65}
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1105},limit=1] run clear @a minecraft:poisonous_potato
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1105},limit=1] run fill 132 163 27 132 165 29 minecraft:air

execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1160},limit=1] run function code:comms/comms_15

#remove 'down' tag to end the sequence
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1700..}] run tag @s remove is_up
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1700..}] run tag @s add is_down
execute as @e[type=armor_stand,tag=elevator_platform,tag=down,scores={elevatorTimer=1700..}] run tag @s remove down

###RESET ELEVATOR TIMER WHEN MOVEMENT IS FINISHED

scoreboard players set @e[type=armor_stand,tag=elevator_platform,tag=!down] elevatorTimer 0