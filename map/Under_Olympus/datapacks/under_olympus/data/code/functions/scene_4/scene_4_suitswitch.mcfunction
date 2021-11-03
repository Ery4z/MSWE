###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###SUITSWITCH 1

execute as @e[type=armor_stand,tag=suitswitch_1,tag=!busy] at @s if entity @a[tag=hasSuit,distance=0..1] run tag @s add busy

#add 1 to the airlock timer untill the cycle is finished
scoreboard players add @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=0..100}] airlockTimer 1

#close the glass door
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=1}] run playsound minecraft:fx.door block @a -246 160 374 1 1
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=1}] run fill -247 161 374 -245 161 374 minecraft:orange_stained_glass_pane
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=1}] run fill -247 159 374 -245 160 374 minecraft:barrier
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=6}] run fill -247 160 374 -245 160 374 minecraft:orange_stained_glass_pane
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=11}] run fill -247 159 374 -245 159 374 minecraft:orange_stained_glass_pane

execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=30}] run tag @a[x=-247,y=159,z=371,dx=2,dy=2,dz=2] remove hasSuit

#open the glass door
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=89}] run playsound minecraft:fx.door block @a -246 160 374 1 1
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=89}] run fill -247 159 374 -245 159 374 minecraft:air
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=94}] run fill -247 160 374 -245 160 374 minecraft:air
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=99}] run fill -247 161 374 -245 161 374 minecraft:air

execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=100}] unless entity @a[x=-247,y=159,z=371,dx=2,dy=2,dz=3] run scoreboard players set @s airlockTimer 101

#remove 'busy' tag to end the sequence
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=101..}] run tag @s remove busy

###SUITSWITCH 2

execute as @e[type=armor_stand,tag=suitswitch_2,tag=!busy] at @s if entity @a[tag=hasSuit,distance=0..1] run tag @s add busy

#add 1 to the airlock timer untill the cycle is finished
scoreboard players add @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=0..100}] airlockTimer 1

#close the glass door
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=1}] run playsound minecraft:fx.door block @a -238 160 374 1 1
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=1}] run fill -239 161 374 -237 161 374 minecraft:orange_stained_glass_pane
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=1}] run fill -239 159 374 -237 160 374 minecraft:barrier
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=6}] run fill -239 160 374 -237 160 374 minecraft:orange_stained_glass_pane
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=11}] run fill -239 159 374 -237 159 374 minecraft:orange_stained_glass_pane

execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=30}] run tag @a[x=-239,y=159,z=371,dx=2,dy=2,dz=2] remove hasSuit

#open the glass door
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=89}] run playsound minecraft:fx.door block @a -238 160 374 1 1
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=89}] run fill -239 159 374 -237 159 374 minecraft:air
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=94}] run fill -239 160 374 -237 160 374 minecraft:air
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=99}] run fill -239 161 374 -237 161 374 minecraft:air

execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=100}] unless entity @a[x=-239,y=159,z=371,dx=2,dy=2,dz=3] run scoreboard players set @s airlockTimer 101

#remove 'busy' tag to end the sequence
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=101..}] run tag @s remove busy

###RESET AIRLOCK TIMER WHEN SEQUENCE IS FINISHED

scoreboard players set @e[type=armor_stand,tag=suitswitch_1,tag=!busy] airlockTimer 0
scoreboard players set @e[type=armor_stand,tag=suitswitch_2,tag=!busy] airlockTimer 0