###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add replay eventTimer 1

execute if score replay eventTimer matches 10 run scoreboard players set replayTag tagList 1
execute if score replay eventTimer matches 10 run spawnpoint @a -21 94 29 90
execute if score replay eventTimer matches 10 run title @a times 10 20 10
execute if score replay eventTimer matches 10 run title @a subtitle {"text":""}
execute if score replay eventTimer matches 10 run title @a title {"text":"\uf009"}

execute if score replay eventTimer matches 20 run tp @a[tag=!admin] -21 94 29 90 0

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -29 96.5 18 {Tags:["hologram","level_6"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:80}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -29 96.5 40 {Tags:["hologram","level_6"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:82}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -18 96.5 29 {Tags:["hologram","level_6"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -40 96.5 29 {Tags:["hologram","level_6"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -32 96 28.0 {Tags:["hologram","level_6"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:25}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -32 96 35.0 {Tags:["hologram","level_6"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:24}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -29 93.5 31 {Tags:["hologram","level_6"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:3}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -38 94 20 {Tags:["hint","level_6"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -32 94 29 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_6"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -32 94 33 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_6"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute if score replay eventTimer matches 30 run fill -16 95 30 -16 95 28 minecraft:smooth_stone
execute if score replay eventTimer matches 30 run fill -16 96 30 -16 97 28 minecraft:iron_block

execute if score replay eventTimer matches 30 run fill -42 95 30 -42 95 28 minecraft:smooth_stone
execute if score replay eventTimer matches 30 run fill -42 96 30 -42 97 28 minecraft:iron_block

execute if score replay eventTimer matches 30 run clone -34 90 24 -24 90 34 -34 94 24

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -27 92 29 {Tags:["modifier","level_6"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -31 92 29 {Tags:["modifier","level_6"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -33 92 29 {Tags:["modifier","level_6"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -25 94 25 {Tags:["spawn","level_6"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute if score replay eventTimer matches 30 run tag @e[type=armor_stand,tag=level_6,tag=spawn] add respawn
execute if score replay eventTimer matches 30 run scoreboard players set timesStopped stopCounter 0
execute if score replay eventTimer matches 30 run scoreboard players set gameTag tagList 1
execute if score replay eventTimer matches 30 run scoreboard players set musicTag tagList 1
execute if score replay eventTimer matches 30 run tag @a remove testing_solution

execute if score replay eventTimer matches 30 run scoreboard players set progressTracker advProgress 18

execute if score replay eventTimer matches ..29 run schedule function code:replay/replay_level_6 1t
execute if score replay eventTimer matches 30 run scoreboard players set replay eventTimer 0