###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add replay eventTimer 1

execute if score replay eventTimer matches 10 run scoreboard players set replayTag tagList 1
execute if score replay eventTimer matches 10 run spawnpoint @a -87 158 350 0
execute if score replay eventTimer matches 10 run title @a times 10 20 10
execute if score replay eventTimer matches 10 run title @a subtitle {"text":""}
execute if score replay eventTimer matches 10 run title @a title {"text":"\uf009"}

execute if score replay eventTimer matches 20 run tp @a[tag=!admin] -87 158 350 0 0

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -73 162.5 378 {Tags:["hologram","level_23"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:90}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -87 162.5 348 {Tags:["hologram","level_23"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -120 162.5 380 {Tags:["hologram","level_23"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -74.0 160 372 {Tags:["hologram","level_23"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:112}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -79.0 160 396 {Tags:["hologram","level_23"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:104}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -95.0 160 374 {Tags:["hologram","level_23"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:109}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -95.0 160 394 {Tags:["hologram","level_23"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:103}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -97 158 357 {Tags:["hint","level_23"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -73 158 372 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -97 158 374 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -97 160.125 374 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper_display","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -97 158 394 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -97 160.125 394 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper_display","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -73 158 392 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -78 158 396 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -94 161 346 {Tags:["level_23","alarm"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -80 161 346 {Tags:["level_23","alarm"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -122 161 387 {Tags:["level_23","alarm"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -122 161 373 {Tags:["level_23","alarm"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -48.8 162 393.0 {Tags:["level_23","computer"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:14}},{}],Pose:{RightArm:[0f,10f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -48.8 162 385.0 {Tags:["level_23","computer"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:13}},{}],Pose:{RightArm:[0f,10f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -48.8 162 377.0 {Tags:["level_23","computer"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:12}},{}],Pose:{RightArm:[0f,10f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -43.2 162 380.7 {Tags:["level_23","computer"],Rotation:[180.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:12}},{}],Pose:{RightArm:[0f,-10f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -43.2 162 382.3 {Tags:["level_23","computer"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:16}},{}],Pose:{RightArm:[0f,10f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -43.2 162 388.7 {Tags:["level_23","computer"],Rotation:[180.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:16}},{}],Pose:{RightArm:[0f,-10f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -43.2 162 390.3 {Tags:["level_23","computer"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:14}},{}],Pose:{RightArm:[0f,10f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -49 162 378 {Tags:["level_23","prop"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:20}},{}],Pose:{RightArm:[0f,10f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -49 162 386.3 {Tags:["level_23","prop"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:21}},{}],Pose:{RightArm:[0f,25f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:drowned -135 159 370 {Tags:["level_23","scientist_spy"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:44}}]}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -47.65 162.3 377 {Tags:["level_23","scientist_sitting"],Rotation:[90.0f,10.0f],Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,Passengers:[{id:"minecraft:drowned",Tags:["level_23","scientist_sitting"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}}],ArmorItems:[{},{},{},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:42}}]}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -47.65 162.3 385 {Tags:["level_23","scientist_sitting"],Rotation:[90.0f,10.0f],Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,Passengers:[{id:"minecraft:drowned",Tags:["level_23","scientist_sitting"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}}],ArmorItems:[{},{},{},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:43}}]}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -47.65 162.3 393 {Tags:["level_23","scientist_sitting"],Rotation:[90.0f,10.0f],Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,Passengers:[{id:"minecraft:drowned",Tags:["level_23","scientist_sitting"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}}],ArmorItems:[{},{},{},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:44}}]}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -44 162.3 379.65 {Tags:["level_23","scientist_sitting"],Rotation:[0.0f,10.0f],Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,Passengers:[{id:"minecraft:drowned",Tags:["level_23","scientist_sitting"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}}],ArmorItems:[{},{},{},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:45}}]}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -44 162.3 391.35 {Tags:["level_23","scientist_sitting"],Rotation:[180.0f,10.0f],Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,Passengers:[{id:"minecraft:drowned",Tags:["level_23","scientist_sitting"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}}],ArmorItems:[{},{},{},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:46}}]}]}

execute if score replay eventTimer matches 30 run execute as @e[type=armor_stand,tag=scientist_sitting] at @s run data modify entity @e[type=drowned,tag=scientist_sitting,sort=nearest,limit=1] Rotation set from entity @s Rotation

execute if score replay eventTimer matches 30 run clone -113 150 343 -107 154 343 -90 159 346

execute if score replay eventTimer matches 30 run clone -143 153 352 -143 157 358 -122 159 377

execute if score replay eventTimer matches 30 run clone -99 151 370 -71 151 398 -99 158 370

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -71 156 390 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -73 156 388 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -73 156 390 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -73 156 392 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -73 156 394 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -75 156 394 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -77 156 374 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -77 156 378 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -77 156 380 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -77 156 396 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -77 156 397 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -79 156 382 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -79 156 384 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -81 156 378 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -83 156 372 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -83 156 374 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -83 156 388 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -85 156 376 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -85 156 382 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -89 156 378 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -89 156 380 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -89 156 382 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -89 156 384 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -89 156 388 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -91 156 376 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -91 156 378 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -91 156 386 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -95 156 372 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -95 156 374 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -95 156 386 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -97 156 374 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -97 156 378 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -97 156 384 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -97 156 386 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -97 156 392 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -97 156 394 {Tags:["modifier","level_23"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -84 158 370 {Tags:["spawn","level_23"],Rotation:[-90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -86 158 370 {Tags:["spawn","level_23"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute if score replay eventTimer matches 30 run tag @e[type=armor_stand,tag=level_23,tag=spawn] add respawn
execute if score replay eventTimer matches 30 run scoreboard players set timesStopped stopCounter 0
execute if score replay eventTimer matches 30 run scoreboard players set gameTag tagList 1
execute if score replay eventTimer matches 30 run scoreboard players set musicTag tagList 4
execute if score replay eventTimer matches 30 run tag @a remove testing_solution

execute if score replay eventTimer matches 30 run scoreboard players set progressTracker advProgress 61

execute if score replay eventTimer matches ..29 run schedule function code:replay/replay_level_23 1t
execute if score replay eventTimer matches 30 run scoreboard players set replay eventTimer 0