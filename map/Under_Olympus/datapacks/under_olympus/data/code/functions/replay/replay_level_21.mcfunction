###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add replay eventTimer 1

execute if score replay eventTimer matches 10 run scoreboard players set replayTag tagList 1
execute if score replay eventTimer matches 10 run spawnpoint @a -170 158 255 0
execute if score replay eventTimer matches 10 run title @a times 10 20 10
execute if score replay eventTimer matches 10 run title @a subtitle {"text":""}
execute if score replay eventTimer matches 10 run title @a title {"text":"\uf009"}

execute if score replay eventTimer matches 20 run tp @a[tag=!admin] -170 158 255 0 0

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -170 162.5 286 {Tags:["hologram","level_21"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:92}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -170 162.5 253 {Tags:["hologram","level_21"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -150 162.5 282 {Tags:["hologram","level_21"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -192.0 160 296 {Tags:["hologram","level_21"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:109}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -171.0 160 276 {Tags:["hologram","level_21"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:107}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -171.0 160 296 {Tags:["hologram","level_21"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:112}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -183.0 160 303 {Tags:["hologram","level_21"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:110}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -200 158 264 {Tags:["hint","level_21"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -170 158 296 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -170 158 276 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -170 160.125 276 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper_display","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:orange_concrete",Count:1b}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -194 158 296 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -194 160.125 296 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper_display","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -182 158 303 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -177 161 251 {Tags:["level_21","alarm"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -163 161 251 {Tags:["level_21","alarm"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -148 161 275 {Tags:["level_21","alarm"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -148 161 289 {Tags:["level_21","alarm"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}

execute if score replay eventTimer matches 30 run clone -196 159 239 -190 163 239 -173 159 251

execute if score replay eventTimer matches 30 run clone -143 153 255 -143 157 261 -148 159 279

execute if score replay eventTimer matches 30 run clone -196 151 272 -168 151 304 -196 158 272

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -170 156 276 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -170 156 295 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -173 156 274 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -173 156 288 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -173 156 295 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -175 156 288 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -177 156 288 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -179 156 276 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -179 156 278 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -181 156 284 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -181 156 286 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -181 156 288 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -181 156 295 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -181 156 298 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -183 156 280 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -188 156 282 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -188 156 294 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -190 156 276 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -190 156 278 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -190 156 292 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -194 156 278 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -194 156 280 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -194 156 282 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -194 156 284 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -194 156 292 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -194 156 298 {Tags:["modifier","level_21"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -181 158 274 {Tags:["spawn","level_21"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute if score replay eventTimer matches 30 run tag @e[type=armor_stand,tag=level_21,tag=spawn] add respawn
execute if score replay eventTimer matches 30 run scoreboard players set timesStopped stopCounter 0
execute if score replay eventTimer matches 30 run scoreboard players set gameTag tagList 1
execute if score replay eventTimer matches 30 run scoreboard players set musicTag tagList 4
execute if score replay eventTimer matches 30 run tag @a remove testing_solution

execute if score replay eventTimer matches 30 run scoreboard players set progressTracker advProgress 57

execute if score replay eventTimer matches ..29 run schedule function code:replay/replay_level_21 1t
execute if score replay eventTimer matches 30 run scoreboard players set replay eventTimer 0