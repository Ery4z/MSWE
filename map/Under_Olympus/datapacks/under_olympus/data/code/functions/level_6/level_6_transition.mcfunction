###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0] run scoreboard players add @s eventTimer 0
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=..49}] run scoreboard players add @s eventTimer 1

execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=1}] run spawnpoint @a -21 94 29 90

execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -29 96.5 18 {Tags:["hologram","level_6"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:80}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -29 96.5 40 {Tags:["hologram","level_6"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:82}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -18 96.5 29 {Tags:["hologram","level_6"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -40 96.5 29 {Tags:["hologram","level_6"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -32 96 28.0 {Tags:["hologram","level_6"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:25}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -32 96 35.0 {Tags:["hologram","level_6"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:24}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -29 93.5 31 {Tags:["hologram","level_6"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:3}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -25 94 25 {Tags:["robot_prop"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -38 94 20 {Tags:["hint","level_6"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=1}] run scoreboard players set timesStopped stopCounter 0

execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -32 94 29 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_6"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -32 94 33 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_6"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -42 95 30 -42 95 28 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -42 96 30 -42 97 28 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone -34 90 24 -24 90 34 -34 94 24

execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=30}] run particle minecraft:cloud -16 95.0 29 0 0 1 0.05 50
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=30}] run playsound minecraft:block.fire.extinguish block @a -16 96 29 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -16 95 30 -16 95 28 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -16 96 30 -16 96 28 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -16 96 30 -16 96 28 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -16 97 30 -16 97 28 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=50}] run fill -16 97 30 -16 97 28 minecraft:air

execute as @e[type=armor_stand,tag=blockswap,x=9,y=94,z=33,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=9,y=94,z=33,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=1,y=94,z=33,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=1,y=94,z=33,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=blockswap,x=-7,y=94,z=33,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-7,y=94,z=33,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:basalt",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=1,y=94,z=25,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:basalt",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=1,y=94,z=25,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:basalt",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @a unless entity @s[x=-41,y=94,z=17,dx=24,dy=12,dz=24] run tag @s add not_in_room
execute as @a if entity @s[x=-39,y=94,z=19,dx=20,dy=12,dz=20] run tag @s remove not_in_room

execute unless entity @a[tag=not_in_room] as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=50..69}] run scoreboard players add @s eventTimer 1
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=51}] run playsound minecraft:block.fire.extinguish block @a -16 96 29 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -16 97 30 -16 97 28 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -16 95 30 -16 96 28 minecraft:barrier
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -16 96 30 -16 96 28 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -16 97 30 -16 97 28 minecraft:iron_block
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -16 95 30 -16 95 28 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -16 96 30 -16 96 28 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set progressTracker advProgress 18

execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -27 92 29 {Tags:["modifier","level_6"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -31 92 29 {Tags:["modifier","level_6"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -33 92 29 {Tags:["modifier","level_6"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[type=armor_stand,tag=robot_prop]
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -25 94 25 {Tags:["spawn","level_6"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @e[type=armor_stand,tag=level_6,tag=spawn] add respawn
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set gameTag tagList 1
execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @a remove testing_solution

execute as @e[type=armor_stand,tag=spawn,x=10,y=94,z=21,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[tag=level_5]