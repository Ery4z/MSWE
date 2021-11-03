###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

kill @e[type=armor_stand,tag=level_1]

summon minecraft:armor_stand -7 94 67 {Tags:["spawn","level_1"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}

summon minecraft:armor_stand -5 94 64 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_1"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}
summon minecraft:armor_stand -5 94 59 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_1"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

summon minecraft:armor_stand -7 92 64 {Tags:["modifier","level_1"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
summon minecraft:armor_stand -3 92 64 {Tags:["modifier","level_1"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
summon minecraft:armor_stand -1 92 64 {Tags:["modifier","level_1"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
summon minecraft:armor_stand 1 92 59 {Tags:["modifier","level_1"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

summon minecraft:armor_stand -14 96.5 63 {Tags:["hologram","level_1"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:80}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
summon minecraft:armor_stand -3 96.5 52 {Tags:["hologram","level_1"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:80}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
summon minecraft:armor_stand -3 96.5 74 {Tags:["hologram","level_1"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
summon minecraft:armor_stand 8 96.5 63 {Tags:["hologram","level_1"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
summon minecraft:armor_stand -6.0 96.0 64 {Tags:["hologram","level_1"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:21}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
summon minecraft:armor_stand -6.0 96 59 {Tags:["hologram","level_1"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:20}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
summon minecraft:armor_stand -2 93.5 61 {Tags:["hologram","level_1"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:3}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

summon minecraft:armor_stand -12 94 54 {Tags:["hint","level_1"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
scoreboard players set timesStopped stopCounter 0

tag @e[type=armor_stand,tag=spawn] add respawn
tag @a remove testing_solution

fill 10 95 62 10 95 64 minecraft:smooth_stone
fill 10 96 62 10 97 64 minecraft:iron_block

clone -8 90 58 2 90 68 -8 94 58

scoreboard players set gameTag tagList 1

function code:comms/comms_1