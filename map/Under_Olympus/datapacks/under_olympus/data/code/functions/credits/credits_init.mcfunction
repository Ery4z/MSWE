###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

#spawn Dr. Watney
summon minecraft:drowned -28 163 30 {Tags:["slide_0","scientist_watney"],Rotation:[-90.0f,0.0f],CustomName:'{"text":"Dr. Watney"}',CustomNameVisible:1,Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:40}}]}
team join gold @e[tag=scientist_watney]

###SPAWN EMPLOYEE OF THE MONTH SIGNS AND ITEM FRAMES

fill -14 164 36 -14 164 39 minecraft:air

setblock -14 164 36 acacia_wall_sign[facing=west]{Text1:'{"text":"Employee of"}',Text2:'{"text":"The Month #484"}',Text4:'{"selector":"@e[tag=player_1]","bold":true}'} replace
setblock -14 164 37 acacia_wall_sign[facing=west]{Text1:'{"text":"Employee of"}',Text2:'{"text":"The Month #485"}',Text4:'{"selector":"@e[tag=player_2]","bold":true}'} replace
setblock -14 164 38 acacia_wall_sign[facing=west]{Text1:'{"text":"Employee of"}',Text2:'{"text":"The Month #486"}',Text4:'{"selector":"@e[tag=player_3]","bold":true}'} replace
setblock -14 164 39 acacia_wall_sign[facing=west]{Text1:'{"text":"Employee of"}',Text2:'{"text":"The Month #487"}',Text4:'{"selector":"@e[tag=player_4]","bold":true}'} replace

kill @e[tag=employee_1]
kill @e[tag=employee_2]
kill @e[tag=employee_3]
kill @e[tag=employee_4]

summon minecraft:item_frame -14 165 36 {Facing:4b,Tags:["scene_6","employee_1"],Item:{}}
summon minecraft:item_frame -14 165 37 {Facing:4b,Tags:["scene_6","employee_2"],Item:{}}
summon minecraft:item_frame -14 165 38 {Facing:4b,Tags:["scene_6","employee_3"],Item:{}}
summon minecraft:item_frame -14 165 39 {Facing:4b,Tags:["scene_6","employee_4"],Item:{}}

execute as @e[tag=player_1] at @e[tag=employee_1] run loot spawn ~ ~ ~ loot code:getskull
execute as @e[tag=player_2] at @e[tag=employee_2] run loot spawn ~ ~ ~ loot code:getskull
execute as @e[tag=player_3] at @e[tag=employee_3] run loot spawn ~ ~ ~ loot code:getskull
execute as @e[tag=player_4] at @e[tag=employee_4] run loot spawn ~ ~ ~ loot code:getskull

execute at @e[tag=employee_1] run data modify entity @e[type=item_frame,limit=1,sort=nearest,distance=0] Item set from entity @e[type=item,distance=0,limit=1,sort=nearest] Item
execute at @e[tag=employee_2] run data modify entity @e[type=item_frame,limit=1,sort=nearest,distance=0] Item set from entity @e[type=item,distance=0,limit=1,sort=nearest] Item
execute at @e[tag=employee_3] run data modify entity @e[type=item_frame,limit=1,sort=nearest,distance=0] Item set from entity @e[type=item,distance=0,limit=1,sort=nearest] Item
execute at @e[tag=employee_4] run data modify entity @e[type=item_frame,limit=1,sort=nearest,distance=0] Item set from entity @e[type=item,distance=0,limit=1,sort=nearest] Item

execute at @e[tag=employee_1] run kill @e[type=item,distance=0,limit=1]
execute at @e[tag=employee_2] run kill @e[type=item,distance=0,limit=1]
execute at @e[tag=employee_3] run kill @e[type=item,distance=0,limit=1]
execute at @e[tag=employee_4] run kill @e[type=item,distance=0,limit=1]

###SPAWN CREDITS COMPUTERS

summon minecraft:armor_stand -28 163 48.0 {Tags:["slide_0","computer"],Rotation:[180.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:16}},{}],Pose:{RightArm:[0f,10f,0f]}}
summon minecraft:armor_stand -33.0 163 34.25 {Tags:["slide_0","computer"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:16}},{}],Pose:{RightArm:[0f,-10f,0f]}}
summon minecraft:armor_stand -27 163 25.75 {Tags:["slide_0","computer"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:16}},{}],Pose:{RightArm:[0f,-10f,0f]}}
summon minecraft:armor_stand -22.25 163 27.0 {Tags:["slide_0","computer"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:16}},{}],Pose:{RightArm:[0f,-10f,0f]}}
summon minecraft:armor_stand -20.75 163 26.0 {Tags:["slide_0","computer"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:16}},{}],Pose:{RightArm:[0f,-10f,0f]}}
summon minecraft:armor_stand -16.0 163 25.25 {Tags:["slide_0","computer"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:16}},{}],Pose:{RightArm:[0f,10f,0f]}}

###SPAWN CREDITS PROPS

summon minecraft:armor_stand -18 163 25 {Tags:["slide_0","prop"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:20}},{}],Pose:{RightArm:[0f,40f,0f]}}
summon minecraft:armor_stand -32 163 34 {Tags:["slide_0","prop"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:38}},{}],Pose:{RightArm:[0f,0f,0f]}}

###SPAWN CREDITS ALARM LIGHTS

summon minecraft:armor_stand -19 167 44 {Tags:["slide_0","alarm"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[90f,0f,0f]}}
summon minecraft:armor_stand -31 167 29 {Tags:["slide_0","alarm"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[90f,0f,0f]}}
