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
execute if score commsTracker commsTimer matches 60 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Here at the agricultural department, natural fluids are being used to produce food and drinks, but also things like fuel and coolant.","color":"white"}]

execute if score commsTracker commsTimer matches 200 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 200 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"The fluids are collected from these hoppers into a cauldron, so make sure the robot is holding one before collecting the fluids.","color":"white"}]

execute if score commsTracker commsTimer matches 200 run summon minecraft:armor_stand -145 160.125 151 {Pose:{RightArm:[0f,0f,0f]},Tags:["hopper_prop"],Marker:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}]}
execute if score commsTracker commsTimer matches 200 run team join red @e[tag=hopper_prop]
execute if score commsTracker commsTimer matches 200 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:1}
execute if score commsTracker commsTimer matches 200..470 run particle minecraft:crit -145 160.0 151.5 0 0 0.5 0.5 1 force

execute if score commsTracker commsTimer matches 210 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 220 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 230 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 240 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 250 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 260 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 270 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 280 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 290 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 300 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 310 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 320 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 330 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 340 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 340 run playsound minecraft:fx.comms.no neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 340 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Multiple fluids can also be collected into the same cauldron to make other fluids. It's just like crafting, but.. without the crafter.. i guess..","color":"white"}]

execute if score commsTracker commsTimer matches 350 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 360 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 370 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 380 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 390 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 400 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 410 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 420 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 430 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 440 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 450 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:0}

execute if score commsTracker commsTimer matches 460 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:1}

execute if score commsTracker commsTimer matches 470 run data merge entity @e[tag=hopper_prop,limit=1] {Glowing:0}
execute if score commsTracker commsTimer matches 470 run kill @e[tag=hopper_prop]

execute if score commsTracker commsTimer matches 480 run playsound minecraft:fx.comms.no neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 480 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"That's all i've got time for for now, i'm sure you'll figure it out by yourself. Have fun!","color":"white"}]

execute if score commsTracker commsTimer matches 520 run scoreboard players set musicTag tagList 3

execute if score commsTracker commsTimer matches 620 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 621..680 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 621..680 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:62}

execute if score commsTracker commsTimer matches 680 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 720 run tellraw @a {"text":"Hint: If you are struggling, you can always press the button on the block beneath the question mark that pops up in the room after a while.","italic":true,"color":"gray"}

execute if score commsTracker commsTimer matches ..719 run schedule function code:comms/comms_9 1t
execute if score commsTracker commsTimer matches 720.. run scoreboard players set commsTracker commsTimer 0