###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add commsTracker commsTimer 1

execute if score commsTracker commsTimer matches 1..720 run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:poisonous_potato"}}]

execute if score commsTracker commsTimer matches 60..619 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 60..619 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:60}

execute if score commsTracker commsTimer matches 60 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 60 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"On the manufacturing department, crafters are being used to make new products.","color":"white"}]

execute if score commsTracker commsTimer matches 200 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 200 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"The crafter looks just like a teleporter, but it has glass in the middle.","color":"white"}]

execute if score commsTracker commsTimer matches 200 run summon minecraft:armor_stand 30 126 26 {Pose:{RightArm:[0f,0f,0f]},Tags:["crafter_prop"],Marker:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:5}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score commsTracker commsTimer matches 200 run data merge entity @e[tag=crafter_prop,limit=1] {Glowing:1}
execute if score commsTracker commsTimer matches 200..340 run particle minecraft:crit 30 127.2 26 0 0 0.5 0.5 1 force

execute if score commsTracker commsTimer matches 210 run data merge entity @e[tag=crafter_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 220 run data merge entity @e[tag=crafter_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 230 run data merge entity @e[tag=crafter_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 240 run data merge entity @e[tag=crafter_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 250 run data merge entity @e[tag=crafter_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 260 run data merge entity @e[tag=crafter_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 270 run data merge entity @e[tag=crafter_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 280 run data merge entity @e[tag=crafter_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 290 run data merge entity @e[tag=crafter_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 300 run data merge entity @e[tag=crafter_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 310 run data merge entity @e[tag=crafter_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 320 run data merge entity @e[tag=crafter_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 330 run data merge entity @e[tag=crafter_prop,limit=1] {Glowing:0}
execute if score commsTracker commsTimer matches 330 run kill @e[tag=crafter_prop]

execute if score commsTracker commsTimer matches 340 run playsound minecraft:fx.comms.no neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 340 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"The crafter needs two blocks in order to make a new product. Blocks are stored in the glass compartment of the crafter.","color":"white"}]

execute if score commsTracker commsTimer matches 480 run playsound minecraft:fx.comms.no neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 480 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"I really have to go now, i'm sure you're smart enough to figure the rest out by yourself. Good luck!","color":"white"}]

execute if score commsTracker commsTimer matches 520 run scoreboard players set musicTag tagList 2

execute if score commsTracker commsTimer matches 620 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 621..680 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 621..680 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:62}

execute if score commsTracker commsTimer matches 680 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 720 run tellraw @a {"text":"Hint: You can look at the holograms on the wall for instructions.","italic":true,"color":"gray"}

execute if score commsTracker commsTimer matches ..719 run schedule function code:comms/comms_5 1t
execute if score commsTracker commsTimer matches 720.. run scoreboard players set commsTracker commsTimer 0