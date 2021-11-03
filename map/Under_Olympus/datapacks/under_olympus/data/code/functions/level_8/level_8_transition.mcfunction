###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0] run scoreboard players add @s eventTimer 0
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=..49}] run scoreboard players add @s eventTimer 1

execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=1}] run spawnpoint @a -55 94 47 0

execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -47 96.5 74 {Tags:["hologram","level_8"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:81}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -66 96.5 63 {Tags:["hologram","level_8"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:82}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -55 96.5 44 {Tags:["hologram","level_8"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -36 96.5 55 {Tags:["hologram","level_8"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -57.0 96 66 {Tags:["hologram","level_8"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:28}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -57.0 96 59 {Tags:["hologram","level_8"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:29}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -59 93.5 52 {Tags:["hologram","level_8"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:3}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -43 94 62 {Tags:["robot_prop"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -38 94 72 {Tags:["hint","level_8"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=1}] run scoreboard players set timesStopped stopCounter 0

execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -59 94 59 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -59 94 66 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone -60 90 50 -42 90 68 -60 94 50
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=1}] run kill @e[tag=button_prop]
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=1}] run setblock -36 96 57 minecraft:warped_button[face=wall,facing=west,powered=true]

execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=30}] run particle minecraft:cloud -55 95.0 42 1 0 0 0.05 50
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=30}] run playsound minecraft:block.fire.extinguish block @a -55 96 42 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -54 95 42 -56 95 42 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -54 96 42 -56 96 42 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -54 96 42 -56 96 42 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -54 97 42 -56 97 42 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=50}] run fill -54 97 42 -56 97 42 minecraft:air

execute as @e[type=armor_stand,tag=blockswap,x=-55,y=94,z=33,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-55,y=94,z=33,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=-54,y=94,z=25,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-54,y=94,z=25,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @a unless entity @s[x=-67,y=94,z=43,dx=32,dy=12,dz=32] run tag @s add not_in_room
execute as @a if entity @s[x=-65,y=94,z=45,dx=28,dy=12,dz=28] run tag @s remove not_in_room

execute unless entity @a[tag=not_in_room] as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=50..69}] run scoreboard players add @s eventTimer 1
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=51}] run playsound minecraft:block.fire.extinguish block @a -55 96 42 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -54 97 42 -56 97 42 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -54 95 42 -56 96 42 minecraft:barrier
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -54 96 42 -56 96 42 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -54 97 42 -56 97 42 minecraft:iron_block
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -54 95 42 -56 95 42 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -54 96 42 -56 96 42 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set progressTracker advProgress 23

execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -45 92 55 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -47 92 67 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -47 92 65 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -47 92 62 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -49 92 59 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -49 92 51 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -50 92 57 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -51 92 63 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -53 92 55 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -53 92 53 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -53 92 51 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -55 92 67 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -55 92 63 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -55 92 59 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -55 92 55 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -55 92 53 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -55 92 51 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -57 92 63 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -57 92 55 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -57 92 53 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -57 92 51 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -59 92 65 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -59 92 55 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -59 92 53 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -59 92 51 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[type=armor_stand,tag=robot_prop]
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -43 94 62 {Tags:["spawn","level_8"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @e[type=armor_stand,tag=level_8,tag=spawn] add respawn
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set gameTag tagList 1
execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @a remove testing_solution

execute as @e[type=armor_stand,tag=spawn,x=-51,y=94,z=25,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[tag=level_7]