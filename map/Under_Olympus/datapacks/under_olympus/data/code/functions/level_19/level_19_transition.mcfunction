###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0] run scoreboard players add @s eventTimer 0
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=..49}] run scoreboard players add @s eventTimer 1

execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run spawnpoint @a -189 158 151 90

execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -208 160.5 151 {Tags:["hologram","level_19"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:91}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -186 160.5 151 {Tags:["hologram","level_19"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -197 160.5 162 {Tags:["hologram","level_19"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -199 160 146.0 {Tags:["hologram","level_19"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:103}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -197 160 149.0 {Tags:["hologram","level_19"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:112}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -194 160 153.0 {Tags:["hologram","level_19"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:106}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -201 160 155.0 {Tags:["hologram","level_19"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:101}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -192 158 151 {Tags:["robot_prop"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -188 158 160 {Tags:["hint","level_19"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run scoreboard players set timesStopped stopCounter 0

execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -197 158 150 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -199 158 147 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -199 160.125 147 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper_display","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -201 158 153 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -201 160.125 153 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper_display","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -194 158 151 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -198 159 164 -196 159 164 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -198 160 164 -196 161 164 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone -202 154 146 -192 154 156 -202 158 146

execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=30}] run particle minecraft:cloud -184 159.0 151 0 0 1 0.05 50
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=30}] run playsound minecraft:block.fire.extinguish block @a -184 160 151 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -184 159 150 -184 159 152 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -184 160 150 -184 160 152 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -184 160 150 -184 160 152 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -184 161 150 -184 161 152 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=50}] run fill -184 161 150 -184 161 152 minecraft:air

execute as @e[type=armor_stand,tag=blockswap,x=-171,y=158,z=153,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-171,y=158,z=153,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}
execute as @e[type=armor_stand,tag=blockswap,x=-176,y=158,z=151,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:91}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-176,y=158,z=151,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:91}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=hopper,x=-169,y=158,z=147,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run particle minecraft:rain ~ ~1.2 ~ 0.2 0.2 0.2 0 25 force
execute as @e[type=armor_stand,tag=hopper,x=-169,y=158,z=147,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run playsound minecraft:item.bucket.fill block @a -169 159 147 1 1
execute as @e[type=armor_stand,tag=hopper,x=-169,y=158,z=147,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:91}}]}

execute as @a unless entity @s[x=-209,y=158,z=139,dx=24,dy=12,dz=24] run tag @s add not_in_room
execute as @a if entity @s[x=-207,y=158,z=141,dx=20,dy=12,dz=20] run tag @s remove not_in_room

execute unless entity @a[tag=not_in_room] as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=50..69}] run scoreboard players add @s eventTimer 1
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=51}] run playsound minecraft:block.fire.extinguish block @a -184 160 151 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -184 161 150 -184 161 152 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -184 159 150 -184 160 152 minecraft:barrier
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -184 160 150 -184 160 152 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -184 161 150 -184 161 152 minecraft:iron_block
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -184 159 150 -184 159 152 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -184 160 150 -184 160 152 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set progressTracker advProgress 53

execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -192 156 151 {Tags:["modifier","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -195 156 149 {Tags:["modifier","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -195 156 151 {Tags:["modifier","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -195 156 153 {Tags:["modifier","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -195 156 155 {Tags:["modifier","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -197 156 147 {Tags:["modifier","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -197 156 149 {Tags:["modifier","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -197 156 151 {Tags:["modifier","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -197 156 153 {Tags:["modifier","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -197 156 155 {Tags:["modifier","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -199 156 151 {Tags:["modifier","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -201 156 153 {Tags:["modifier","level_19"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[type=armor_stand,tag=robot_prop]
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -192 158 151 {Tags:["spawn","level_19"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @e[type=armor_stand,tag=level_19,tag=spawn] add respawn
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set gameTag tagList 1
execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @a remove testing_solution

execute as @e[type=armor_stand,tag=spawn,x=-166,y=158,z=151,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[tag=level_18]

#FARM PARTICLES
particle minecraft:falling_water -197 161.4 136 4 0 0 1 5 force
particle minecraft:falling_water -197 162.4 132 4 0 0 1 5 force
particle minecraft:falling_water -197 163.4 128 4 0 0 1 5 force
particle minecraft:falling_water -197 164.4 124 4 0 0 1 5 force