###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add commsTracker commsTimer 1

execute if score commsTracker commsTimer matches 1..340 run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:poisonous_potato"}}]

execute if score commsTracker commsTimer matches 1..58 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 1..58 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:61}

execute if score commsTracker commsTimer matches 1 run playsound minecraft:fx.comms.incoming neutral @a ~ ~ ~ 100 1

execute if score commsTracker commsTimer matches 59 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 60..339 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 60..339 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:60}

execute if score commsTracker commsTimer matches 60 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 60 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Welcome to the agricultural department! This is where all of our food is researched and produced.","color":"white"}]

execute if score commsTracker commsTimer matches 200 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 200 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Your next assignment is just across the hallway on your right. A security guard should open the door for you this time..","color":"white"}]

execute if score commsTracker commsTimer matches 340 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches ..339 run schedule function code:comms/comms_8 1t
execute if score commsTracker commsTimer matches 340 run scoreboard players set commsTracker commsTimer 0