###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add commsTracker commsTimer 1

execute if score commsTracker commsTimer matches 1..140 run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:poisonous_potato"}}]

execute if score commsTracker commsTimer matches 1..139 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 1..139 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:60}

execute if score commsTracker commsTimer matches 1 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 1 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Please make sure you are wearing a spacesuit before activating the airlock!","color":"white"}]

execute if score commsTracker commsTimer matches 140 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches ..139 run schedule function code:comms/comms_12 1t
execute if score commsTracker commsTimer matches 140 run scoreboard players set commsTracker commsTimer 0