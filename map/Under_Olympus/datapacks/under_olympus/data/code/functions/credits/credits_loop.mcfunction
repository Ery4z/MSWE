###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add credits eventTimer 1

execute if score credits eventTimer matches 200 run scoreboard players set musicTag tagList 0

###FADE TO CREDITS INTRO

execute if score credits eventTimer matches 200 run title @a times 10 50 0
execute if score credits eventTimer matches 200 run title @a subtitle {"text":""}
execute if score credits eventTimer matches 200 run title @a title {"text":"\uf009"}

execute if score credits eventTimer matches 210 run effect give @a minecraft:invisibility 999999 1 true
execute if score credits eventTimer matches 210 run kill @e[tag=level_27]
execute if score credits eventTimer matches 210 run kill @e[tag=robot]

execute if score credits eventTimer matches 220..1059 run tp @a -20 164 32 123 20
execute if score credits eventTimer matches 220 run setblock -20 163 32 minecraft:barrier
execute if score credits eventTimer matches 1060..1199 run tp @a -17 163 38.0 -90 -10
execute if score credits eventTimer matches 1060 run setblock -20 163 32 minecraft:air

execute if score credits eventTimer matches 230 run function code:credits/credits_init

###START CREDITS INTRO

execute if score credits eventTimer matches 260 run playsound minecraft:music.lower_than_low_credits record @a -19 166 34 100 1

execute if score credits eventTimer matches 260..309 run execute as @e[type=drowned,tag=scientist_watney] at @s run tp @s ~0.1 ~ ~ -90 0
execute if score credits eventTimer matches 309 run execute as @e[type=drowned,tag=scientist_watney] at @s run tp @s ~ ~ ~ -56 -15

execute if score credits eventTimer matches 420 run execute at @e[type=drowned,tag=scientist_watney] run playsound minecraft:entity.villager.yes neutral @a ~ ~ ~ 0.4 0.9
execute if score credits eventTimer matches 420 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"You did it! You saved Olympus! And.. you're alive, of course!","color":"white"}]

execute if score credits eventTimer matches 580 run execute at @e[type=drowned,tag=scientist_watney] run playsound minecraft:entity.villager.yes neutral @a ~ ~ ~ 0.4 0.9
execute if score credits eventTimer matches 580 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"You've managed to repair our malfunctioning systems and fix the nuclear reactor while crashing only ","color":"white"},{"score":{"name":"robotsCrashed","objective":"robotCrash"},"color":"white"},{"text":" RO-BOTS in total!","color":"white"}]
execute if score credits eventTimer matches 580 if score robotsCrashed robotCrash matches ..0 run advancement grant @a[advancements={code:challenges/0crashes=false}] only code:challenges/0crashes
execute if score credits eventTimer matches 580 if score robotsCrashed robotCrash matches ..9 run advancement grant @a[advancements={code:challenges/10crashes=false}] only code:challenges/10crashes
execute if score credits eventTimer matches 580 if score robotsCrashed robotCrash matches ..19 run advancement grant @a[advancements={code:challenges/20crashes=false}] only code:challenges/20crashes

execute if score credits eventTimer matches 740 run execute at @e[type=drowned,tag=scientist_watney] run playsound minecraft:entity.villager.yes neutral @a ~ ~ ~ 0.4 0.9
execute if score credits eventTimer matches 740 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"You've also used ","color":"white"},{"score":{"name":"hints","objective":"hintsTaken"},"color":"white"},{"text":" hints in the process, not bad!","color":"white"}]
execute if score credits eventTimer matches 740 if score hints hintsTaken matches ..0 run advancement grant @a[advancements={code:challenges/nevergiveup=false}] only code:challenges/nevergiveup

execute if score credits eventTimer matches 900 run execute at @e[type=drowned,tag=scientist_watney] run playsound minecraft:entity.villager.no neutral @a ~ ~ ~ 0.4 0.9
execute if score credits eventTimer matches 900 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"So i guess there's only one thing left to do now..","color":"white"}]

execute if score credits eventTimer matches 1060 run execute at @e[type=drowned,tag=scientist_watney] run playsound minecraft:entity.villager.yes neutral @a ~ ~ ~ 0.4 0.9
execute if score credits eventTimer matches 1060 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Congratulations on becoming our new employee of the month!","color":"white"}]

###FADE TO SLIDE 1

execute if score credits eventTimer matches 1180 run title @a times 10 30 0
execute if score credits eventTimer matches 1180 run title @a subtitle {"text":""}
execute if score credits eventTimer matches 1180 run title @a title {"text":"\uf009"}

