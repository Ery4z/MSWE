###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0] run scoreboard players add @s eventTimer 0
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=..49}] run scoreboard players add @s eventTimer 1

execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=1}] run spawnpoint @a 152 162 68 0

execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=1}] run kill @e[tag=level_25,tag=dynamic_hologram]
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 152 164.5 61 {Tags:["hologram","level_25"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 152 164.5 95 {Tags:["hologram","level_26"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:77}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 133 164.5 76 {Tags:["hologram","level_26"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:77}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 115 164.5 84 {Tags:["hologram","level_26"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:77}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 152 164.5 65 {Tags:["hologram","level_26"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 163 164.5 84 {Tags:["hologram","level_26"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:72}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 122 164.5 73 {Tags:["hologram","level_26"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:76}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 155.0 164 88 {Tags:["hologram","level_26"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:31}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 156 162 71 {Tags:["robot_prop","level_26"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 135 162 67 {Tags:["hint","level_26"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=1}] run scoreboard players set timesStopped stopCounter 0

execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 156 162 88 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 122 162 95 {Pose:{RightArm:[0f,0f,0f]},Tags:["tnt_drop","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone 119 172 96 125 176 96 119 163 97

execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone 139 157 71 157 157 89 139 162 71

execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=30}] run particle minecraft:cloud 152 163.0 63 1 0 0 0.05 50
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=30}] run playsound minecraft:block.fire.extinguish block @a 152 164 63 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill 151 163 63 153 163 63 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill 151 164 63 153 164 63 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill 151 164 63 153 164 63 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill 151 165 63 153 165 63 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=50}] run fill 151 165 63 153 165 63 minecraft:air

execute as @a unless entity @s[x=114,y=159,z=64,dx=50,dy=15,dz=35] run tag @s add not_in_room
execute as @a if entity @s[x=116,y=159,z=66,dx=46,dy=15,dz=31] run tag @s remove not_in_room

execute unless entity @a[tag=not_in_room] as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=50..69}] run scoreboard players add @s eventTimer 1
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=51}] run playsound minecraft:block.fire.extinguish block @a 152 164 63 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill 151 165 63 153 165 63 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill 151 163 63 153 164 63 minecraft:barrier
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill 151 164 63 153 164 63 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill 151 165 63 153 165 63 minecraft:iron_block
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill 151 163 63 153 163 63 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill 151 164 63 153 164 63 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set progressTracker advProgress 69

execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 156 160 72 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 156 160 86 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 156 160 88 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 152 160 72 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 152 160 76 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 152 160 84 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 152 160 86 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 152 160 88 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 150 160 78 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 150 160 80 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 150 160 82 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 148 160 72 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 148 160 74 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 148 160 84 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 148 160 86 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 146 160 76 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 146 160 78 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 146 160 84 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 146 160 88 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 144 160 74 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 144 160 78 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 144 160 82 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 144 160 88 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 142 160 72 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 142 160 74 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 142 160 80 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 140 160 76 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 140 160 80 {Tags:["modifier","level_26"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[type=armor_stand,tag=robot_prop]
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 156 162 71 {Tags:["spawn","level_26"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @e[type=armor_stand,tag=level_26,tag=spawn] add respawn
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set gameTag tagList 1
execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @a remove testing_solution

execute as @e[type=armor_stand,tag=spawn,x=153,y=162,z=50,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[tag=level_25]