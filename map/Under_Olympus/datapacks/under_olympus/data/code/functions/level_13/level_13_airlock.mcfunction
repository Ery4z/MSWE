###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###AIRLOCK BUTTON

#open the airlock when button is pressed
execute as @e[type=armor_stand,tag=airlock,tag=!open,tag=!close,tag=is_closed] if block -82 127 47 warped_button[powered=true] run tag @s add open
execute as @e[type=armor_stand,tag=airlock,tag=!open,tag=!close,tag=is_closed] if block -82 127 57 warped_button[powered=true] run tag @s add open
execute as @e[type=armor_stand,tag=airlock,tag=!open,tag=!close,tag=is_closed] if block -92 127 37 warped_button[powered=true] run tag @s add open

#close the airlock when button is pressed
execute as @e[type=armor_stand,tag=airlock,tag=!open,tag=!close,tag=is_open] if block -82 127 47 warped_button[powered=true] run tag @s add close
execute as @e[type=armor_stand,tag=airlock,tag=!open,tag=!close,tag=is_open] if block -82 127 57 warped_button[powered=true] run tag @s add close
execute as @e[type=armor_stand,tag=airlock,tag=!open,tag=!close,tag=is_open] if block -92 127 37 warped_button[powered=true] run tag @s add close

#reset airlock button
execute if block -82 127 47 warped_button[powered=true] run setblock -82 127 47 minecraft:warped_button[face=floor,facing=north,powered=false]
execute if block -82 127 57 warped_button[powered=true] run setblock -82 127 57 minecraft:warped_button[face=floor,facing=north,powered=false]
execute if block -92 127 37 warped_button[powered=true] run setblock -92 127 37 minecraft:warped_button[face=floor,facing=south,powered=false]

###OPEN DOOR SEQUENCE

#add 1 to the airlock timer as long as the airlock is opening
scoreboard players add @e[type=armor_stand,tag=airlock,tag=open] airlockTimer 1

#turn redstone lamps on
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=1}] run setblock -92 124 37 minecraft:redstone_block
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=1}] run setblock -82 124 57 minecraft:redstone_block

#close the inside airlock door
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=10}] run playsound minecraft:block.fire.extinguish block @a -87 129 52 1.5 0
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=10}] run clone -90 145 40 -84 149 40 -90 127 52
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=20}] run clone -90 145 42 -84 149 42 -90 127 52
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=30}] run clone -90 145 44 -84 149 44 -90 127 52
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=40}] run clone -90 145 46 -84 149 46 -90 127 52
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=50}] run clone -90 145 48 -84 149 48 -90 127 52
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=60}] run clone -90 145 50 -84 149 50 -90 127 52

#cycle the airlock
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=100}] run data merge entity @e[tag=airlock_alarm_0,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:16}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=100}] run data merge entity @e[tag=airlock_alarm_1,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:16}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=100}] run data merge entity @e[tag=airlock_alarm_2,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:16}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=100}] run data merge entity @e[tag=airlock_alarm_3,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:16}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=100}] run data merge entity @e[tag=airlock_alarm_4,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:16}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=100}] run setblock -87 134 47 minecraft:light[level=15]
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=100}] run setblock -94 130 42 minecraft:light[level=15]
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=100}] run setblock -80 130 42 minecraft:light[level=15]
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=100}] run setblock -94 130 52 minecraft:light[level=15]
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=100}] run setblock -80 130 52 minecraft:light[level=15]
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=100}] run fill -94 125 43 -80 134 51 minecraft:blue_ice replace minecraft:sea_lantern
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=100}] run playsound fx.airlock.inside block @a[x=-94,y=126,z=43,dx=14,dy=7,dz=8] -87 127 47 10 1
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=100}] run execute as @a unless entity @s[x=-94,y=126,z=43,dx=14,dy=7,dz=8] run playsound fx.airlock.outside block @s -87 127 47 2 1
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -81 126 47 0.25 0.25 1.5 0 5 force
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -93 126 47 0.25 0.25 1.5 0 5 force
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -85 126.5 47 0.25 0.5 0.25 0.1 5 force
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=110..190}] run particle minecraft:poof -89 126.5 47 0.25 0.5 0.25 0.1 5 force
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=190}] run data merge entity @e[tag=airlock_alarm_0,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=190}] run data merge entity @e[tag=airlock_alarm_1,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=190}] run data merge entity @e[tag=airlock_alarm_2,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=190}] run data merge entity @e[tag=airlock_alarm_3,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=190}] run data merge entity @e[tag=airlock_alarm_4,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=190}] run setblock -87 134 47 minecraft:light[level=7]
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=190}] run setblock -94 130 42 minecraft:light[level=7]
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=190}] run setblock -80 130 42 minecraft:light[level=7]
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=190}] run setblock -94 130 52 minecraft:light[level=7]
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=190}] run setblock -80 130 52 minecraft:light[level=7]
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=190}] run fill -94 125 43 -80 134 51 minecraft:sea_lantern replace minecraft:blue_ice

#open the outside airlock door
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=230}] run playsound minecraft:block.fire.extinguish block @a -87 129 42 1.5 0
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=230}] run particle minecraft:cloud -84.0 129 42 0 1.5 0 0.05 30
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=230}] run clone -90 145 48 -84 149 48 -90 127 42
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=240}] run clone -90 145 46 -84 149 46 -90 127 42
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=250}] run clone -90 145 44 -84 149 44 -90 127 42
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=260}] run clone -90 145 42 -84 149 42 -90 127 42
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=270}] run clone -90 145 40 -84 149 40 -90 127 42
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=280}] run clone -90 145 38 -84 149 38 -90 127 42

