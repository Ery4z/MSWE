###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0] run scoreboard players add @s eventTimer 0
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=..49}] run scoreboard players add @s eventTimer 1

execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run spawnpoint @a -197 158 169 0

execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -170 162.5 286 {Tags:["hologram","level_21"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:92}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -170 162.5 253 {Tags:["hologram","level_21"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -150 162.5 282 {Tags:["hologram","level_21"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -192.0 160 296 {Tags:["hologram","level_21"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:109}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -171.0 160 276 {Tags:["hologram","level_21"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:107}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -171.0 160 296 {Tags:["hologram","level_21"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:112}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -183.0 160 303 {Tags:["hologram","level_21"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:110}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -181 158 274 {Tags:["robot_prop"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -200 158 264 {Tags:["hint","level_21"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run scoreboard players set timesStopped stopCounter 0

execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -170 158 296 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -170 158 276 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -170 160.125 276 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper_display","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:orange_concrete",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -194 158 296 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -194 160.125 296 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper_display","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -182 158 303 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

#spawn airlock alarm props
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -177 161 251 {Tags:["level_21","alarm"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -163 161 251 {Tags:["level_21","alarm"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -148 161 275 {Tags:["level_21","alarm"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -148 161 289 {Tags:["level_21","alarm"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}

#spawn airlock alarms
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -135 165 282 {Tags:["level_21","airlock_21","airlock_alarm_0","is_closed"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}

#reset airlock attributes
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run tag @e[tag=airlock] add is_closed
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone -143 159 255 -143 163 261 -148 159 279
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone -143 159 255 -143 163 261 -122 159 279
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -147 156 274 -123 166 290 minecraft:sea_lantern replace minecraft:blue_ice

execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -143 160.5 289 {Tags:["hologram","level_21"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:45}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -127 160.5 289 {Tags:["hologram","level_21"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:46}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

#spawn scientists
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:drowned -135 159 272 {Tags:["level_21","scientist_spy"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:44}}]}

#clone original layer to play layer
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone -196 151 272 -168 151 304 -196 158 272

execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=30}] run particle minecraft:cloud -176 159.0 177 0 0 1 0.05 50
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=30}] run playsound minecraft:block.fire.extinguish block @a -176 160 177 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -176 159 176 -176 159 178 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -176 160 176 -176 160 178 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -176 160 176 -176 160 178 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -176 161 176 -176 161 178 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=50}] run fill -176 161 176 -176 161 178 minecraft:air

execute as @e[type=armor_stand,tag=blockswap,x=-193,y=158,z=178,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-193,y=158,z=178,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}
execute as @e[type=armor_stand,tag=blockswap,x=-187,y=158,z=187,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:94}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-187,y=158,z=187,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:94}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=blockswap,x=-199,y=158,z=187,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-199,y=158,z=187,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=hopper,x=-189,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run particle minecraft:rain ~ ~1.2 ~ 0.2 0.2 0.2 0 25 force
execute as @e[type=armor_stand,tag=hopper,x=-189,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run playsound minecraft:item.bucket.fill block @a -189 159 185 1 1
execute as @e[type=armor_stand,tag=hopper,x=-189,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:91}}]}

execute as @e[type=armor_stand,tag=hopper,x=-189,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:92}}]}] run particle minecraft:rain ~ ~1.2 ~ 0.2 0.2 0.2 0 25 force
execute as @e[type=armor_stand,tag=hopper,x=-189,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:92}}]}] run playsound minecraft:item.bucket.fill block @a -189 159 185 1 1
execute as @e[type=armor_stand,tag=hopper,x=-189,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:92}}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:94}}]}

execute as @e[type=armor_stand,tag=hopper,x=-189,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] run particle minecraft:rain ~ ~1.2 ~ 0.2 0.2 0.2 0 25 force
execute as @e[type=armor_stand,tag=hopper,x=-189,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] run playsound minecraft:item.bucket.fill block @a -189 159 185 1 1
execute as @e[type=armor_stand,tag=hopper,x=-189,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:96}}]}

execute as @e[type=armor_stand,tag=hopper,x=-193,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run particle minecraft:rain ~ ~1.2 ~ 0.2 0.2 0.2 0 25 force
execute as @e[type=armor_stand,tag=hopper,x=-193,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run playsound minecraft:item.bucket.fill block @a -193 159 185 1 1
execute as @e[type=armor_stand,tag=hopper,x=-193,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:92}}]}

execute as @e[type=armor_stand,tag=hopper,x=-193,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:91}}]}] run particle minecraft:rain ~ ~1.2 ~ 0.2 0.2 0.2 0 25 force
execute as @e[type=armor_stand,tag=hopper,x=-193,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:91}}]}] run playsound minecraft:item.bucket.fill block @a -193 159 185 1 1
execute as @e[type=armor_stand,tag=hopper,x=-193,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:91}}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:94}}]}

