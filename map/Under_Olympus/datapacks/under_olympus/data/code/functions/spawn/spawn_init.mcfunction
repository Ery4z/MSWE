###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###SPAWN SPAWN-AREA PROPS-------------------------------------------
kill @e[tag=spawn_area_prop]
tag @a remove hibernation_ready
fill 1003 101 -3 997 102 3 minecraft:cave_air replace minecraft:barrier

#spawn hologram
summon minecraft:armor_stand 1013 102.5 5 {Tags:["spawn_area_prop","hologram"],Rotation:[180.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
summon minecraft:armor_stand 1022 103.5 0 {Tags:["spawn_area_prop","hologram"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:45}},{}],Pose:{RightArm:[0f,0f,0f]}}

#spawn hibernation pod
summon armor_stand 1002 101.5 3 {Tags:["spawn_area_prop","hibernation_pod"],Rotation:[-90.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:11}},{}],NoGravity:1b,Invisible:1b,ShowArms:1b,Invulnerable:1b,DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
summon armor_stand 998 101.5 3 {Tags:["spawn_area_prop","hibernation_pod"],Rotation:[-90.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:11}},{}],NoGravity:1b,Invisible:1b,ShowArms:1b,Invulnerable:1b,DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
summon armor_stand 1002 101.5 -3 {Tags:["spawn_area_prop","hibernation_pod"],Rotation:[90.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:11}},{}],NoGravity:1b,Invisible:1b,ShowArms:1b,Invulnerable:1b,DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
summon armor_stand 998 101.5 -3 {Tags:["spawn_area_prop","hibernation_pod"],Rotation:[90.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:11}},{}],NoGravity:1b,Invisible:1b,ShowArms:1b,Invulnerable:1b,DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

#spawn hibernation door
summon armor_stand 1002 102.5 3.3125 {Tags:["spawn_area_prop","hibernation_door","door_1"],Rotation:[-90.0f,0.0f],HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:2}},{}],NoGravity:1b,Invisible:1b,ShowArms:1b,Invulnerable:1b,DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
summon armor_stand 998 102.5 3.3125 {Tags:["spawn_area_prop","hibernation_door","door_2"],Rotation:[-90.0f,0.0f],HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:2}},{}],NoGravity:1b,Invisible:1b,ShowArms:1b,Invulnerable:1b,DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
summon armor_stand 1002 102.5 -2.3125 {Tags:["spawn_area_prop","hibernation_door","door_3"],Rotation:[90.0f,0.0f],HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:2}},{}],NoGravity:1b,Invisible:1b,ShowArms:1b,Invulnerable:1b,DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
summon armor_stand 998 102.5 -2.3125 {Tags:["spawn_area_prop","hibernation_door","door_4"],Rotation:[90.0f,0.0f],HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:2}},{}],NoGravity:1b,Invisible:1b,ShowArms:1b,Invulnerable:1b,DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

#set hibernation door scores
scoreboard players set @e[tag=hibernation_door,tag=spawn_area_prop] hibernationScore 138

summon minecraft:armor_stand 1000 101 0 {Tags:["spawn_area_prop","world_spawn"],Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b}
scoreboard players add @e[tag=world_spawn] eventTimer 0

fill 1008 102 1 1008 102 -1 minecraft:smooth_stone
fill 1008 103 1 1008 104 -1 minecraft:iron_block
fill 998 106 0 1002 106 0 minecraft:blue_ice replace minecraft:sea_lantern
fill 1002 101 -4 998 101 4 minecraft:blue_ice replace minecraft:sea_lantern

fill 1002 101 3 1002 103 3 minecraft:barrier
fill 998 101 3 998 103 3 minecraft:barrier
fill 998 101 -3 998 103 -3 minecraft:barrier
fill 1002 101 -3 1002 103 -3 minecraft:barrier

#reset certain player scoreboards
scoreboard players set robotsCrashed robotCrash 0
scoreboard players set robotsCollided robotCollision 0
scoreboard players set hints hintsTaken 0
scoreboard players set @a timesDied 0