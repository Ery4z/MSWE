###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add replay eventTimer 1

execute if score replay eventTimer matches 10 run scoreboard players set replayTag tagList 1
execute if score replay eventTimer matches 10 run spawnpoint @a 26 126 36 180
execute if score replay eventTimer matches 10 run title @a times 10 20 10
execute if score replay eventTimer matches 10 run title @a subtitle {"text":""}
execute if score replay eventTimer matches 10 run title @a title {"text":"\uf009"}

execute if score replay eventTimer matches 20 run tp @a[tag=!admin] 26 126 36 180 0

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 26 128.5 17 {Tags:["hologram","level_9"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:83}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 37 128.5 28 {Tags:["hologram","level_9"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:86}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 26 128.5 39 {Tags:["hologram","level_9"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 15 128.5 28 {Tags:["hologram","level_9"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 23.0 128 26 {Tags:["hologram","level_9"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:32}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 27.0 128 30 {Tags:["hologram","level_9"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:23}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 35 126 19 {Tags:["hint","level_9"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 26 126 30 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_9"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:basalt",Count:1b}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 30 126 26 {Pose:{RightArm:[0f,0f,0f]},Tags:["crafter","level_9"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:5}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 30 128.125 26 {Pose:{RightArm:[0f,0f,0f]},Tags:["crafter_display","level_9"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 22 126 26 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_9"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute if score replay eventTimer matches 30 run fill 13 127 29 13 127 27 minecraft:smooth_stone
execute if score replay eventTimer matches 30 run fill 13 128 29 13 129 27 minecraft:iron_block

execute if score replay eventTimer matches 30 run fill 25 127 41 27 127 41 minecraft:smooth_stone
execute if score replay eventTimer matches 30 run fill 25 128 41 27 129 41 minecraft:iron_block

execute if score replay eventTimer matches 30 run clone 21 122 23 31 122 33 21 126 23

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 26 124 32 {Tags:["modifier","level_9"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 24 124 32 {Tags:["modifier","level_9"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 22 124 28 {Tags:["modifier","level_9"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 26 124 24 {Tags:["modifier","level_9"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 30 126 32 {Tags:["spawn","level_9"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute if score replay eventTimer matches 30 run tag @e[type=armor_stand,tag=level_9,tag=spawn] add respawn
execute if score replay eventTimer matches 30 run scoreboard players set timesStopped stopCounter 0
execute if score replay eventTimer matches 30 run scoreboard players set gameTag tagList 1
execute if score replay eventTimer matches 30 run scoreboard players set musicTag tagList 2
execute if score replay eventTimer matches 30 run tag @a remove testing_solution

execute if score replay eventTimer matches 30 run scoreboard players set progressTracker advProgress 29

execute if score replay eventTimer matches ..29 run schedule function code:replay/replay_level_9 1t
execute if score replay eventTimer matches 30 run scoreboard players set replay eventTimer 0