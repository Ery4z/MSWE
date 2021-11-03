###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0] run scoreboard players add @s eventTimer 0
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=..49}] run scoreboard players add @s eventTimer 1

execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run spawnpoint @a 13 94 21 90

execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run function code:comms/comms_2

execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -3 96.5 10 {Tags:["hologram","level_5"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:80}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -14 96.5 21 {Tags:["hologram","level_5"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:81}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 5 96.5 40 {Tags:["hologram","level_5"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:80}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 16 96.5 29 {Tags:["hologram","level_5"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:81}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 16 96.5 21 {Tags:["hologram","level_5"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -14 96.5 29 {Tags:["hologram","level_5"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 9 96 32.0 {Tags:["hologram","level_5"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:21}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 1 96 32.0 {Tags:["hologram","level_5"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:20}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -7 96 32.0 {Tags:["hologram","level_5"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:23}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 1 96 24.0 {Tags:["hologram","level_5"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:22}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -2 93.5 25 {Tags:["hologram","level_5"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:3}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -3 93.5 26 {Tags:["hologram","level_5"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:3}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 10 94 21 {Tags:["robot_prop"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -12 94 12 {Tags:["hint","level_5"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run scoreboard players set timesStopped stopCounter 0

execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 9 94 33 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 1 94 33 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -7 94 33 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:basalt",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 1 94 25 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill 18 95 22 18 97 20 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -16 95 30 -16 95 28 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -16 96 30 -16 97 28 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone -8 90 16 10 90 34 -8 94 16

execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=30}] run particle minecraft:cloud 36 95.0 37 0 0 1 0.05 50
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=30}] run playsound minecraft:block.fire.extinguish block @a 36 96 37 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill 36 95 38 36 95 36 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill 36 96 38 36 96 36 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill 36 96 38 36 96 36 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill 36 97 38 36 97 36 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=50}] run fill 36 97 38 36 97 36 minecraft:air

execute as @e[type=armor_stand,tag=blockswap,x=53,y=94,z=35,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=53,y=94,z=35,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=53,y=94,z=39,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=53,y=94,z=39,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @a unless entity @s[x=-15,y=94,z=9,dx=32,dy=12,dz=32] run tag @s add not_in_room
execute as @a if entity @s[x=-13,y=94,z=11,dx=28,dy=12,dz=28] run tag @s remove not_in_room

execute unless entity @a[tag=not_in_room] as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=50..69}] run scoreboard players add @s eventTimer 1
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=51}] run playsound minecraft:block.fire.extinguish block @a 18 96 21 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill 18 97 20 18 97 22 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill 18 95 20 18 96 22 minecraft:barrier
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill 18 96 20 18 96 22 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill 18 97 20 18 97 22 minecraft:iron_block
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill 18 95 20 18 95 22 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill 18 96 20 18 96 22 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set progressTracker advProgress 16

execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 9 92 31 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 9 92 29 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 9 92 21 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 9 92 17 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 7 92 27 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 7 92 25 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 7 92 21 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 7 92 19 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 7 92 17 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 5 92 25 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 5 92 21 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 5 92 17 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 3 92 31 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 3 92 27 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 3 92 20 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 3 92 17 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 1 92 21 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 1 92 19 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 0 92 20 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 0 92 19 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -1 92 33 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -1 92 29 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -1 92 27 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -3 92 19 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -5 92 23 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -5 92 19 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -5 92 17 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -7 92 29 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -7 92 27 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -7 92 19 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -7 92 17 {Tags:["modifier","level_5"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[type=armor_stand,tag=robot_prop]
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 10 94 21 {Tags:["spawn","level_5"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @e[type=armor_stand,tag=level_5,tag=spawn] add respawn
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set gameTag tagList 1
execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @a remove testing_solution

execute as @e[type=armor_stand,tag=spawn,x=54,y=94,z=41,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[tag=level_4]

#achievement
execute if block 62 101 37 minecraft:orange_candle_cake[lit=false] run advancement grant @a[advancements={code:secrets/cake1=false}] only code:secrets/cake1