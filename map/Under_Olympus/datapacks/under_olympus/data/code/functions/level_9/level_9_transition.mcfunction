###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0] run scoreboard players add @s eventTimer 0
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=..49}] run scoreboard players add @s eventTimer 1

execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=1}] run spawnpoint @a 26 126 36 180

execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 26 128.5 17 {Tags:["hologram","level_9"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:83}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 37 128.5 28 {Tags:["hologram","level_9"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:86}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 26 128.5 39 {Tags:["hologram","level_9"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 15 128.5 28 {Tags:["hologram","level_9"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 23.0 128 26 {Tags:["hologram","level_9"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:32}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 27.0 128 30 {Tags:["hologram","level_9"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:23}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 30 126 32 {Tags:["robot_prop"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 35 126 19 {Tags:["hint","level_9"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=1}] run scoreboard players set timesStopped stopCounter 0

execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 26 126 30 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_9"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:basalt",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 30 126 26 {Pose:{RightArm:[0f,0f,0f]},Tags:["crafter","level_9"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:5}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 30 128.125 26 {Pose:{RightArm:[0f,0f,0f]},Tags:["crafter_display","level_9"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 22 126 26 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_9"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill 13 127 29 13 127 27 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill 13 128 29 13 129 27 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone 21 122 23 31 122 33 21 126 23

execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=30}] run particle minecraft:cloud 26 127.0 41 1 0 0 0.05 50
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=30}] run playsound minecraft:block.fire.extinguish block @a 26 128 41 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill 25 127 41 27 127 41 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill 25 128 41 27 128 41 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill 25 128 41 27 128 41 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill 25 129 41 27 129 41 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=50}] run fill 25 129 41 27 129 41 minecraft:air

execute as @e[type=armor_stand,tag=blockswap,x=-59,y=94,z=59,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-59,y=94,z=59,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=-59,y=94,z=66,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-59,y=94,z=66,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @a unless entity @s[x=14,y=126,z=16,dx=24,dy=12,dz=24] run tag @s add not_in_room
execute as @a if entity @s[x=16,y=126,z=18,dx=20,dy=12,dz=20] run tag @s remove not_in_room

execute unless entity @a[tag=not_in_room] as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=50..69}] run scoreboard players add @s eventTimer 1
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=51}] run playsound minecraft:block.fire.extinguish block @a 26 128 41 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill 25 129 41 27 129 41 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill 25 127 41 27 128 41 minecraft:barrier
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill 25 128 41 27 128 41 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill 25 129 41 27 129 41 minecraft:iron_block
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill 25 127 41 27 127 41 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill 25 128 41 27 128 41 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=70}] run function code:scene_2/scene_2_exit
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=70}] run function code:comms/comms_5

execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set progressTracker advProgress 29

execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 26 124 32 {Tags:["modifier","level_9"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 24 124 32 {Tags:["modifier","level_9"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 22 124 28 {Tags:["modifier","level_9"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 26 124 24 {Tags:["modifier","level_9"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[type=armor_stand,tag=robot_prop]
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 30 126 32 {Tags:["spawn","level_9"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @e[type=armor_stand,tag=level_9,tag=spawn] add respawn
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set gameTag tagList 1
execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @a remove testing_solution

execute as @e[type=armor_stand,tag=spawn,x=-43,y=94,z=62,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[tag=level_8]