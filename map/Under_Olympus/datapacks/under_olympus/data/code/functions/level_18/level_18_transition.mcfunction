###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0] run scoreboard players add @s eventTimer 0
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=..49}] run scoreboard players add @s eventTimer 1

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run spawnpoint @a -163 158 151 90

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -171 160.5 140 {Tags:["hologram","level_18"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:83}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -171 160.5 162 {Tags:["hologram","level_18"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:84}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -160 160.5 151 {Tags:["hologram","level_18"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -182 160.5 151 {Tags:["hologram","level_18"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -176 160 150.0 {Tags:["hologram","level_18"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:100}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -171 160 155.0 {Tags:["hologram","level_18"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:112}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -169 160 149.0 {Tags:["hologram","level_18"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:101}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -166 158 151 {Tags:["robot_prop"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -162 158 160 {Tags:["hint","level_18"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run scoreboard players set timesStopped stopCounter 0

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -171 158 153 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_18"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -169 158 147 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper","level_18"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -169 160.125 147 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper_display","level_18"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -176 158 151 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_18"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -184 159 150 -184 159 152 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -184 160 150 -184 161 152 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone -176 154 146 -166 154 156 -176 158 146

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=30}] run particle minecraft:cloud -158 159.0 151 0 0 1 0.05 50
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=30}] run playsound minecraft:block.fire.extinguish block @a -158 160 151 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -158 159 150 -158 159 152 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -158 160 150 -158 160 152 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -158 160 150 -158 160 152 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -158 161 150 -158 161 152 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=50}] run fill -158 161 150 -158 161 152 minecraft:air

execute as @e[type=armor_stand,tag=blockswap,x=-149,y=158,z=151,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-149,y=158,z=151,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}
execute as @e[type=armor_stand,tag=blockswap,x=-143,y=158,z=151,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:92}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-143,y=158,z=151,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:92}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=hopper,x=-145,y=158,z=151,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run particle minecraft:rain ~ ~1.2 ~ 0.2 0.2 0.2 0 25 force
execute as @e[type=armor_stand,tag=hopper,x=-145,y=158,z=151,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run playsound minecraft:item.bucket.fill block @a -145 159 151 1 1
execute as @e[type=armor_stand,tag=hopper,x=-145,y=158,z=151,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:92}}]}

execute as @a unless entity @s[x=-183,y=158,z=139,dx=24,dy=12,dz=24] run tag @s add not_in_room
execute as @a if entity @s[x=-181,y=158,z=141,dx=20,dy=12,dz=20] run tag @s remove not_in_room

execute unless entity @a[tag=not_in_room] as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=50..409}] run scoreboard players add @s eventTimer 1
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=51}] run playsound minecraft:block.fire.extinguish block @a -158 160 151 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -158 161 150 -158 161 152 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -158 159 150 -158 160 152 minecraft:barrier
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -158 160 150 -158 160 152 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -158 161 150 -158 161 152 minecraft:iron_block
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -158 159 150 -158 159 152 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -158 160 150 -158 160 152 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=110}] run scoreboard players set musicTag tagList 0
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=110}] run playsound minecraft:fx.rumble.heavy ambient @a ~ ~ ~ 100 1

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=110..179}] run execute as @a at @s unless block ~ ~-1 ~ minecraft:air run tp @s ~ ~0.1 ~ ~ ~
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=180..199}] run execute as @a at @s unless block ~ ~-1 ~ minecraft:air run tp @s ~ ~0.15 ~ ~ ~
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=200..250}] run execute as @a at @s unless block ~ ~-1 ~ minecraft:air run tp @s ~ ~0.1 ~ ~ ~

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=130}] run fill -183 157 139 -159 171 163 minecraft:blue_ice replace minecraft:sea_lantern

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=130}] run fill -175 170 147 -167 170 155 minecraft:gold_block replace minecraft:redstone_block

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -171 160 154 minecraft:lightning_rod[facing=north,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -171 160 154 minecraft:lightning_rod[facing=north,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -171 162 154 minecraft:lightning_rod[facing=north,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -171 162 154 minecraft:lightning_rod[facing=north,powered=true]

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -169 160 148 minecraft:lightning_rod[facing=north,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -169 160 148 minecraft:lightning_rod[facing=north,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -169 162 148 minecraft:lightning_rod[facing=north,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -169 162 148 minecraft:lightning_rod[facing=north,powered=true]

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -176 160 150 minecraft:lightning_rod[facing=south,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -176 160 150 minecraft:lightning_rod[facing=south,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -176 162 150 minecraft:lightning_rod[facing=south,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -176 162 150 minecraft:lightning_rod[facing=south,powered=true]

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=130}] run fill -183 161 139 -159 161 163 minecraft:gray_stained_glass_pane replace minecraft:end_rod
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=130}] run fill -183 162 139 -159 162 163 minecraft:gray_stained_glass_pane replace minecraft:end_rod

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=230..290}] run particle minecraft:cloud -174 168 143.0 0 0 0 0.1 1 force
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=230..290}] run particle minecraft:poof -174 168 143.0 0 0 0 0.15 1 force
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=230..290}] run particle minecraft:smoke -174 168 143.0 0 0 0 0.25 1 force

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=260..330}] run particle minecraft:cloud -163.0 169.0 160.3 1 0.1 0 0.1 1 force
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=270..330}] run particle minecraft:poof -163.0 169.0 160.0 1 0.1 0 0.15 1 force
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=270..330}] run particle minecraft:smoke -163.0 169.0 160.0 1 0.1 0 0.25 1 force

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=250..340}] run particle minecraft:smoke -180.0 165.1 156 0 0 0 0.15 100 force

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=320}] run fill -175 170 147 -167 170 155 minecraft:redstone_block replace minecraft:gold_block

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=350}] run fill -183 157 139 -159 171 163 minecraft:sea_lantern replace minecraft:blue_ice

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=380}] run setblock -171 160 154 minecraft:end_rod[facing=south]
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=380}] run setblock -171 162 154 minecraft:end_rod[facing=south]

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=390}] run setblock -169 160 148 minecraft:end_rod[facing=south]
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=390}] run setblock -169 162 148 minecraft:end_rod[facing=south]

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=400}] run setblock -176 160 150 minecraft:end_rod[facing=north]
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=400}] run setblock -176 162 150 minecraft:end_rod[facing=north]

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=400}] run fill -183 161 139 -159 161 163 minecraft:end_rod[facing=up] replace minecraft:gray_stained_glass_pane
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=400}] run fill -183 162 139 -159 162 163 minecraft:end_rod[facing=down] replace minecraft:gray_stained_glass_pane

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=410}] run scoreboard players set musicTag tagList 3

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=410}] run scoreboard players set progressTracker advProgress 51

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -166 156 151 {Tags:["modifier","level_18"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -167 156 151 {Tags:["modifier","level_18"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -169 156 153 {Tags:["modifier","level_18"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -173 156 151 {Tags:["modifier","level_18"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -173 156 153 {Tags:["modifier","level_18"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -176 156 151 {Tags:["modifier","level_18"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=410}] run kill @e[type=armor_stand,tag=robot_prop]
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -166 158 151 {Tags:["spawn","level_18"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=410}] run tag @e[type=armor_stand,tag=level_18,tag=spawn] add respawn
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=410}] run scoreboard players set gameTag tagList 1
execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=410}] run tag @a remove testing_solution

execute as @e[type=armor_stand,tag=spawn,x=-140,y=158,z=153,dx=0,dy=0,dz=0,scores={eventTimer=410}] run kill @e[tag=level_17]