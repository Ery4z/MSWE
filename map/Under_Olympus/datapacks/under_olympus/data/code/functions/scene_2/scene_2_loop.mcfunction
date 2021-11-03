###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

#keep blockswappers in level 8 active
execute as @e[type=armor_stand,tag=blockswap,x=-59,y=94,z=59,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-59,y=94,z=59,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=-59,y=94,z=66,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-59,y=94,z=66,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute if score doorTracker eventTimer matches 0 if block 0 128 64 minecraft:lever[powered=true] run scoreboard players set doorTracker eventTimer 1

execute if score doorTracker eventTimer matches 1..60 run scoreboard players add doorTracker eventTimer 1
execute if score doorTracker eventTimer matches 1.. run setblock 0 128 64 minecraft:lever[face=floor,facing=east,powered=true]

execute if score doorTracker eventTimer matches 2 run particle minecraft:crit 0 128 64 0 0 0 0.5 40
execute if score doorTracker eventTimer matches 10 run playsound minecraft:block.fire.extinguish block @a 4 129 55 1.5 0
execute if score doorTracker eventTimer matches 10 run particle minecraft:cloud 4 129 58.0 0 1.5 0 0.05 30
execute if score doorTracker eventTimer matches 10 run clone 1 136 52 1 140 58 4 127 52
execute if score doorTracker eventTimer matches 20 run clone -1 136 52 -1 140 58 4 127 52
execute if score doorTracker eventTimer matches 30 run clone -3 136 52 -3 140 58 4 127 52
execute if score doorTracker eventTimer matches 40 run clone -5 136 52 -5 140 58 4 127 52
execute if score doorTracker eventTimer matches 50 run clone -7 136 52 -7 140 58 4 127 52
execute if score doorTracker eventTimer matches 60 run clone -9 136 52 -9 140 58 4 127 52

###PLAYER OUT OF BOUNDS PROTECTION------------------------------------------------------------------------

execute as @a[tag=!admin] unless entity @s[x=-67,y=93,z=42,dx=115,dy=39,dz=33] run title @s actionbar {"text":"You went out of bounds!","color":"red"}
execute as @a[tag=!admin] unless entity @s[x=-67,y=93,z=42,dx=115,dy=39,dz=33] run advancement grant @s[advancements={code:secrets/outofbounds=false}] only code:secrets/outofbounds
execute as @a[tag=!admin] unless entity @s[x=-67,y=93,z=42,dx=115,dy=39,dz=33] run tp @s -55 94 47 0 0

execute as @a unless entity @s[x=5,y=126,z=42,dx=42,dy=16,dz=26] run tag @s add not_in_warehouse
execute as @a if entity @s[x=5,y=126,z=42,dx=42,dy=16,dz=26] run tag @s remove not_in_warehouse

execute unless entity @a[tag=not_in_warehouse] if score doorTracker eventTimer matches 61 if score commsTracker commsTimer matches 1..600 run scoreboard players set commsTracker commsTimer 601
execute unless entity @a[tag=not_in_warehouse] if score doorTracker eventTimer matches 61 run function code:scene_2/scene_2_event
execute unless entity @a[tag=not_in_warehouse] if score doorTracker eventTimer matches 61 run scoreboard players set doorTracker eventTimer 62