execute if score credits eventTimer matches 1190 run kill @e[tag=slide_0]

execute if score credits eventTimer matches 1200..1354 run tp @a -193.0 167 262.0 -45 0
execute if score credits eventTimer matches 1200 run setblock -193 166 262 minecraft:barrier

execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -191.5 167.1 263.5 {Tags:["credits","slide_1"],Rotation:[135.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:100}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1210 run execute at @e[tag=slide_1] run setblock ~ ~ ~ minecraft:light[level=15]

execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -181 158 285 {Tags:["credits","robot_1"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:96}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:2}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -170 162.5 286 {Tags:["prop_1","credits"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:92}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -170 162.5 253 {Tags:["prop_1","credits"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -150 162.5 282 {Tags:["prop_1","credits"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -192.0 160 296 {Tags:["prop_1","credits"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:109}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -171.0 160 276 {Tags:["prop_1","credits"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:107}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -171.0 160 296 {Tags:["prop_1","credits"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:112}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -183.0 160 303 {Tags:["prop_1","credits"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:110}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -170 158 296 {Pose:{RightArm:[0f,0f,0f]},Tags:["prop_1","credits"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}
execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -170 158 276 {Pose:{RightArm:[0f,0f,0f]},Tags:["prop_1","credits"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -170 160.125 276 {Pose:{RightArm:[0f,0f,0f]},Tags:["prop_1","credits"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:orange_concrete",Count:1b}]}
execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -194 158 296 {Pose:{RightArm:[0f,0f,0f]},Tags:["prop_1","credits"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -194 160.125 296 {Pose:{RightArm:[0f,0f,0f]},Tags:["prop_1","credits"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b}]}
execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -182 158 303 {Pose:{RightArm:[0f,0f,0f]},Tags:["prop_1","credits"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -177 161 251 {Tags:["credits","prop_1"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -163 161 251 {Tags:["credits","prop_1"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -148 161 275 {Tags:["credits","prop_1"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute if score credits eventTimer matches 1210 run summon minecraft:armor_stand -148 161 289 {Tags:["credits","prop_1"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}

###START SLIDE 1

execute if score credits eventTimer matches 1220..1345 run execute as @e[type=armor_stand,tag=slide_1] at @s run tp @s ~-0.0025 ~ ~-0.0025 ~ ~
execute if score credits eventTimer matches 1220..1345 run execute as @e[type=armor_stand,tag=robot_1] at @s run tp @s ~ ~ ~0.1 ~ ~
execute if score credits eventTimer matches 1220..1345 run particle minecraft:poof -185 159 309 1 0 1 0 5 force
execute if score credits eventTimer matches 1220..1345 run particle minecraft:poof -185 159 315 1 0 1 0 5 force
execute if score credits eventTimer matches 1220..1345 run particle minecraft:poof -179 159 315 1 0 1 0 5 force
execute if score credits eventTimer matches 1220..1345 run particle minecraft:poof -179 159 309 1 0 1 0 5 force

###FADE TO SLIDE 2

execute if score credits eventTimer matches 1335 run title @a times 10 30 0
execute if score credits eventTimer matches 1335 run title @a subtitle {"text":""}
execute if score credits eventTimer matches 1335 run title @a title {"text":"\uf009"}

execute if score credits eventTimer matches 1345 run execute at @e[tag=slide_1] run setblock ~ ~ ~ minecraft:air
execute if score credits eventTimer matches 1345 run setblock -193 166 262 minecraft:air
execute if score credits eventTimer matches 1345 run kill @e[tag=slide_1]
execute if score credits eventTimer matches 1345 run kill @e[tag=robot_1]
execute if score credits eventTimer matches 1345 run kill @e[tag=prop_1]

execute if score credits eventTimer matches 1355..1509 run tp @a -89.0 133 154.0 135 25
execute if score credits eventTimer matches 1355 run setblock -89 132 154 minecraft:barrier

###START SLIDE 2

execute if score credits eventTimer matches 1365 run summon minecraft:armor_stand -89.70067 132.75864 153.29945 {Tags:["credits","slide_2"],Rotation:[-45.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:101}},{}],Pose:{RightArm:[-25f,0f,0f]}}

execute if score credits eventTimer matches 1365 run summon minecraft:armor_stand -98 126 143 {Tags:["credits","robot_2"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:2}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute if score credits eventTimer matches 1365 run summon minecraft:armor_stand -98 128.5 158 {Tags:["prop_2","credits"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:81}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1365 run summon minecraft:armor_stand -109 128.5 147 {Tags:["prop_2","credits"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1365 run summon minecraft:armor_stand -98 128.5 136 {Tags:["prop_2","credits"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1365 run summon minecraft:armor_stand -100 128 149.0 {Tags:["prop_2","credits"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:24}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1365 run summon minecraft:armor_stand -96 128 145.0 {Tags:["prop_2","credits"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:25}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1365 run summon minecraft:armor_stand -94 125.5 150 {Tags:["prop_2","credits"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:3}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1365 run summon minecraft:armor_stand -107 126 138 {Tags:["prop_2","credits"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score credits eventTimer matches 1365 run summon minecraft:armor_stand -96 126 143 {Pose:{RightArm:[0f,0f,0f]},Tags:["prop_2","credits"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}
execute if score credits eventTimer matches 1365 run summon minecraft:armor_stand -100 126 147 {Pose:{RightArm:[0f,0f,0f]},Tags:["prop_2","credits"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute if score credits eventTimer matches 1365 run summon minecraft:drowned -103 126 154 {Tags:["prop_2","credits"],Rotation:[150.0f,0.0f],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{Count:1,id:"minecraft:golden_chestplate"},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:42}}]}
execute if score credits eventTimer matches 1365 run summon minecraft:drowned -104 126 152 {Tags:["prop_2","credits"],Rotation:[-30.0f,0.0f],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{Count:1,id:"minecraft:golden_chestplate"},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:43}}]}

execute if score credits eventTimer matches 1365..1444 run execute as @e[type=armor_stand,tag=robot_2] at @s run tp @s ~ ~ ~0.1 0 0
execute if score credits eventTimer matches 1445..1484 run execute as @e[type=armor_stand,tag=robot_2] at @s run tp @s ~0.1 ~ ~ -90 0
execute if score credits eventTimer matches 1485..1500 run execute as @e[type=armor_stand,tag=robot_2] at @s run tp @s ~ ~ ~-0.1 180 0

###FADE TO SLIDE 3

execute if score credits eventTimer matches 1490 run title @a times 10 30 0
execute if score credits eventTimer matches 1490 run title @a subtitle {"text":""}
execute if score credits eventTimer matches 1490 run title @a title {"text":"\uf009"}

execute if score credits eventTimer matches 1500 run setblock -89 132 154 minecraft:air
execute if score credits eventTimer matches 1500 run kill @e[tag=slide_2]
execute if score credits eventTimer matches 1500 run kill @e[tag=robot_2]
execute if score credits eventTimer matches 1500 run kill @e[tag=prop_2]

execute if score credits eventTimer matches 1510..1664 run tp @a 45.0 116 62.0 90 0
execute if score credits eventTimer matches 1510 run setblock 45 115 62 minecraft:barrier

###START SLIDE 3

execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 44.0 116.20000 62.0 {Tags:["credits","slide_3"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:102}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run execute at @e[tag=slide_3] run setblock ~ ~ ~ minecraft:light[level=15]

execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 10 116 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 12 116 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 16 116 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 18 116 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 22 116 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 24 116 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 26 116 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 28 116 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 34 116 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 36 116 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 40 116 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 10 119 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 12 119 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 14 119 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 16 119 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 18 119 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 22 119 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 24 119 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 28 119 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 30 119 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 34 119 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 36 119 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 40 119 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 42 119 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 14 122 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 16 122 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 18 122 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 22 122 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 24 122 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 26 122 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 30 122 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 34 122 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 36 122 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 40 122 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 42 122 58 {Tags:["credits","prop_3"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 12 116 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 14 116 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 16 116 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 18 116 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 22 116 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 24 116 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 28 116 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 34 116 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 36 116 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 38 116 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 40 116 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 10 119 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 12 119 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 14 119 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 18 119 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 22 119 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 26 119 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 28 119 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 30 119 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 34 119 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 36 119 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 38 119 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 40 119 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 10 122 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 12 122 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 16 122 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 18 122 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 22 122 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 26 122 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 28 122 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 30 122 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 34 122 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 36 122 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 38 122 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1520 run summon minecraft:armor_stand 40 122 65 {Tags:["credits","prop_3"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}

###FADE TO SLIDE 4

execute if score credits eventTimer matches 1645 run title @a times 10 30 0
execute if score credits eventTimer matches 1645 run title @a subtitle {"text":""}
execute if score credits eventTimer matches 1645 run title @a title {"text":"\uf009"}

execute if score credits eventTimer matches 1655 run execute at @e[tag=slide_3] run setblock ~ ~ ~ minecraft:air
execute if score credits eventTimer matches 1655 run setblock 45 115 62 minecraft:air
execute if score credits eventTimer matches 1655 run kill @e[tag=slide_3]
execute if score credits eventTimer matches 1655 run kill @e[tag=prop_3]

execute if score credits eventTimer matches 1665..1819 run tp @a -90.0 133 198.0 135 25
execute if score credits eventTimer matches 1665 run setblock -90 132 198 minecraft:barrier

###START SLIDE 4

execute if score credits eventTimer matches 1675 run summon minecraft:armor_stand -90.70067 132.75864 197.29945 {Tags:["credits","slide_4"],Rotation:[-45.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:103}},{}],Pose:{RightArm:[-25f,0f,0f]}}

execute if score credits eventTimer matches 1675 run summon minecraft:armor_stand -96 126 200 {Tags:["credits","robot_4"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:1}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute if score credits eventTimer matches 1675 run summon minecraft:armor_stand -90 128.5 207 {Tags:["prop_4","credits"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:83}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1675 run summon minecraft:armor_stand -106 128.5 207 {Tags:["prop_4","credits"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:88}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1675 run summon minecraft:armor_stand -109 128.5 196 {Tags:["prop_4","credits"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1675 run summon minecraft:armor_stand -94 128 194.0 {Tags:["prop_4","credits"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:21}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1675 run summon minecraft:armor_stand -102 128 198.0 {Tags:["prop_4","credits"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:34}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1675 run summon minecraft:armor_stand -94 128 199.0 {Tags:["prop_4","credits"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:27}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1675 run summon minecraft:armor_stand -35 126 19 {Tags:["prop_4","credits"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score credits eventTimer matches 1675 run summon minecraft:armor_stand -94 126 200 {Pose:{RightArm:[0f,0f,0f]},Tags:["prop_4","credits"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
execute if score credits eventTimer matches 1675 run summon minecraft:armor_stand -94 126 192 {Pose:{RightArm:[0f,0f,0f]},Tags:["prop_4","credits"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}
execute if score credits eventTimer matches 1675 run summon minecraft:armor_stand -98 126 196 {Pose:{RightArm:[0f,0f,0f]},Tags:["prop_4","credits"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:5}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score credits eventTimer matches 1675 run summon minecraft:armor_stand -98 128.125 196 {Pose:{RightArm:[0f,0f,0f]},Tags:["prop_4","credits"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score credits eventTimer matches 1675 run summon minecraft:armor_stand -102 126 196 {Pose:{RightArm:[0f,0f,0f]},Tags:["prop_4","credits"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute if score credits eventTimer matches 1675 run summon minecraft:drowned -104 126 202 {Tags:["prop_4","credits"],Rotation:[45.0f,30.0f],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{Count:1,id:"minecraft:golden_chestplate"},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:44}}]}

execute if score credits eventTimer matches 1675..1754 run execute as @e[type=armor_stand,tag=robot_4] at @s run tp @s ~ ~ ~-0.1 180 0
execute if score credits eventTimer matches 1755..1774 run execute as @e[type=armor_stand,tag=robot_4] at @s run tp @s ~0.1 ~ ~ -90 0
execute if score credits eventTimer matches 1775 run data merge entity @e[type=armor_stand,x=-94,y=126,z=192,dx=0,dy=0,dz=0,tag=prop_4,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score credits eventTimer matches 1775 run data merge entity @e[type=armor_stand,tag=robot_4,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}
execute if score credits eventTimer matches 1775 run data merge entity @e[type=armor_stand,tag=robot_4,limit=1] {HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:2}},{}]}
execute if score credits eventTimer matches 1775..1810 run execute as @e[type=armor_stand,tag=robot_4] at @s run tp @s ~ ~ ~0.1 0 0

###FADE TO SLIDE 5

execute if score credits eventTimer matches 1800 run title @a times 10 30 0
execute if score credits eventTimer matches 1800 run title @a subtitle {"text":""}
execute if score credits eventTimer matches 1800 run title @a title {"text":"\uf009"}

execute if score credits eventTimer matches 1810 run setblock -90 132 198 minecraft:air
execute if score credits eventTimer matches 1810 run kill @e[tag=slide_4]
execute if score credits eventTimer matches 1810 run kill @e[tag=robot_4]
execute if score credits eventTimer matches 1810 run kill @e[tag=prop_4]

execute if score credits eventTimer matches 1820..1974 run tp @a -76.0 134 6.0 60 20
execute if score credits eventTimer matches 1820 run setblock -76 133 6 minecraft:barrier

###START SLIDE 5

execute if score credits eventTimer matches 1830 run summon minecraft:armor_stand -76.87300 133.84599 6.50410 {Tags:["credits","slide_5"],Rotation:[-120.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:104}},{}],Pose:{RightArm:[-20f,0f,0f]}}
execute if score credits eventTimer matches 1830 run execute at @e[tag=slide_5] run setblock ~ ~ ~ minecraft:light[level=15]

execute if score credits eventTimer matches 1830 run summon minecraft:armor_stand -78 127 9 {Tags:["credits","robot_5"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:2}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute if score credits eventTimer matches 1830 run summon minecraft:armor_stand -80 129 42 {Tags:["credits","prop_5"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[90f,0f,0f]}}
execute if score credits eventTimer matches 1830 run summon minecraft:armor_stand -94 129 42 {Tags:["credits","prop_5"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[90f,0f,0f]}}
execute if score credits eventTimer matches 1830 run summon minecraft:armor_stand -80 129 -6 {Tags:["credits","prop_5"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute if score credits eventTimer matches 1830 run summon minecraft:armor_stand -94 129 -6 {Tags:["credits","prop_5"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute if score credits eventTimer matches 1830 run summon minecraft:armor_stand -96 126 27.0 {Tags:["credits","prop_5"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:82}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1830 run summon minecraft:armor_stand -95.0 127 27.0 {Tags:["credits","prop_5"],Rotation:[0.0f,0.0f],ShowArms:1b,NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:80,display:{Name:'[{"text":"45kA Fuse","italic":false,"color":"gold"}]',Lore:['[{"text":"Can be used to replace a bad fuse.","color":"white"}]']}}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1830 run fill -96 126 28 -100 129 26 minecraft:sea_lantern replace minecraft:blue_ice
execute if score credits eventTimer matches 1830 run fill -98 127 26 -98 127 27 minecraft:redstone_block replace minecraft:gold_block
execute if score credits eventTimer matches 1830 run setblock -97 127 17 minecraft:light[level=15]
execute if score credits eventTimer matches 1830 run setblock -97 140 18 minecraft:end_rod[facing=up]
execute if score credits eventTimer matches 1830 run setblock -52 127 89 minecraft:gold_block
execute if score credits eventTimer matches 1830 run clone -90 145 50 -84 149 50 -90 127 42

execute if score credits eventTimer matches 1830 run summon minecraft:drowned -88 126 11 {Tags:["prop_5","credits"],Rotation:[150.0f,0.0f],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{Count:1,id:"minecraft:golden_chestplate"},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:41}}]}
execute if score credits eventTimer matches 1830 run summon minecraft:drowned -89 126 9 {Tags:["prop_5","credits"],Rotation:[-30.0f,0.0f],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{Count:1,id:"minecraft:golden_chestplate"},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:45}}]}

execute if score credits eventTimer matches 1830..1965 run execute as @e[type=armor_stand,tag=robot_5] at @s run tp @s ~ ~ ~0.1 ~ ~
execute if score credits eventTimer matches 1830..1965 run particle minecraft:lava -97 123 17 0 1.5 0 1 5 force
execute if score credits eventTimer matches 1830..1965 run particle minecraft:happy_villager -97 124 17 0 2 0 0 50 force

###FADE TO SLIDE 6

execute if score credits eventTimer matches 1955 run title @a times 10 30 0
execute if score credits eventTimer matches 1955 run title @a subtitle {"text":""}
execute if score credits eventTimer matches 1955 run title @a title {"text":"\uf009"}

execute if score credits eventTimer matches 1965 run execute at @e[tag=slide_5] run setblock ~ ~ ~ minecraft:air
execute if score credits eventTimer matches 1965 run setblock -76 133 6 minecraft:air
execute if score credits eventTimer matches 1965 run kill @e[tag=slide_5]
execute if score credits eventTimer matches 1965 run kill @e[tag=robot_5]
execute if score credits eventTimer matches 1965 run kill @e[tag=prop_5]

execute if score credits eventTimer matches 1975..2129 run tp @a -62.0 134 142.0 40 25
execute if score credits eventTimer matches 1975 run setblock -62 133 142 minecraft:barrier

###START SLIDE 6

execute if score credits eventTimer matches 1985 run summon minecraft:armor_stand -62.63682 133.75864 142.75905 {Tags:["credits","slide_6"],Rotation:[-140.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:105}},{}],Pose:{RightArm:[-25f,0f,0f]}}

execute if score credits eventTimer matches 1675 run summon minecraft:armor_stand -70 126 143 {Tags:["credits","robot_6"],Rotation:[0.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:1}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute if score credits eventTimer matches 1985 run summon minecraft:armor_stand -64 128.5 166 {Tags:["credits","prop_6"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:83}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1985 run summon minecraft:armor_stand -72 128.5 166 {Tags:["credits","prop_6"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:85}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1985 run summon minecraft:armor_stand -80 128.5 136 {Tags:["credits","prop_6"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:85}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1985 run summon minecraft:armor_stand -72 128.5 136 {Tags:["credits","prop_6"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:89}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1985 run summon minecraft:armor_stand -53 128.5 155 {Tags:["credits","prop_6"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1985 run summon minecraft:armor_stand -66 128 155.0 {Tags:["credits","prop_6"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:27}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1985 run summon minecraft:armor_stand -73 128 157.0 {Tags:["credits","prop_6"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:25}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 1985 run summon minecraft:armor_stand -74 128 147.0 {Tags:["credits","prop_6"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:36}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score credits eventTimer matches 1985 run summon minecraft:drowned -81 126 144 {Tags:["credits","prop_6"],Rotation:[135.0f,15.0f],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:32}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{Count:1,id:"minecraft:golden_chestplate"},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:51}}]}
execute if score credits eventTimer matches 1985 run summon minecraft:drowned -64 126 161 {Tags:["credits","prop_6"],Rotation:[-15.0f,10.0f],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{Count:1,id:"minecraft:golden_chestplate"},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:45}}]}

execute if score credits eventTimer matches 1985 run summon minecraft:armor_stand -66 126 153 {Pose:{RightArm:[0f,0f,0f]},Tags:["prop_6","credits"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
execute if score credits eventTimer matches 1985 run summon minecraft:armor_stand -73 126 155 {Pose:{RightArm:[0f,0f,0f]},Tags:["prop_6","credits"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}
execute if score credits eventTimer matches 1985 run summon minecraft:armor_stand -68 126 151 {Pose:{RightArm:[0f,0f,0f]},Tags:["prop_6","credits"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:5}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score credits eventTimer matches 1985 run summon minecraft:armor_stand -74 126 145 {Pose:{RightArm:[0f,0f,0f]},Tags:["prop_6","credits"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute if score credits eventTimer matches 1985..2120 run execute as @e[type=armor_stand,tag=robot_6] at @s run tp @s ~ ~ ~0.1 0 0

execute if score credits eventTimer matches 1985..2120 run particle minecraft:firework -81.0 127.5 143 0 0 0 0.05 1 force
execute if score credits eventTimer matches 1985..2120 run particle minecraft:crit -81.0 127.5 143 0 0 0 0.3 1 force
execute if score credits eventTimer matches 1985..2120 run particle minecraft:flame -81.0 127.5 143 0 0 0 0.005 1 force

###FADE TO SLIDE 7

execute if score credits eventTimer matches 2110 run title @a times 10 30 0
execute if score credits eventTimer matches 2110 run title @a subtitle {"text":""}
execute if score credits eventTimer matches 2110 run title @a title {"text":"\uf009"}

execute if score credits eventTimer matches 2120 run setblock -62 133 142 minecraft:air
execute if score credits eventTimer matches 2120 run kill @e[tag=slide_6]
execute if score credits eventTimer matches 2120 run kill @e[tag=robot_6]
execute if score credits eventTimer matches 2120 run kill @e[tag=prop_6]

execute if score credits eventTimer matches 2130..2284 run tp @a -131.0 169 111.0 130 20
execute if score credits eventTimer matches 2130 run setblock -131 168 111 minecraft:barrier

###START SLIDE 7

execute if score credits eventTimer matches 2140 run summon minecraft:armor_stand -131.77229 168.84599 110.35206 {Tags:["credits","slide_7"],Rotation:[-50.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:106}},{}],Pose:{RightArm:[-20f,0f,0f]}}
execute if score credits eventTimer matches 2140 run execute at @e[tag=slide_7] run setblock ~ ~ ~ minecraft:light[level=15]

execute if score credits eventTimer matches 2140 run summon minecraft:armor_stand -127 173 128 {Tags:["credits","prop_7"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2140 run summon minecraft:armor_stand -139 173 128 {Tags:["credits","prop_7"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2140 run summon minecraft:armor_stand -151 173 128 {Tags:["credits","prop_7"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2140 run summon minecraft:armor_stand -163 173 128 {Tags:["credits","prop_7"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2140 run summon minecraft:armor_stand -127 173 100 {Tags:["credits","prop_7"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2140 run summon minecraft:armor_stand -139 173 100 {Tags:["credits","prop_7"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2140 run summon minecraft:armor_stand -151 173 100 {Tags:["credits","prop_7"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2140 run summon minecraft:armor_stand -163 173 100 {Tags:["credits","prop_7"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2140 run summon minecraft:armor_stand -127 173 72 {Tags:["credits","prop_7"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2140 run summon minecraft:armor_stand -139 173 72 {Tags:["credits","prop_7"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2140 run summon minecraft:armor_stand -151 173 72 {Tags:["credits","prop_7"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2140 run summon minecraft:armor_stand -163 173 72 {Tags:["credits","prop_7"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2140 run summon minecraft:armor_stand -151 158 91 {Tags:["credits","prop_7"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:20}},{}],Pose:{RightArm:[0f,10f,0f]}}
execute if score credits eventTimer matches 2140 run summon minecraft:armor_stand -128 158 116.2 {Tags:["credits","prop_7"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:24}},{}],Pose:{RightArm:[0f,50f,0f]}}

execute if score credits eventTimer matches 2140 run summon minecraft:drowned -145 158 90 {Tags:["prop_7","credits"],Rotation:[45.0f,0.0f],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{Count:1,id:"minecraft:golden_chestplate"},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:46}}]}
execute if score credits eventTimer matches 2140 run summon minecraft:drowned -147 158 92 {Tags:["prop_7","credits"],Rotation:[-135.0f,0.0f],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{Count:1,id:"minecraft:golden_chestplate"},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:47}}]}

execute if score credits eventTimer matches 2100..2275 run particle minecraft:falling_water -145 174.0 90 1 0 1 1 5 force
execute if score credits eventTimer matches 2100..2275 run particle minecraft:falling_water -133 174.0 90 1 0 1 1 5 force
execute if score credits eventTimer matches 2100..2275 run particle minecraft:falling_water -133 174.0 82 1 0 1 1 5 force
execute if score credits eventTimer matches 2100..2275 run particle minecraft:falling_water -145 174.0 82 1 0 1 1 5 force
execute if score credits eventTimer matches 2100..2275 run particle minecraft:falling_water -157 174.0 82 1 0 1 1 5 force
execute if score credits eventTimer matches 2100..2275 run particle minecraft:falling_water -157 174.0 90 1 0 1 1 5 force

execute if score credits eventTimer matches 2100..2275 run particle minecraft:spore_blossom_air -145 166 86 9 3 4 0 1 force
execute if score credits eventTimer matches 2100..2275 run particle minecraft:spore_blossom_air -145 166 114 9 3 4 0 1 force

###FADE TO SLIDE 8

execute if score credits eventTimer matches 2265 run title @a times 10 30 0
execute if score credits eventTimer matches 2265 run title @a subtitle {"text":""}
execute if score credits eventTimer matches 2265 run title @a title {"text":"\uf009"}

execute if score credits eventTimer matches 2275 run execute at @e[tag=slide_7] run setblock ~ ~ ~ minecraft:air
execute if score credits eventTimer matches 2275 run setblock -131 168 111 minecraft:air
execute if score credits eventTimer matches 2275 run kill @e[tag=slide_7]
execute if score credits eventTimer matches 2275 run kill @e[tag=prop_7]

execute if score credits eventTimer matches 2285..2439 run tp @a -77.0 133 175.0 -45 25
execute if score credits eventTimer matches 2285..2439 run setblock -77 132 175 minecraft:barrier

###START SLIDE 8

execute if score credits eventTimer matches 2295 run summon minecraft:armor_stand -76.29939 132.75864 175.70060 {Tags:["credits","slide_8"],Rotation:[135.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:107}},{}],Pose:{RightArm:[-25f,0f,0f]}}

execute if score credits eventTimer matches 2295 run summon minecraft:armor_stand -74 126 179 {Tags:["credits","robot_8"],Rotation:[180.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:1}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute if score credits eventTimer matches 2295 run summon minecraft:armor_stand -72 128.5 170 {Tags:["credits","prop_8"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:83}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2295 run summon minecraft:armor_stand -72 128.5 192 {Tags:["credits","prop_8"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:84}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2295 run summon minecraft:armor_stand -61 128.5 181 {Tags:["credits","prop_8"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2295 run summon minecraft:armor_stand -83 128.5 181 {Tags:["credits","prop_8"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2295 run summon minecraft:armor_stand -77 128 180.0 {Tags:["credits","prop_8"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:100}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2295 run summon minecraft:armor_stand -72 128 185.0 {Tags:["credits","prop_8"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:112}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score credits eventTimer matches 2295 run summon minecraft:armor_stand -70 128 179.0 {Tags:["credits","prop_8"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:101}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score credits eventTimer matches 2295 run summon minecraft:armor_stand -63 126 190 {Tags:["credits","prop_8"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score credits eventTimer matches 2295 run summon minecraft:armor_stand -72 126 183 {Pose:{RightArm:[0f,0f,0f]},Tags:["credits","prop_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}
execute if score credits eventTimer matches 2295 run summon minecraft:armor_stand -70 126 177 {Pose:{RightArm:[0f,0f,0f]},Tags:["credits","prop_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score credits eventTimer matches 2295 run summon minecraft:armor_stand -70 128.125 177 {Pose:{RightArm:[0f,0f,0f]},Tags:["credits","prop_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}]}
execute if score credits eventTimer matches 2295 run summon minecraft:armor_stand -77 126 181 {Pose:{RightArm:[0f,0f,0f]},Tags:["credits","prop_8"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute if score credits eventTimer matches 2295..2314 run execute as @e[type=armor_stand,tag=robot_8] at @s run tp @s ~ ~ ~-0.1 180 0
execute if score credits eventTimer matches 2315..2374 run execute as @e[type=armor_stand,tag=robot_8] at @s run tp @s ~0.1 ~ ~ -90 0
execute if score credits eventTimer matches 2375..2414 run execute as @e[type=armor_stand,tag=robot_8] at @s run tp @s ~ ~ ~0.1 0 0
execute if score credits eventTimer matches 2415..2424 run execute as @e[type=armor_stand,tag=robot_8] at @s run tp @s ~0.1 ~ ~ -90 0
execute if score credits eventTimer matches 2425..2430 run execute as @e[type=armor_stand,tag=robot_8] at @s run tp @s ~-0.1 ~ ~ 90 0

###FADE TO SLIDE 9

execute if score credits eventTimer matches 2420 run title @a times 10 30 0
execute if score credits eventTimer matches 2420 run title @a subtitle {"text":""}
execute if score credits eventTimer matches 2420 run title @a title {"text":"\uf009"}

execute if score credits eventTimer matches 2430 run setblock -77 132 175 minecraft:air
execute if score credits eventTimer matches 2430 run kill @e[tag=slide_8]
execute if score credits eventTimer matches 2430 run kill @e[tag=robot_8]
execute if score credits eventTimer matches 2430 run kill @e[tag=prop_8]

execute if score credits eventTimer matches 2440..2594 run tp @a 109.0 164 -20.0 145 -10
execute if score credits eventTimer matches 2440 run setblock 109 163 -20 minecraft:barrier

###START SLIDE 9

execute if score credits eventTimer matches 2450 run summon minecraft:armor_stand 108.24897 164.63697 -21.07248 {Tags:["credits","slide_9"],Rotation:[-35.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:108}},{}],Pose:{RightArm:[10f,0f,0f]}}
execute if score credits eventTimer matches 2450 run execute at @e[tag=slide_9] run setblock ~ ~ ~ minecraft:light[level=15]

execute if score credits eventTimer matches 2450 run function code:scene_6/scene_6_init

###FADE TO OUTRO

execute if score credits eventTimer matches 2575 run title @a times 10 20 10
execute if score credits eventTimer matches 2575 run title @a subtitle {"text":""}
execute if score credits eventTimer matches 2575 run title @a title {"text":"\uf009"}

execute if score credits eventTimer matches 2585 run execute at @e[tag=slide_9] run setblock ~ ~ ~ minecraft:air
execute if score credits eventTimer matches 2585 run setblock 109 163 -20 minecraft:air
execute if score credits eventTimer matches 2585 run kill @e[tag=slide_9]

execute if score credits eventTimer matches 2595 run tp @a[tag=player_1] 10 162 -7 93 0
execute if score credits eventTimer matches 2595 run tp @a[tag=player_2] 10 162 -9 87 0
execute if score credits eventTimer matches 2595 run tp @a[tag=player_3] 10 162 -5 100 0
execute if score credits eventTimer matches 2595 run tp @a[tag=player_4] 10 162 -11 80 0

execute if score credits eventTimer matches 2605 run effect clear @a minecraft:invisibility

execute if score credits eventTimer matches 2625 run scoreboard players set progressTracker advProgress 74
execute if score credits eventTimer matches 2625 run advancement grant @a[advancements={code:story/employeeofthemonth=false}] only code:story/employeeofthemonth

execute if score credits eventTimer matches ..2624 run schedule function code:credits/credits_loop 1t
execute if score credits eventTimer matches 2625 run scoreboard players set credits eventTimer 0