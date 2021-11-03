###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add commsTracker commsTimer 1

execute if score commsTracker commsTimer matches 1..540 run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:poisonous_potato"}}]

execute if score commsTracker commsTimer matches 1..58 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 1..58 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:61}

execute if score commsTracker commsTimer matches 1 run playsound minecraft:fx.comms.incoming neutral @a ~ ~ ~ 100 1

execute if score commsTracker commsTimer matches 1 run scoreboard players set musicTag tagList 0

execute if score commsTracker commsTimer matches 59 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 60..479 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 60..479 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:60}

execute if score commsTracker commsTimer matches 60 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 60 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Well done! You're getting closer and closer to becoming employee of the month!","color":"white"}]

execute if score commsTracker commsTimer matches 200 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 200 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Hmm.. It seems that, for some reason, the next room is not receiving power..","color":"white"}]

execute if score commsTracker commsTimer matches 340 run playsound minecraft:fx.comms.no neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 340 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"It looks like the fuse in the electrical box has blown. See if you can find a replacement.","color":"white"}]

execute if score commsTracker commsTimer matches 480 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 481..540 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 481..540 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:62}

execute if score commsTracker commsTimer matches 540 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 540 run data merge entity @e[type=armor_stand,tag=replacement_fuse,limit=1] {DisabledSlots:4079422}
execute if score commsTracker commsTimer matches 540 run data merge entity @e[type=armor_stand,tag=new_fuse,limit=1] {DisabledSlots:4144703}

execute if score commsTracker commsTimer matches ..539 run schedule function code:comms/comms_6 1t
execute if score commsTracker commsTimer matches 540.. run scoreboard players set commsTracker commsTimer 0