###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add replay eventTimer 1

execute if score replay eventTimer matches 10 run scoreboard players set replayTag tagList 1
execute if score replay eventTimer matches 10 run spawnpoint @a -52 126 53 0
execute if score replay eventTimer matches 10 run title @a times 10 20 10
execute if score replay eventTimer matches 10 run title @a subtitle {"text":""}
execute if score replay eventTimer matches 10 run title @a title {"text":"\uf009"}

execute if score replay eventTimer matches 20 run tp @a[tag=!admin] -52 126 53 0 0

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -41 128.5 78 {Tags:["hologram","level_13"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -30 128.5 89 {Tags:["hologram","level_13"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -30 128.5 67 {Tags:["hologram","level_13"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:83}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -19 128.5 78 {Tags:["hologram","level_13"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:86}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -33 128 84.0 {Tags:["hologram","level_13"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:23}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -26 128 77.0 {Tags:["hologram","level_13"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:32}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -21 126 69 {Tags:["hint","level_13"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -33 126 82 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:basalt",Count:1b}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -33 126 78 {Pose:{RightArm:[0f,0f,0f]},Tags:["crafter","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:5}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -33 128.125 78 {Pose:{RightArm:[0f,0f,0f]},Tags:["crafter_display","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -26 126 78 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute if score replay eventTimer matches 30 run fill -31 127 91 -29 127 91 minecraft:smooth_stone
execute if score replay eventTimer matches 30 run fill -31 128 91 -29 129 91 minecraft:iron_block

execute if score replay eventTimer matches 30 run fill -43 127 77 -43 127 79 minecraft:smooth_stone
execute if score replay eventTimer matches 30 run fill -43 128 77 -43 129 79 minecraft:iron_block

execute if score replay eventTimer matches 30 run clone -35 122 73 -25 122 83 -35 126 73

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -26 124 80 {Tags:["modifier","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -28 124 74 {Tags:["modifier","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -28 124 78 {Tags:["modifier","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -28 124 82 {Tags:["modifier","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -30 124 76 {Tags:["modifier","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -30 124 78 {Tags:["modifier","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -32 124 78 {Tags:["modifier","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -34 124 78 {Tags:["modifier","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -35 126 78 {Tags:["spawn","level_13"],Rotation:[-90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute if score replay eventTimer matches 30 run tag @e[type=armor_stand,tag=level_13,tag=spawn] add respawn
execute if score replay eventTimer matches 30 run scoreboard players set timesStopped stopCounter 0
execute if score replay eventTimer matches 30 run scoreboard players set gameTag tagList 1
execute if score replay eventTimer matches 30 run scoreboard players set musicTag tagList 2
execute if score replay eventTimer matches 30 run tag @a remove testing_solution

execute if score replay eventTimer matches 30 run scoreboard players set progressTracker advProgress 37

execute if score replay eventTimer matches ..29 run schedule function code:replay/replay_level_13 1t
execute if score replay eventTimer matches 30 run scoreboard players set replay eventTimer 0