execute as @e[type=armor_stand,tag=hopper,x=-193,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:95}}]}] run particle minecraft:rain ~ ~1.2 ~ 0.2 0.2 0.2 0 25 force
execute as @e[type=armor_stand,tag=hopper,x=-193,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:95}}]}] run playsound minecraft:item.bucket.fill block @a -193 159 185 1 1
execute as @e[type=armor_stand,tag=hopper,x=-193,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:95}}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}

execute as @e[type=armor_stand,tag=hopper,x=-197,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run particle minecraft:rain ~ ~1.2 ~ 0.2 0.2 0.2 0 25 force
execute as @e[type=armor_stand,tag=hopper,x=-197,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run playsound minecraft:item.bucket.fill block @a -197 159 185 1 1
execute as @e[type=armor_stand,tag=hopper,x=-197,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:95}}]}

execute as @e[type=armor_stand,tag=hopper,x=-197,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:92}}]}] run particle minecraft:rain ~ ~1.2 ~ 0.2 0.2 0.2 0 25 force
execute as @e[type=armor_stand,tag=hopper,x=-197,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:92}}]}] run playsound minecraft:item.bucket.fill block @a -197 159 185 1 1
execute as @e[type=armor_stand,tag=hopper,x=-197,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:92}}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}

execute as @e[type=armor_stand,tag=hopper,x=-197,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:94}}]}] run particle minecraft:rain ~ ~1.2 ~ 0.2 0.2 0.2 0 25 force
execute as @e[type=armor_stand,tag=hopper,x=-197,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:94}}]}] run playsound minecraft:item.bucket.fill block @a -197 159 185 1 1
execute as @e[type=armor_stand,tag=hopper,x=-197,y=158,z=185,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:94}}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:96}}]}

execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=49}] run function code:comms/comms_10

execute as @a unless entity @s[x=-221,y=156,z=252,dx=74,dy=17,dz=74] run tag @s add not_in_room
execute as @a if entity @s[x=-219,y=156,z=254,dx=70,dy=17,dz=70] run tag @s remove not_in_room

execute unless entity @a[tag=not_in_room] as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=50..99}] run scoreboard players add @s eventTimer 1
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=51}] run playsound minecraft:block.fire.extinguish block @a -170 161 251 1.5 0
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=51}] run clone -196 159 229 -190 163 229 -173 159 251
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=60}] run clone -196 159 231 -190 163 231 -173 159 251
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=70}] run clone -196 159 233 -190 163 233 -173 159 251
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=80}] run clone -196 159 235 -190 163 235 -173 159 251
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=90}] run clone -196 159 237 -190 163 237 -173 159 251
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run clone -196 159 239 -190 163 239 -173 159 251

execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run scoreboard players set progressTracker advProgress 57

execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -170 156 276 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -170 156 295 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -173 156 274 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -173 156 288 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -173 156 295 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -175 156 288 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -177 156 288 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -179 156 276 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -179 156 278 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -181 156 284 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -181 156 286 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -181 156 288 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -181 156 295 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -181 156 298 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -183 156 280 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -188 156 282 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -188 156 294 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -190 156 276 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -190 156 278 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -190 156 292 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -194 156 278 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -194 156 280 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -194 156 282 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -194 156 284 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -194 156 292 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -194 156 298 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run kill @e[type=armor_stand,tag=robot_prop]
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -181 158 274 {Tags:["spawn","level_21"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run tag @e[type=armor_stand,tag=level_21,tag=spawn] add respawn
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run scoreboard players set gameTag tagList 1
execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run tag @a remove testing_solution

execute as @e[type=armor_stand,tag=spawn,x=-197,y=158,z=172,dx=0,dy=0,dz=0,scores={eventTimer=100}] run kill @e[tag=level_20]

#rotate scientist
execute as @e[tag=scientist_spy] at @s run tp @s ~ ~ ~ facing entity @p[sort=nearest,x=-177,y=158,z=242,dx=14,dy=7,dz=8]

execute as @e[tag=scientist_hallway_1] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_hallway_1] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -146.5 158 174.0

execute as @e[tag=scientist_hallway_2] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_hallway_2] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -141 158 197

execute as @e[tag=scientist_hallway_3] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_hallway_3] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -162.0 158 210.0

#rocket particles
particle minecraft:poof -185 159 309 1 0 1 0 5 force
particle minecraft:poof -185 159 315 1 0 1 0 5 force
particle minecraft:poof -179 159 315 1 0 1 0 5 force
particle minecraft:poof -179 159 309 1 0 1 0 5 force

#achievement
execute if block -155 158 206 minecraft:orange_candle_cake[lit=false] run advancement grant @a[advancements={code:secrets/cake3=false}] only code:secrets/cake3

#FARM PARTICLES
particle minecraft:spore_blossom_air -223 162 181 5 1 5 0 2 force