###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###AIRLOCK BUTTON

execute as @a unless entity @s[x=-177,y=158,z=242,dx=14,dy=7,dz=8] run tag @s add not_in_airlock
execute as @a if entity @s[x=-177,y=158,z=242,dx=14,dy=7,dz=8] run tag @s remove not_in_airlock

execute as @e[type=armor_stand,tag=airlock_20,tag=!open,tag=is_closed] if entity @a[tag=not_in_airlock] if block -175 159 246 warped_button[powered=true] run function code:comms/comms_11

execute as @e[type=armor_stand,tag=airlock_20,tag=!open,tag=is_closed] unless entity @a[tag=not_in_airlock] if entity @a[tag=!hasSuit] if block -175 159 246 warped_button[powered=true] run function code:comms/comms_12

#open the airlock when button is pressed
execute as @e[type=armor_stand,tag=airlock_20,tag=!open,tag=is_closed] unless entity @a[tag=not_in_airlock] unless entity @a[tag=!hasSuit] if block -175 159 246 warped_button[powered=true] run tag @s add open

#reset airlock button
execute if block -175 159 246 warped_button[powered=true] run setblock -175 159 246 minecraft:warped_button[face=floor,facing=north,powered=false]

###OPEN DOOR SEQUENCE

#add 1 to the airlock timer as long as the airlock is opening
scoreboard players add @e[type=armor_stand,tag=airlock_20,tag=open] airlockTimer 1

execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=1}] run function code:comms/comms_13
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=1}] run spawnpoint @a -170 158 255 0
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=1}] run scoreboard players set suitTag tagList 1

#close the inside airlock door
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=10}] run playsound minecraft:block.fire.extinguish block @a -170 161 241 1.5 0
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=10}] run clone -196 159 229 -190 163 229 -173 159 241
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=20}] run clone -196 159 231 -190 163 231 -173 159 241
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=30}] run clone -196 159 233 -190 163 233 -173 159 241
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=40}] run clone -196 159 235 -190 163 235 -173 159 241
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=50}] run clone -196 159 237 -190 163 237 -173 159 241
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=60}] run clone -196 159 239 -190 163 239 -173 159 241

execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=60}] run execute as @a[tag=!admin] unless entity @s[x=-177,y=158,z=242,dx=14,dy=7,dz=8] run tp @s -170 158 246 0 0

#cycle the airlock
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=200}] run data merge entity @e[tag=airlock_alarm_0,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:16}},{}]}
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=200}] run setblock -170 166 246 minecraft:light[level=15]
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=200}] run fill -178 156 242 -162 166 250 minecraft:blue_ice replace minecraft:sea_lantern
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=200}] run playsound fx.airlock.inside block @a[x=-177,y=158,z=242,dx=14,dy=7,dz=8] -170 159 246 10 1
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=210..290}] run particle minecraft:poof -164 158 246 0.25 0.25 1.5 0 5 force
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=210..290}] run particle minecraft:poof -176 158 246 0.25 0.25 1.5 0 5 force
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=210..290}] run particle minecraft:poof -168 158.5 246 0.25 0.5 0.25 0.1 5 force
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=210..290}] run particle minecraft:poof -172 158.5 246 0.25 0.5 0.25 0.1 5 force
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=290}] run data merge entity @e[tag=airlock_alarm_0,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}]}
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=290}] run setblock -170 166 246 minecraft:light[level=7]
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=290}] run fill -178 156 242 -162 166 250 minecraft:sea_lantern replace minecraft:blue_ice

#open the outside airlock door
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=330}] run playsound minecraft:block.fire.extinguish block @a -170 159 251 1.5 0
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=330}] run particle minecraft:cloud -167.0 161 251 0 1.5 0 0.05 30
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=330}] run clone -196 165 237 -190 169 237 -173 159 251
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=340}] run clone -196 165 235 -190 169 235 -173 159 251
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=350}] run clone -196 165 233 -190 169 233 -173 159 251
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=360}] run clone -196 165 231 -190 169 231 -173 159 251
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=370}] run clone -196 165 229 -190 169 229 -173 159 251
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=380}] run clone -196 165 227 -190 169 227 -173 159 251

execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=330}] run scoreboard players set outsideTag tagList 1
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=380}] run scoreboard players set musicTag tagList 4
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=380}] run advancement grant @a[advancements={code:story/spacewalk=false}] only code:story/spacewalk

#remove 'open' tag to end the sequence
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=380..}] run tag @s remove is_closed
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=380..}] run tag @s add is_open
execute as @e[type=armor_stand,tag=airlock_20,tag=open,scores={airlockTimer=380..}] run tag @s remove open