###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###AIRLOCK BUTTON

execute as @a unless entity @s[x=-94,y=158,z=329,dx=14,dy=7,dz=16] run tag @s add not_in_airlock
execute as @a if entity @s[x=-94,y=158,z=329,dx=14,dy=7,dz=16] run tag @s remove not_in_airlock

#open the airlock when everybody is in it
execute as @e[type=armor_stand,tag=airlock_22,tag=!open,tag=is_closed] unless entity @a[tag=not_in_airlock] run tag @s add open

###OPEN DOOR SEQUENCE

#add 1 to the airlock timer as long as the airlock is opening
scoreboard players add @e[type=armor_stand,tag=airlock_22,tag=open] airlockTimer 1

#close the inside airlock door
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=10}] run playsound minecraft:block.fire.extinguish block @a -87 161 328 1.5 0
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=10}] run clone -113 150 333 -107 154 333 -90 159 328
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=20}] run clone -113 150 335 -107 154 335 -90 159 328
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=30}] run clone -113 150 337 -107 154 337 -90 159 328
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=40}] run clone -113 150 339 -107 154 339 -90 159 328
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=50}] run clone -113 150 341 -107 154 341 -90 159 328
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=60}] run clone -113 150 343 -107 154 343 -90 159 328

execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=60}] run execute as @a[tag=!admin] unless entity @s[x=-94,y=158,z=329,dx=14,dy=7,dz=16] run tp @s -87 158 337 0 0

#cycle the airlock
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=100}] run data merge entity @e[tag=airlock_alarm_0,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:16}},{}]}
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=100}] run setblock -87 166 337 minecraft:light[level=15]
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=100}] run fill -95 156 329 -79 166 345 minecraft:blue_ice replace minecraft:sea_lantern
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=100}] run playsound fx.airlock.inside block @a[x=-94,y=158,z=329,dx=14,dy=7,dz=16] -87 159 337 10 1

execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -81 158 333 0.25 0.25 1.5 0 5 force
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -93 158 333 0.25 0.25 1.5 0 5 force
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -85 158.5 333 0.25 0.5 0.25 0.1 5 force
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -89 158.5 333 0.25 0.5 0.25 0.1 5 force

execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -81 158 341 0.25 0.25 1.5 0 5 force
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -93 158 341 0.25 0.25 1.5 0 5 force
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -85 158.5 341 0.25 0.5 0.25 0.1 5 force
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -89 158.5 341 0.25 0.5 0.25 0.1 5 force

execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=190}] run data merge entity @e[tag=airlock_alarm_0,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}]}
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=190}] run setblock -87 166 337 minecraft:light[level=7]
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=190}] run fill -95 156 329 -79 166 345 minecraft:sea_lantern replace minecraft:blue_ice

#open the outside airlock door
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=230}] run playsound minecraft:block.fire.extinguish block @a -87 161 346 1.5 0
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=230}] run particle minecraft:cloud -84.0 161 346 0 1.5 0 0.05 30
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=230}] run clone -113 156 341 -107 160 341 -90 159 346
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=240}] run clone -113 156 339 -107 160 339 -90 159 346
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=250}] run clone -113 156 337 -107 160 337 -90 159 346
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=260}] run clone -113 156 335 -107 160 335 -90 159 346
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=270}] run clone -113 156 333 -107 160 333 -90 159 346
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=280}] run clone -113 156 331 -107 160 331 -90 159 346

#remove 'open' tag to end the sequence
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=280..}] run tag @s remove is_closed
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=280..}] run tag @s add is_open
execute as @e[type=armor_stand,tag=airlock_22,tag=open,scores={airlockTimer=280..}] run tag @s remove open