#turn redstone lamps off
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=280}] run setblock -92 124 37 minecraft:air
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=280}] run setblock -82 124 57 minecraft:air

#remove 'open' tag to end the sequence
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=280..}] run tag @s remove is_closed
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=280..}] run tag @s add is_open
execute as @e[type=armor_stand,tag=airlock,tag=open,scores={airlockTimer=280..}] run tag @s remove open

###CLOSE DOOR SEQUENCE

#add 1 to the airlock timer as long as the airlock is closing
scoreboard players add @e[type=armor_stand,tag=airlock,tag=close] airlockTimer 1

#turn redstone lamps on
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=1}] run setblock -92 124 37 minecraft:redstone_block
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=1}] run setblock -82 124 57 minecraft:redstone_block

#close the outside airlock door
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=10}] run playsound minecraft:block.fire.extinguish block @a -87 129 42 1.5 0
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=10}] run clone -90 145 40 -84 149 40 -90 127 42
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=20}] run clone -90 145 42 -84 149 42 -90 127 42
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=30}] run clone -90 145 44 -84 149 44 -90 127 42
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=40}] run clone -90 145 46 -84 149 46 -90 127 42
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=50}] run clone -90 145 48 -84 149 48 -90 127 42
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=60}] run clone -90 145 50 -84 149 50 -90 127 42

#cycle the airlock
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=100}] run data merge entity @e[tag=airlock_alarm_0,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:16}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=100}] run data merge entity @e[tag=airlock_alarm_1,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:16}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=100}] run data merge entity @e[tag=airlock_alarm_2,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:16}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=100}] run data merge entity @e[tag=airlock_alarm_3,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:16}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=100}] run data merge entity @e[tag=airlock_alarm_4,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:16}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=100}] run setblock -87 134 47 minecraft:light[level=15]
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=100}] run setblock -94 130 42 minecraft:light[level=15]
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=100}] run setblock -80 130 42 minecraft:light[level=15]
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=100}] run setblock -94 130 52 minecraft:light[level=15]
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=100}] run setblock -80 130 52 minecraft:light[level=15]
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=100}] run fill -94 125 43 -80 134 51 minecraft:blue_ice replace minecraft:sea_lantern
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=100}] run playsound fx.airlock.inside block @a[x=-94,y=126,z=43,dx=14,dy=7,dz=8] -87 127 47 10 1
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=100}] run execute as @a unless entity @s[x=-94,y=126,z=43,dx=14,dy=7,dz=8] run playsound fx.airlock.outside block @s -87 127 47 2 1
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=110..190}] run particle minecraft:poof -81 126 47 0.25 0.25 1.5 0 5 force
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=110..190}] run particle minecraft:poof -93 126 47 0.25 0.25 1.5 0 5 force
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=110..190}] run particle minecraft:poof -85 126.5 47 0.25 0.5 0.25 0.1 5 force
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=110..190}] run particle minecraft:poof -89 126.5 47 0.25 0.5 0.25 0.1 5 force
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=190}] run data merge entity @e[tag=airlock_alarm_0,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=190}] run data merge entity @e[tag=airlock_alarm_1,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=190}] run data merge entity @e[tag=airlock_alarm_2,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=190}] run data merge entity @e[tag=airlock_alarm_3,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=190}] run data merge entity @e[tag=airlock_alarm_4,limit=1] {HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}]}
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=190}] run setblock -87 134 47 minecraft:light[level=7]
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=190}] run setblock -94 130 42 minecraft:light[level=7]
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=190}] run setblock -80 130 42 minecraft:light[level=7]
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=190}] run setblock -94 130 52 minecraft:light[level=7]
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=190}] run setblock -80 130 52 minecraft:light[level=7]
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=190}] run fill -94 125 43 -80 134 51 minecraft:sea_lantern replace minecraft:blue_ice

#open the inside airlock door
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=230}] run playsound minecraft:block.fire.extinguish block @a -87 129 52 1.5 0
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=230}] run particle minecraft:cloud -84.0 129 52 0 1.5 0 0.05 30
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=230}] run clone -90 145 48 -84 149 48 -90 127 52
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=240}] run clone -90 145 46 -84 149 46 -90 127 52
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=250}] run clone -90 145 44 -84 149 44 -90 127 52
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=260}] run clone -90 145 42 -84 149 42 -90 127 52
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=270}] run clone -90 145 40 -84 149 40 -90 127 52
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=280}] run clone -90 145 38 -84 149 38 -90 127 52

#turn redstone lamps off
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=280}] run setblock -92 124 37 minecraft:air
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=280}] run setblock -82 124 57 minecraft:air

#remove 'close' tag to end the sequence
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=280..}] run tag @s remove is_open
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=280..}] run tag @s add is_closed
execute as @e[type=armor_stand,tag=airlock,tag=close,scores={airlockTimer=280..}] run tag @s remove close

###RESET AIRLOCK TIMER WHEN SEQUENCE IS FINISHED

scoreboard players set @e[type=armor_stand,tag=airlock,tag=!open,tag=!close] airlockTimer 0