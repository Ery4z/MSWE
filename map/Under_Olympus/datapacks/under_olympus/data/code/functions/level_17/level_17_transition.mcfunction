###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0] run scoreboard players add @s eventTimer 0
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=..49}] run scoreboard players add @s eventTimer 1

execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run spawnpoint @a -145 158 143 0

execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -134 160.5 151 {Tags:["hologram","level_17"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:83}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -145 160.5 162 {Tags:["hologram","level_17"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:84}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -145 160.5 140 {Tags:["hologram","level_17"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -156 160.5 151 {Tags:["hologram","level_17"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -141.0 160 151 {Tags:["hologram","level_17"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:102}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -146.0 160 151 {Tags:["hologram","level_17"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:103}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -147.0 160 151 {Tags:["hologram","level_17"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:112}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -140 158 153 {Tags:["robot_prop"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -136 158 160 {Tags:["hint","level_17"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run scoreboard players set timesStopped stopCounter 0

execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -149 158 151 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_17"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -145 158 151 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper","level_17"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -145 160.125 151 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper_display","level_17"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -143 158 151 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_17"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -158 159 150 -158 159 152 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -158 160 150 -158 161 152 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone -150 154 146 -140 154 156 -150 158 146

execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=30}] run particle minecraft:cloud -145 159.0 138 1 0 0 0.05 50
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=30}] run playsound minecraft:block.fire.extinguish block @a -145 160 138 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -146 159 138 -144 159 138 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -146 160 138 -144 160 138 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -146 160 138 -144 160 138 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -146 161 138 -144 161 138 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=50}] run fill -146 161 138 -144 161 138 minecraft:air

execute as @a unless entity @s[x=-157,y=158,z=139,dx=24,dy=12,dz=24] run tag @s add not_in_room
execute as @a if entity @s[x=-155,y=158,z=141,dx=20,dy=12,dz=20] run tag @s remove not_in_room

execute unless entity @a[tag=not_in_room] as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=50..69}] run scoreboard players add @s eventTimer 1
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=51}] run playsound minecraft:block.fire.extinguish block @a -145 160 138 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -146 161 138 -144 161 138 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -146 159 138 -144 160 138 minecraft:barrier
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -146 160 138 -144 160 138 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -146 161 138 -144 161 138 minecraft:iron_block
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -146 159 138 -144 159 138 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -146 160 138 -144 160 138 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run function code:scene_3/scene_3_exit
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run function code:comms/comms_9

execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set progressTracker advProgress 49

execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -147 156 153 {Tags:["modifier","level_17"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -147 156 149 {Tags:["modifier","level_17"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -143 156 153 {Tags:["modifier","level_17"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -143 156 149 {Tags:["modifier","level_17"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -141 156 153 {Tags:["modifier","level_17"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -141 156 149 {Tags:["modifier","level_17"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -141 156 147 {Tags:["modifier","level_17"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[type=armor_stand,tag=robot_prop]
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -140 158 153 {Tags:["spawn","level_17"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @e[type=armor_stand,tag=level_17,tag=spawn] add respawn
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set gameTag tagList 1
execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @a remove testing_solution

execute as @e[type=armor_stand,tag=spawn,x=-85,y=126,z=116,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[tag=level_16]