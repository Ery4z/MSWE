###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0] run scoreboard players add @s eventTimer 0
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=..49}] run scoreboard players add @s eventTimer 1

execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=1}] run spawnpoint @a 15 94 63 -90

execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 23 96.5 74 {Tags:["hologram","level_2"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:80}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 23 96.5 52 {Tags:["hologram","level_2"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:80}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 12 96.5 63 {Tags:["hologram","level_2"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 34 96.5 63 {Tags:["hologram","level_2"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 19 96 63.0 {Tags:["hologram","level_2"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:22}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 26 96 63.0 {Tags:["hologram","level_2"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:23}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 22 93.5 65 {Tags:["hologram","level_2"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:3}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 18 94 63 {Tags:["robot_prop"],Rotation:[-90.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 14 94 54 {Tags:["hint","level_2"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=1}] run scoreboard players set timesStopped stopCounter 0

execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 26 94 61 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:basalt",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 19 94 64 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill 36 95 62 36 95 64 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill 36 96 62 36 97 64 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone 18 90 58 28 90 68 18 94 58

execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=30}] run particle minecraft:cloud 10 95.0 63 0 0 1 0.05 50
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=30}] run playsound minecraft:block.fire.extinguish block @a 10 96 63 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill 10 95 62 10 95 64 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill 10 96 62 10 96 64 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill 10 96 62 10 96 64 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill 10 97 62 10 97 64 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=50}] run fill 10 97 62 10 97 64 minecraft:air

execute as @e[type=armor_stand,tag=blockswap,x=-5,y=94,z=64,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-5,y=94,z=64,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=-5,y=94,z=59,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-5,y=94,z=59,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @a unless entity @s[x=11,y=94,z=51,dx=24,dy=12,dz=24] run tag @s add not_in_room
execute as @a if entity @s[x=13,y=94,z=53,dx=20,dy=12,dz=20] run tag @s remove not_in_room

execute unless entity @a[tag=not_in_room] as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=50..69}] run scoreboard players add @s eventTimer 1
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=51}] run playsound minecraft:block.fire.extinguish block @a 10 96 63 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill 10 97 64 10 97 62 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill 10 95 64 10 96 62 minecraft:barrier
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill 10 96 64 10 96 62 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill 10 97 64 10 97 62 minecraft:iron_block
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill 10 95 62 10 95 64 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill 10 96 62 10 96 64 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set progressTracker advProgress 10

execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[tag=elevator_platform]
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[tag=elevator_door_up]
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[tag=elevator_door_down]

execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 19 92 59 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 19 92 61 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 19 92 63 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 19 92 65 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 19 92 67 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 21 92 59 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 21 92 61 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 21 92 63 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 21 92 65 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 21 92 67 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 23 92 59 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 23 92 61 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 23 92 63 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 23 92 65 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 23 92 67 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 25 92 59 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 25 92 61 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 25 92 63 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 25 92 65 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 25 92 67 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 27 92 59 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 27 92 61 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 27 92 63 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 27 92 65 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 27 92 67 {Tags:["modifier","level_2"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[type=armor_stand,tag=robot_prop]
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 18 94 63 {Tags:["spawn","level_2"],Rotation:[-90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @e[type=armor_stand,tag=level_2,tag=spawn] add respawn
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set gameTag tagList 1
execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @a remove testing_solution

execute as @e[type=armor_stand,tag=spawn,x=-7,y=94,z=67,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[tag=level_1]