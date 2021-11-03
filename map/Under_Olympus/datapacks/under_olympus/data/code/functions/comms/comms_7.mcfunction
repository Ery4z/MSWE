###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add commsTracker commsTimer 1

execute if score commsTracker commsTimer matches 1..400 run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:poisonous_potato"}}]

execute if score commsTracker commsTimer matches 1..58 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 1..58 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:61}

execute if score commsTracker commsTimer matches 1 run playsound minecraft:fx.comms.incoming neutral @a ~ ~ ~ 100 1

execute if score commsTracker commsTimer matches 1 run kill @e[tag=button_prop]
execute if score commsTracker commsTimer matches 1 run summon minecraft:armor_stand -88 127.15 92.9 {Tags:["button_prop"],Rotation:[0.0f,0.0f],Marker:1,Invulnerable:1,NoGravity:1,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:warped_button",Count:1b}],DisabledSlots:2039583,Glowing:1}
execute if score commsTracker commsTimer matches 1 run team join red @e[tag=button_prop]
execute if score commsTracker commsTimer matches 1 run setblock -88 128 93 minecraft:warped_button[face=wall,facing=south,powered=false]
execute if score commsTracker commsTimer matches 1 run scoreboard players set musicTag tagList 0
execute if score commsTracker commsTimer matches 1 run scoreboard players set progressTracker advProgress 46

execute if score commsTracker commsTimer matches 59 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 60..339 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 60..339 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:60}

execute if score commsTracker commsTimer matches 60 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 60 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Perfect! Our assembly floor production rate is back at 100%.","color":"white"}]

execute if score commsTracker commsTimer matches 200 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 200 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Please call the elevator, it will take you up to the next floor.","color":"white"}]

execute if score commsTracker commsTimer matches 340 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 341..400 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 341..400 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:62}

execute if score commsTracker commsTimer matches 400 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches ..399 run schedule function code:comms/comms_7 1t
execute if score commsTracker commsTimer matches 400 run scoreboard players set commsTracker commsTimer 0