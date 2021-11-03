###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0] run scoreboard players add @s eventTimer 0
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=..49}] run scoreboard players add @s eventTimer 1

execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 163 164.5 50 {Tags:["hologram","level_25"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:77}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 152 164.5 39 {Tags:["hologram","level_25"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 115 164.5 50 {Tags:["hologram","level_25"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 152 164.5 61 {Tags:["hologram","level_25","dynamic_hologram"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:72}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 153 162 50 {Tags:["robot_prop"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 143 162 59 {Tags:["hint","level_25"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run scoreboard players set timesStopped stopCounter 0

execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 134 162 60 {Pose:{RightArm:[0f,0f,0f]},Tags:["old_fuse","level_25"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 160 162 60 {Pose:{RightArm:[0f,0f,0f]},Tags:["new_fuse","level_25"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 134 162 60 {Tags:["fuse_holder","level_25"],Rotation:[180.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:82}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 160 162 60 {Tags:["fuse_holder","level_25"],Rotation:[180.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:82}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 134 163 60.0 {Tags:["old_fuse_display","level_25"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:80}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand 160 163 60.0 {Tags:["new_fuse_display","level_25"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill 151 163 63 153 163 63 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill 151 164 63 153 165 63 minecraft:iron_block
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run setblock 134 163 62 minecraft:redstone_block
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run setblock 160 163 62 minecraft:gold_block

execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone 121 152 45 161 152 60 121 162 45

execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=50}] run fill 151 163 37 153 165 37 minecraft:air

execute as @a unless entity @s[x=114,y=157,z=38,dx=50,dy=17,dz=24] run tag @s add not_in_room
execute as @a if entity @s[x=116,y=157,z=40,dx=46,dy=17,dz=20] run tag @s remove not_in_room

execute unless entity @a[tag=not_in_room] as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=50..69}] run scoreboard players add @s eventTimer 1
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=51}] run spawnpoint @a 152 162 41 0
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=51}] run playsound minecraft:block.fire.extinguish block @a 152 164 37 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill 151 165 37 153 165 37 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill 151 163 37 153 164 37 minecraft:barrier
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill 151 164 37 153 164 37 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill 151 165 37 153 165 37 minecraft:iron_block
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill 151 163 37 153 163 37 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill 151 164 37 153 164 37 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run function code:scene_4/scene_4_exit

execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set progressTracker advProgress 67

execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 156 160 54 {Tags:["modifier","level_25"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 154 160 46 {Tags:["modifier","level_25"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 154 160 54 {Tags:["modifier","level_25"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 150 160 48 {Tags:["modifier","level_25"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 148 160 52 {Tags:["modifier","level_25"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 134 160 60 {Tags:["modifier","level_25"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 130 160 48 {Tags:["modifier","level_25"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 130 160 54 {Tags:["modifier","level_25"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 126 160 48 {Tags:["modifier","level_25"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 126 160 54 {Tags:["modifier","level_25"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 124 160 54 {Tags:["modifier","level_25"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 122 160 48 {Tags:["modifier","level_25"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[type=armor_stand,tag=robot_prop]
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand 153 162 50 {Tags:["spawn","level_25"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @e[type=armor_stand,tag=level_25,tag=spawn] add respawn
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set gameTag tagList 1
execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @a remove testing_solution

execute as @e[type=armor_stand,tag=spawn,x=-168,y=158,z=385,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[tag=level_24]