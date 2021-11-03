###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add commsTracker commsTimer 1

execute if score commsTracker commsTimer matches 1..680 run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:poisonous_potato"}}]

execute if score commsTracker commsTimer matches 1..58 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 1..58 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:61}

execute if score commsTracker commsTimer matches 1 run playsound minecraft:fx.comms.incoming neutral @a ~ ~ ~ 100 1

execute if score commsTracker commsTimer matches 59 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 60..619 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 60..619 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:60}

execute if score commsTracker commsTimer matches 60 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 60 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"This is a though one, isn't it? You seem to be struggling quite a bit here!","color":"white"}]

execute if score commsTracker commsTimer matches 200 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 200 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"I'm not an engineer, but if i remember correctly, the RO-BOT should go to the drop-off teleporter FIRST..","color":"white"}]

execute if score commsTracker commsTimer matches 340 run playsound minecraft:fx.comms.no neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 340 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Then it needs to go and grab the block from the pick-up teleporter, and then it should go and scan the block..","color":"white"}]

execute if score commsTracker commsTimer matches 480 run playsound minecraft:fx.comms.no neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 480 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Finally the RO-BOT should drive past it's starting point, from which it goes to the drop-off teleporter again!","color":"white"}]

execute if score commsTracker commsTimer matches 620 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 621..680 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 621..680 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:62}

execute if score commsTracker commsTimer matches 680 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches ..679 run schedule function code:comms/comms_hint8 1t
execute if score commsTracker commsTimer matches 680.. run scoreboard players set commsTracker commsTimer 0