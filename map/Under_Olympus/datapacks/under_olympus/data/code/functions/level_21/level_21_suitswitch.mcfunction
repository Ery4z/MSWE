###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###AIRLOCK BUTTON

#open the airlock when button is pressed
execute as @e[type=armor_stand,tag=suitswitch_1,tag=!busy] if block -163 160 230 warped_button[powered=true] run tag @s add busy
execute as @e[type=armor_stand,tag=suitswitch_2,tag=!busy] if block -163 160 238 warped_button[powered=true] run tag @s add busy

#reset airlock button
execute if block -163 160 230 warped_button[powered=true] run setblock -163 160 230 minecraft:warped_button[face=wall,facing=west,powered=false]
execute if block -163 160 238 warped_button[powered=true] run setblock -163 160 238 minecraft:warped_button[face=wall,facing=west,powered=false]

###SUITSWITCH 1

#add 1 to the airlock timer untill door is open
scoreboard players add @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=0..69}] airlockTimer 1

#turn lights on
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=1}] run fill -160 158 226 -160 162 230 minecraft:sea_lantern replace minecraft:blue_ice

#make spacesuit appear
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=10..49}] run particle minecraft:poof -160 160 228 0.5 1 0.5 0 10 force
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=30}] run summon minecraft:armor_stand -160 159 228 {Tags:["suitswitch_1_prop"],Rotation:[90.0f,0.0f],Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:baked_potato",Count:1b,NoBasePlate:1b,tag:{CustomModelData:1}}],DisabledSlots:2039583}

#open the glass door
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=59}] run playsound minecraft:fx.door block @a -162 160 228 1 1
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=59}] run fill -162 159 227 -162 159 229 minecraft:air
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=64}] run fill -162 160 227 -162 160 229 minecraft:air
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=69}] run fill -162 161 227 -162 161 229 minecraft:air

#give player inside chamber the suit
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=70}] at @s if entity @a[tag=!hasSuit,distance=0..0.5] run scoreboard players set @s airlockTimer 71

scoreboard players add @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=71..169}] airlockTimer 1

#close the glass door
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=72}] run playsound minecraft:fx.door block @a -162 160 228 1 1
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=72}] run fill -162 161 227 -162 161 229 minecraft:orange_stained_glass_pane
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=72}] run fill -162 159 227 -162 160 229 minecraft:barrier
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=77}] run fill -162 160 227 -162 160 229 minecraft:orange_stained_glass_pane
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=82}] run fill -162 159 227 -162 159 229 minecraft:orange_stained_glass_pane

execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=85}] run kill @e[type=armor_stand,tag=suitswitch_1_prop]
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=85}] run tag @a[x=-161,y=159,z=227,dx=2,dy=2,dz=2] add hasSuit

#open the glass door
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=159}] run playsound minecraft:fx.door block @a -162 160 228 1 1
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=159}] run fill -162 159 227 -162 159 229 minecraft:air
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=164}] run fill -162 160 227 -162 160 229 minecraft:air
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=169}] run fill -162 161 227 -162 161 229 minecraft:air

execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=170}] unless entity @a[x=-162,y=159,z=227,dx=3,dy=2,dz=2] run scoreboard players set @s airlockTimer 171

scoreboard players add @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=171..189}] airlockTimer 1

#close the glass door
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=172}] run playsound minecraft:fx.door block @a -162 160 228 1 1
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=172}] run fill -162 161 227 -162 161 229 minecraft:orange_stained_glass_pane
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=172}] run fill -162 159 227 -162 160 229 minecraft:barrier
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=177}] run fill -162 160 227 -162 160 229 minecraft:orange_stained_glass_pane
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=182}] run fill -162 159 227 -162 159 229 minecraft:orange_stained_glass_pane

#turn lights off
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=189}] run fill -160 158 226 -160 162 230 minecraft:blue_ice replace minecraft:sea_lantern

#remove 'busy' tag to end the sequence
execute as @e[type=armor_stand,tag=suitswitch_1,tag=busy,scores={airlockTimer=190..}] run tag @s remove busy

###SUITSWITCH 2

#add 1 to the airlock timer untill door is open
scoreboard players add @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=0..69}] airlockTimer 1

#turn lights on
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=1}] run fill -160 158 234 -160 162 238 minecraft:sea_lantern replace minecraft:blue_ice

#make spacesuit appear
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=10..49}] run particle minecraft:poof -160 160 236 0.5 1 0.5 0 10 force
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=30}] run summon minecraft:armor_stand -160 159 236 {Tags:["suitswitch_2_prop"],Rotation:[90.0f,0.0f],Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:baked_potato",Count:1b,NoBasePlate:1b,tag:{CustomModelData:1}}],DisabledSlots:2039583}

#open the glass door
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=59}] run playsound minecraft:fx.door block @a -162 160 236 1 1
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=59}] run fill -162 159 235 -162 159 237 minecraft:air
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=64}] run fill -162 160 235 -162 160 237 minecraft:air
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=69}] run fill -162 161 235 -162 161 237 minecraft:air

#give player inside chamber the suit
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=70}] at @s if entity @a[tag=!hasSuit,distance=0..0.5] run scoreboard players set @s airlockTimer 71

scoreboard players add @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=71..169}] airlockTimer 1

#close the glass door
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=72}] run playsound minecraft:fx.door block @a -162 160 236 1 1
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=72}] run fill -162 161 235 -162 161 237 minecraft:orange_stained_glass_pane
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=72}] run fill -162 159 235 -162 160 237 minecraft:barrier
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=77}] run fill -162 160 235 -162 160 237 minecraft:orange_stained_glass_pane
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=82}] run fill -162 159 235 -162 159 237 minecraft:orange_stained_glass_pane

execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=85}] run kill @e[type=armor_stand,tag=suitswitch_2_prop]
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=85}] run tag @a[x=-161,y=159,z=235,dx=2,dy=2,dz=2] add hasSuit

#open the glass door
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=159}] run playsound minecraft:fx.door block @a -162 160 236 1 1
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=159}] run fill -162 159 235 -162 159 237 minecraft:air
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=164}] run fill -162 160 235 -162 160 237 minecraft:air
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=169}] run fill -162 161 235 -162 161 237 minecraft:air

execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=170}] unless entity @a[x=-162,y=159,z=235,dx=3,dy=2,dz=2] run scoreboard players set @s airlockTimer 171

scoreboard players add @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=171..189}] airlockTimer 1

#close the glass door
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=172}] run playsound minecraft:fx.door block @a -162 160 236 1 1
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=172}] run fill -162 161 235 -162 161 237 minecraft:orange_stained_glass_pane
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=172}] run fill -162 159 235 -162 160 237 minecraft:barrier
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=177}] run fill -162 160 235 -162 160 237 minecraft:orange_stained_glass_pane
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=182}] run fill -162 159 235 -162 159 237 minecraft:orange_stained_glass_pane

#turn lights off
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=189}] run fill -160 158 234 -160 162 238 minecraft:blue_ice replace minecraft:sea_lantern

#remove 'busy' tag to end the sequence
execute as @e[type=armor_stand,tag=suitswitch_2,tag=busy,scores={airlockTimer=190..}] run tag @s remove busy

###RESET AIRLOCK TIMER WHEN SEQUENCE IS FINISHED

scoreboard players set @e[type=armor_stand,tag=suitswitch_1,tag=!busy] airlockTimer 0
scoreboard players set @e[type=armor_stand,tag=suitswitch_2,tag=!busy] airlockTimer 0