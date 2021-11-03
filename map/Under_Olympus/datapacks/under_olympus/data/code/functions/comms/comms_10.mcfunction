###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add commsTracker commsTimer 1

execute if score commsTracker commsTimer matches 1..480 run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:poisonous_potato"}}]

execute if score commsTracker commsTimer matches 1..58 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 1..58 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:61}

execute if score commsTracker commsTimer matches 1 run playsound minecraft:fx.comms.incoming neutral @a ~ ~ ~ 100 1

execute if score commsTracker commsTimer matches 1 run scoreboard players set musicTag tagList 0

execute if score commsTracker commsTimer matches 59 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 60..479 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 60..479 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:60}

execute if score commsTracker commsTimer matches 60 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 60 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Well done potential employee of the month!","color":"white"}]

execute if score commsTracker commsTimer matches 200 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 200 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"You're almost done here, only a few more assignments left.","color":"white"}]

execute if score commsTracker commsTimer matches 340 run playsound minecraft:fx.comms.no neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 340 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"You'll have to go outside for these last couple of assignments.. I hope you remember your spacewalk training!","color":"white"}]

execute if score commsTracker commsTimer matches 480 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches ..479 run schedule function code:comms/comms_10 1t
execute if score commsTracker commsTimer matches 480.. run scoreboard players set commsTracker commsTimer 0