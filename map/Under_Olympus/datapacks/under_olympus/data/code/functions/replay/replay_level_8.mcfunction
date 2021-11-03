###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add replay eventTimer 1

execute if score replay eventTimer matches 10 run scoreboard players set replayTag tagList 1
execute if score replay eventTimer matches 10 run spawnpoint @a -55 94 47 0
execute if score replay eventTimer matches 10 run title @a times 10 20 10
execute if score replay eventTimer matches 10 run title @a subtitle {"text":""}
execute if score replay eventTimer matches 10 run title @a title {"text":"\uf009"}

execute if score replay eventTimer matches 20 run tp @a[tag=!admin] -55 94 47 0 0

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -47 96.5 74 {Tags:["hologram","level_8"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:81}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -66 96.5 63 {Tags:["hologram","level_8"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:82}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -55 96.5 44 {Tags:["hologram","level_8"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -36 96.5 55 {Tags:["hologram","level_8"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -57.0 96 66 {Tags:["hologram","level_8"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:28}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -57.0 96 59 {Tags:["hologram","level_8"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:29}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -59 93.5 52 {Tags:["hologram","level_8"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:3}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -38 94 72 {Tags:["hint","level_8"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -59 94 59 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -59 94 66 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -33.9 95.5 55 {Tags:["elevator_door_down","level_8"],Marker:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Rotation:[-90.0f,0.0f],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:10}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run fill -32 96 54 -32 128 54 minecraft:air
execute if score replay eventTimer matches 30 run fill -32 96 56 -32 128 56 minecraft:air

execute if score replay eventTimer matches 30 run fill -54 95 42 -56 95 42 minecraft:smooth_stone
execute if score replay eventTimer matches 30 run fill -54 96 42 -56 97 42 minecraft:iron_block

execute if score replay eventTimer matches 30 run fill -35 95 54 -35 97 56 minecraft:barrier

execute if score replay eventTimer matches 30 run clone -60 90 50 -42 90 68 -60 94 50

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -45 92 55 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -47 92 67 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -47 92 65 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -47 92 62 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -49 92 59 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -49 92 51 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -50 92 57 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -51 92 63 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -53 92 55 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -53 92 53 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -53 92 51 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -55 92 67 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -55 92 63 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -55 92 59 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -55 92 55 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -55 92 53 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -55 92 51 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -57 92 63 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -57 92 55 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -57 92 53 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -57 92 51 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -59 92 65 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -59 92 55 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -59 92 53 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -59 92 51 {Tags:["modifier","level_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -43 94 62 {Tags:["spawn","level_8"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute if score replay eventTimer matches 30 run tag @e[type=armor_stand,tag=level_8,tag=spawn] add respawn
execute if score replay eventTimer matches 30 run scoreboard players set timesStopped stopCounter 0
execute if score replay eventTimer matches 30 run scoreboard players set gameTag tagList 1
execute if score replay eventTimer matches 30 run scoreboard players set musicTag tagList 1
execute if score replay eventTimer matches 30 run tag @a remove testing_solution

execute if score replay eventTimer matches 30 run scoreboard players set progressTracker advProgress 23

execute if score replay eventTimer matches ..29 run schedule function code:replay/replay_level_8 1t
execute if score replay eventTimer matches 30 run scoreboard players set replay eventTimer 0