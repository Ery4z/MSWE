###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add commsTracker commsTimer 1

execute if score commsTracker commsTimer matches 1..720 run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:poisonous_potato"}}]

execute if score commsTracker commsTimer matches 1..58 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 1..58 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:61}

execute if score commsTracker commsTimer matches 1 run playsound minecraft:fx.comms.incoming neutral @a ~ ~ ~ 100 1

execute if score commsTracker commsTimer matches 59 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 60..619 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 60..619 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:60}

execute if score commsTracker commsTimer matches 60 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 60 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"H-Hello? Is this thing on?","color":"white"}]

execute if score commsTracker commsTimer matches 200 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 200 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"That elevator took you straight to the resource scanning department.","color":"white"}]

execute if score commsTracker commsTimer matches 340 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 340 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"You see, our resources come in through these teleporters. They need to be scanned before they get teleported to their destination.","color":"white"}]

execute if score commsTracker commsTimer matches 340 run summon minecraft:armor_stand -2 93.5 61 {Tags:["hologram_prop"],Rotation:[90.0f,0.0f],Marker:1,Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:3}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score commsTracker commsTimer matches 340 run data merge entity @e[tag=hologram_prop,limit=1] {Glowing:1}
execute if score commsTracker commsTimer matches 340..480 run particle minecraft:crit -2 95.5 61 0 0 0.5 0.5 1 force

execute if score commsTracker commsTimer matches 350 run data merge entity @e[tag=hologram_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 360 run data merge entity @e[tag=hologram_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 370 run data merge entity @e[tag=hologram_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 380 run data merge entity @e[tag=hologram_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 390 run data merge entity @e[tag=hologram_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 400 run data merge entity @e[tag=hologram_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 410 run data merge entity @e[tag=hologram_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 420 run data merge entity @e[tag=hologram_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 430 run data merge entity @e[tag=hologram_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 440 run data merge entity @e[tag=hologram_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 450 run data merge entity @e[tag=hologram_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 460 run data merge entity @e[tag=hologram_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 470 run data merge entity @e[tag=hologram_prop,limit=1] {Glowing:0}
execute if score commsTracker commsTimer matches 470 run kill @e[tag=hologram_prop]

execute if score commsTracker commsTimer matches 480 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 480 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"I'm sure you'll figure the rest out by yourself!","color":"white"}]

execute if score commsTracker commsTimer matches 520 run scoreboard players set musicTag tagList 1

execute if score commsTracker commsTimer matches 620 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 621..680 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 621..680 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:62}

execute if score commsTracker commsTimer matches 680 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 720 run tellraw @a {"text":"Hint: Right click the items in your hotbar to test your solution.","italic":true,"color":"gray"}

execute if score commsTracker commsTimer matches ..719 run schedule function code:comms/comms_1 1t
execute if score commsTracker commsTimer matches 720 run scoreboard players set commsTracker commsTimer 0