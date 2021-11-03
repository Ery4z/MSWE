###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add commsTracker commsTimer 1

execute if score commsTracker commsTimer matches 1..820 run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:poisonous_potato"}}]

execute if score commsTracker commsTimer matches 1..58 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 1..58 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:61}

execute if score commsTracker commsTimer matches 1 run playsound minecraft:fx.comms.incoming neutral @a ~ ~ ~ 100 1

execute if score commsTracker commsTimer matches 59 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 60..760 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 60..760 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:60}

execute if score commsTracker commsTimer matches 60 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 60 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Thank god you're alive! I've been trying to reach you for the past 45 minutes..","color":"white"}]

execute if score commsTracker commsTimer matches 200 run playsound minecraft:fx.comms.no neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 200 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"The seismic activities are worse than i thought.. They have been evacuating the facility while you were unconscious.","color":"white"}]

execute if score commsTracker commsTimer matches 340 run playsound minecraft:fx.comms.no neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 340 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"See if you can find your way to me in the vehicle hangar, it's only a couple of doors away from your location.","color":"white"}]

execute if score commsTracker commsTimer matches 480 run playsound minecraft:fx.comms.no neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 480 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"I won't be able to help you remotely since they've put the facility in a full lockdown.","color":"white"}]

execute if score commsTracker commsTimer matches 620 run playsound minecraft:fx.comms.no neutral @a ~ ~ ~ 100 1
execute if score commsTracker commsTimer matches 620 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"It seems like this whole place is going down, so please hurry or we'll be burried alive down here!","color":"white"}]

execute if score commsTracker commsTimer matches 660 run scoreboard players set musicTag tagList 5

execute if score commsTracker commsTimer matches 760 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches 761..820 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score commsTracker commsTimer matches 761..820 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:62}

execute if score commsTracker commsTimer matches 820 run clear @a minecraft:poisonous_potato

execute if score commsTracker commsTimer matches ..819 run schedule function code:comms/comms_15 1t
execute if score commsTracker commsTimer matches 820 run scoreboard players set commsTracker commsTimer 0