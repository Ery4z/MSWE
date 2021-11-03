###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add replay eventTimer 1

execute if score replay eventTimer matches 10 run scoreboard players set replayTag tagList 1
execute if score replay eventTimer matches 10 run spawnpoint @a 49 94 45 180
execute if score replay eventTimer matches 10 run title @a times 10 20 10
execute if score replay eventTimer matches 10 run title @a subtitle {"text":""}
execute if score replay eventTimer matches 10 run title @a title {"text":"\uf009"}

execute if score replay eventTimer matches 20 run tp @a[tag=!admin] 49 94 45 180 0

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 49 96.5 26 {Tags:["hologram","level_4"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:81}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 60 96.5 37 {Tags:["hologram","level_4"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:81}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 49 96.5 48 {Tags:["hologram","level_4"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 38 96.5 37 {Tags:["hologram","level_4"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 52.0 96 39 {Tags:["hologram","level_4"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:26}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 52.0 96 35 {Tags:["hologram","level_4"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:27}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 46 93.5 39 {Tags:["hologram","level_4"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:3}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 40 94 46 {Tags:["hint","level_4"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 53 94 35 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_4"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 53 94 39 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_4"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 49 94.3 20.65 {Tags:["scientist_sitting","level_4"],Rotation:[0.0f,10.0f],Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,Passengers:[{id:"minecraft:drowned",Tags:["scientist_sitting","level_4"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}}],ArmorItems:[{},{},{},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:41}}]}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 49.35 94.3 17 {Tags:["scientist_sitting","level_4"],Rotation:[90.0f,10.0f],Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,Passengers:[{id:"minecraft:drowned",Tags:["scientist_sitting","level_4"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}}],ArmorItems:[{},{},{},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:43}}]}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 41 94.3 14.35 {Tags:["scientist_sitting","level_4"],Rotation:[180.0f,10.0f],Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,Passengers:[{id:"minecraft:drowned",Tags:["scientist_sitting","level_4"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}}],ArmorItems:[{},{},{},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:45}}]}]}

execute if score replay eventTimer matches 30 run execute as @e[type=armor_stand,tag=scientist_sitting] at @s run data modify entity @e[type=drowned,tag=scientist_sitting,sort=nearest,limit=1] Rotation set from entity @s Rotation

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 41.25 94 13.25 {Tags:["computer","level_4"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:12}},{}],Pose:{RightArm:[0f,-10f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 49.75 94 13.25 {Tags:["computer","level_4"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:16}},{}],Pose:{RightArm:[0f,10f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 48.25 94 17.75 {Tags:["computer","level_4"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:12}},{}],Pose:{RightArm:[0f,-10f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 49.75 94 21.75 {Tags:["computer","level_4"],Rotation:[180.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:13}},{}],Pose:{RightArm:[0f,-10f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 42 94 13 {Tags:["shake","level_4"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:20}},{}],Pose:{RightArm:[0f,10f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 41.0 94 23 {Tags:["shake","level_4"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:21}},{}],Pose:{RightArm:[0f,25f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 27 96.5 48 {Tags:["hologram","level_4"],Rotation:[180.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:52}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 34 96.5 37 {Tags:["hologram","level_4"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 34 96.5 21 {Tags:["hologram","level_4"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:54}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 20 96.5 21 {Tags:["hologram","level_4"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 20 96.5 37 {Tags:["hologram","level_4"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:47}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 27 100.5 33 {Tags:["alarm","level_4"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 27 100.5 17 {Tags:["alarm","level_4"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 45 100.5 17 {Tags:["alarm","level_4"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run fill 36 95 38 36 95 36 minecraft:smooth_stone
execute if score replay eventTimer matches 30 run fill 36 96 38 36 97 36 minecraft:iron_block

execute if score replay eventTimer matches 30 run fill 48 95 50 50 95 50 minecraft:smooth_stone
execute if score replay eventTimer matches 30 run fill 48 96 50 50 97 50 minecraft:iron_block

execute if score replay eventTimer matches 30 run clone 44 90 32 54 90 42 44 94 32

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 53 92 41 {Tags:["modifier","level_4"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 53 92 37 {Tags:["modifier","level_4"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 51 92 41 {Tags:["modifier","level_4"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 51 92 33 {Tags:["modifier","level_4"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 47 92 35 {Tags:["modifier","level_4"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 45 92 39 {Tags:["modifier","level_4"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand 54 94 41 {Tags:["spawn","level_4"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute if score replay eventTimer matches 30 run tag @e[type=armor_stand,tag=level_4,tag=spawn] add respawn
execute if score replay eventTimer matches 30 run scoreboard players set timesStopped stopCounter 0
execute if score replay eventTimer matches 30 run scoreboard players set gameTag tagList 1
execute if score replay eventTimer matches 30 run scoreboard players set musicTag tagList 1
execute if score replay eventTimer matches 30 run tag @a remove testing_solution

execute if score replay eventTimer matches 30 run scoreboard players set progressTracker advProgress 14

execute if score replay eventTimer matches ..29 run schedule function code:replay/replay_level_4 1t
execute if score replay eventTimer matches 30 run scoreboard players set replay eventTimer 0