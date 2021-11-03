###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###AIRLOCK BUTTON

execute as @a unless entity @s[x=-232,y=158,z=375,dx=8,dy=7,dz=14] run tag @s add not_in_airlock
execute as @a if entity @s[x=-232,y=158,z=375,dx=8,dy=7,dz=14] run tag @s remove not_in_airlock

#open the airlock when everybody is in it
execute as @e[type=armor_stand,tag=airlock_24,tag=!open,tag=is_closed] unless entity @a[tag=not_in_airlock] run tag @s add open

###OPEN DOOR SEQUENCE

#add 1 to the airlock timer as long as the airlock is opening
scoreboard players add @e[type=armor_stand,tag=airlock_24,tag=open] airlockTimer 1

#close the inside airlock door
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=10}] run playsound minecraft:block.fire.extinguish block @a -223 161 382 1.5 0
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=10}] run clone -215 153 352 -215 157 358 -223 159 379
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=20}] run clone -217 153 352 -217 157 358 -223 159 379
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=30}] run clone -219 153 352 -219 157 358 -223 159 379
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=40}] run clone -221 153 352 -221 157 358 -223 159 379
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=50}] run clone -223 153 352 -223 157 358 -223 159 379
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=60}] run clone -225 153 352 -225 157 358 -223 159 379

execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=60}] run execute as @a[tag=!admin] unless entity @s[x=-232,y=158,z=375,dx=8,dy=7,dz=14] run tp @s -228 158 383 90 0

#cycle the airlock
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=100}] run data merge entity @e[tag=airlock_alarm_0,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:16}},{}]}
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=100}] run setblock -228 166 383 minecraft:light[level=15]
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=100}] run fill -232 156 374 -224 166 390 minecraft:blue_ice replace minecraft:sea_lantern
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=100}] run playsound fx.airlock.inside block @a[x=-232,y=158,z=375,dx=8,dy=7,dz=14] -228 159 383 10 1

execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -228 158 388 1.5 0.25 0.25 0 5 force
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -228 158 376 1.5 0.25 0.25 0 5 force
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -228 158.5 384 0.25 0.5 0.25 0.1 5 force
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -228 158.5 380 0.25 0.5 0.25 0.1 5 force

execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=190}] run data merge entity @e[tag=airlock_alarm_0,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}]}
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=190}] run setblock -228 166 383 minecraft:light[level=7]
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=190}] run fill -232 156 374 -224 166 390 minecraft:sea_lantern replace minecraft:blue_ice

#open the outside airlock door
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=230}] run playsound minecraft:block.fire.extinguish block @a -233 161 382 1.5 0
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=230}] run particle minecraft:cloud -233 161 380.0 0 1.5 0 0.05 30
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=230}] run scoreboard players set outsideTag tagList 0
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=230}] run scoreboard players set suitTag tagList 2
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=230}] run clone -223 159 352 -223 163 358 -233 159 379
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=240}] run clone -221 159 352 -221 163 358 -233 159 379
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=250}] run clone -219 159 352 -219 163 358 -233 159 379
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=260}] run clone -217 159 352 -217 163 358 -233 159 379
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=270}] run clone -215 159 352 -215 163 358 -233 159 379
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=280}] run clone -213 159 352 -213 163 358 -233 159 379

#remove 'open' tag to end the sequence
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=280..}] run tag @s remove is_closed
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=280..}] run tag @s add is_open
execute as @e[type=armor_stand,tag=airlock_24,tag=open,scores={airlockTimer=280..}] run tag @s remove open