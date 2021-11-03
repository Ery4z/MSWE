###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###AIRLOCK BUTTON

execute as @a unless entity @s[x=-147,y=158,z=275,dx=24,dy=7,dz=14] run tag @s add not_in_airlock
execute as @a if entity @s[x=-147,y=158,z=275,dx=24,dy=7,dz=14] run tag @s remove not_in_airlock

#open the airlock when everybody is in it
execute as @e[type=armor_stand,tag=airlock_21,tag=!open,tag=is_closed] unless entity @a[tag=not_in_airlock] run tag @s add open

###OPEN DOOR SEQUENCE

#add 1 to the airlock timer as long as the airlock is opening
scoreboard players add @e[type=armor_stand,tag=airlock_21,tag=open] airlockTimer 1

#close the inside airlock door
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=10}] run playsound minecraft:block.fire.extinguish block @a -148 161 282 1.5 0
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=10}] run clone -133 153 255 -133 157 261 -148 159 279
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=20}] run clone -135 153 255 -135 157 261 -148 159 279
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=30}] run clone -137 153 255 -137 157 261 -148 159 279
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=40}] run clone -139 153 255 -139 157 261 -148 159 279
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=50}] run clone -141 153 255 -141 157 261 -148 159 279
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=60}] run clone -143 153 255 -143 157 261 -148 159 279

execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=60}] run execute as @a[tag=!admin] unless entity @s[x=-147,y=158,z=275,dx=24,dy=7,dz=14] run tp @s -135 158 282 -90 0

#cycle the airlock
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=100}] run data merge entity @e[tag=airlock_alarm_0,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:16}},{}]}
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=100}] run setblock -135 166 282 minecraft:light[level=15]
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=100}] run fill -147 156 274 -123 166 290 minecraft:blue_ice replace minecraft:sea_lantern
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=100}] run playsound fx.airlock.inside block @a[x=-147,y=158,z=275,dx=24,dy=7,dz=14] -135 159 282 10 1

execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -143 158 276 1.5 0.25 0.25 0 5 force
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -143 158 288 1.5 0.25 0.25 0 5 force
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -143 158.5 280 0.25 0.5 0.25 0.1 5 force
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -143 158.5 284 0.25 0.5 0.25 0.1 5 force

execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -135 158 276 1.5 0.25 0.25 0 5 force
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -135 158 288 1.5 0.25 0.25 0 5 force
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -135 158.5 280 0.25 0.5 0.25 0.1 5 force
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -135 158.5 284 0.25 0.5 0.25 0.1 5 force

execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -127 158 276 1.5 0.25 0.25 0 5 force
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -127 158 288 1.5 0.25 0.25 0 5 force
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -127 158.5 280 0.25 0.5 0.25 0.1 5 force
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -127 158.5 284 0.25 0.5 0.25 0.1 5 force

execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=190}] run data merge entity @e[tag=airlock_alarm_0,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}]}
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=190}] run setblock -135 166 282 minecraft:light[level=7]
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=190}] run fill -147 156 274 -123 166 290 minecraft:sea_lantern replace minecraft:blue_ice

#open the outside airlock door
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=230}] run playsound minecraft:block.fire.extinguish block @a -122 161 282 1.5 0
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=230}] run particle minecraft:cloud -122 161 280.0 0 1.5 0 0.05 30
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=230}] run clone -141 159 255 -141 163 261 -122 159 279
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=240}] run clone -139 159 255 -139 163 261 -122 159 279
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=250}] run clone -137 159 255 -137 163 261 -122 159 279
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=260}] run clone -135 159 255 -135 163 261 -122 159 279
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=270}] run clone -133 159 255 -133 163 261 -122 159 279
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=280}] run clone -131 159 255 -131 163 261 -122 159 279

#remove 'open' tag to end the sequence
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=280..}] run tag @s remove is_closed
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=280..}] run tag @s add is_open
execute as @e[type=armor_stand,tag=airlock_21,tag=open,scores={airlockTimer=280..}] run tag @s remove open