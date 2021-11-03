###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###PLAYER OUT OF BOUNDS PROTECTION------------------------------------------------------------------------

execute as @a[tag=!admin] unless entity @s[x=-177,y=125,z=64,dx=107,dy=51,dz=99] run title @s actionbar {"text":"You went out of bounds!","color":"red"}
execute as @a[tag=!admin] unless entity @s[x=-177,y=125,z=64,dx=107,dy=51,dz=99] run advancement grant @s[advancements={code:secrets/outofbounds=false}] only code:secrets/outofbounds
execute as @a[tag=!admin] unless entity @s[x=-177,y=125,z=64,dx=107,dy=51,dz=99] run tp @s -82 126 112 90 0

#keep blockswappers in level 16 active
execute as @e[type=armor_stand,tag=blockswap,x=-92,y=126,z=110,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..1.9] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-92,y=126,z=110,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..1.9] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=-99,y=126,z=112,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..1.9] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-99,y=126,z=112,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..1.9] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=-100,y=126,z=102,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-100,y=126,z=102,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=!magma_block_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=crafter,tag=!magma_block_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data modify entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] ArmorItems set from entity @s ArmorItems
execute as @e[type=armor_stand,tag=crafter,tag=!magma_block_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add block_stored
execute as @e[type=armor_stand,tag=crafter,tag=!magma_block_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add magma_block_stored
execute as @e[type=armor_stand,tag=crafter,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=!packed_ice_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=crafter,tag=!packed_ice_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data modify entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] ArmorItems set from entity @s ArmorItems
execute as @e[type=armor_stand,tag=crafter,tag=!packed_ice_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add block_stored
execute as @e[type=armor_stand,tag=crafter,tag=!packed_ice_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add packed_ice_stored
execute as @e[type=armor_stand,tag=crafter,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=!cobblestone_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=crafter,tag=!cobblestone_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data modify entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] ArmorItems set from entity @s ArmorItems
execute as @e[type=armor_stand,tag=crafter,tag=!cobblestone_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add block_stored
execute as @e[type=armor_stand,tag=crafter,tag=!cobblestone_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add cobblestone_stored
execute as @e[type=armor_stand,tag=crafter,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=!smooth_stone_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=crafter,tag=!smooth_stone_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data modify entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] ArmorItems set from entity @s ArmorItems
execute as @e[type=armor_stand,tag=crafter,tag=!smooth_stone_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add block_stored
execute as @e[type=armor_stand,tag=crafter,tag=!smooth_stone_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add smooth_stone_stored
execute as @e[type=armor_stand,tag=crafter,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] run data merge entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] run particle minecraft:wax_off ~ ~1.2 ~ 0.2 0.2 0.2 2 25 force
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] run playsound minecraft:block.anvil.land block @a -94 127 108 1 1.5
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove block_stored
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove magma_block_stored

execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}] run data merge entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}] run particle minecraft:wax_off ~ ~1.2 ~ 0.2 0.2 0.2 2 25 force
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}] run playsound minecraft:block.anvil.land block @a -94 127 108 1 1.5
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove block_stored
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove magma_block_stored

execute as @e[type=armor_stand,tag=crafter,tag=packed_ice_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] run data merge entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=crafter,tag=packed_ice_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] run particle minecraft:wax_off ~ ~1.2 ~ 0.2 0.2 0.2 2 25 force
execute as @e[type=armor_stand,tag=crafter,tag=packed_ice_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] run playsound minecraft:block.anvil.land block @a -94 127 108 1 1.5
execute as @e[type=armor_stand,tag=crafter,tag=packed_ice_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}
execute as @e[type=armor_stand,tag=crafter,tag=packed_ice_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove block_stored
execute as @e[type=armor_stand,tag=crafter,tag=packed_ice_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove packed_ice_stored

execute as @e[type=armor_stand,tag=crafter,tag=cobblestone_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] run data merge entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=crafter,tag=cobblestone_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] run particle minecraft:wax_off ~ ~1.2 ~ 0.2 0.2 0.2 2 25 force
execute as @e[type=armor_stand,tag=crafter,tag=cobblestone_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] run playsound minecraft:block.anvil.land block @a -94 127 108 1 1.5
execute as @e[type=armor_stand,tag=crafter,tag=cobblestone_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}
execute as @e[type=armor_stand,tag=crafter,tag=cobblestone_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove block_stored
execute as @e[type=armor_stand,tag=crafter,tag=cobblestone_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove cobblestone_stored

execute as @e[type=armor_stand,tag=crafter,tag=smooth_stone_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove block_stored
execute as @e[type=armor_stand,tag=crafter,tag=smooth_stone_stored,x=-94,y=126,z=108,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove smooth_stone_stored

#--------------------

#make scientists look in player's direction
execute as @e[tag=scientist_hallway_1] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_hallway_1] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -95 158 117

execute as @e[tag=scientist_hallway_2] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_hallway_2] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -129 157 107

execute as @e[tag=scientist_hallway_3] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_hallway_3] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -161 157 114

execute as @e[tag=scientist_hallway_4] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_hallway_4] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -148.0 158 92.0

execute as @e[tag=scientist_hallway_5] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_hallway_5] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -133 157 91

execute as @e[tag=scientist_hallway_6] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_hallway_6] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -97.5 158 105.0

#open door trigger
execute if score doorTracker eventTimer matches ..0 if entity @a[x=-110,y=158,z=94,dx=6,dy=7,dz=12] run scoreboard players set doorTracker eventTimer 1

execute if score doorTracker eventTimer matches 1..60 run scoreboard players add doorTracker eventTimer 1

execute if score doorTracker eventTimer matches 2 run setblock -107 160 91 minecraft:lever[face=floor,powered=true,facing=west]
execute if score doorTracker eventTimer matches 2 run playsound minecraft:block.lever.click block @a -107 160 91 1 1
execute if score doorTracker eventTimer matches 2 run particle minecraft:crit -107 160 91 0 0 0 0.5 40
execute if score doorTracker eventTimer matches 10 run playsound minecraft:block.fire.extinguish block @a -111 161 100 1.5 0
execute if score doorTracker eventTimer matches 10 run particle minecraft:cloud -111 161 98.0 0 1.5 0 0.05 30
execute if score doorTracker eventTimer matches 10 run clone -107 168 97 -107 172 103 -111 159 97
execute if score doorTracker eventTimer matches 20 run clone -105 168 97 -105 172 103 -111 159 97
execute if score doorTracker eventTimer matches 30 run clone -103 168 97 -103 172 103 -111 159 97
execute if score doorTracker eventTimer matches 40 run clone -101 168 97 -101 172 103 -111 159 97
execute if score doorTracker eventTimer matches 50 run clone -99 168 97 -99 172 103 -111 159 97
execute if score doorTracker eventTimer matches 60 run clone -97 168 97 -97 172 103 -111 159 97

#sprinkler routine
scoreboard players add @e[tag=scientist_hallway_1] eventTimer 1

execute as @e[tag=scientist_hallway_1,scores={eventTimer=1}] run playsound minecraft:fx.sprinkler ambient @a -145 158 90 0.5 1
execute as @e[tag=scientist_hallway_1,scores={eventTimer=1}] run playsound minecraft:fx.sprinkler ambient @a -133 158 90 0.5 1
execute as @e[tag=scientist_hallway_1,scores={eventTimer=1}] run playsound minecraft:fx.sprinkler ambient @a -133 158 82 0.5 1
execute as @e[tag=scientist_hallway_1,scores={eventTimer=1}] run playsound minecraft:fx.sprinkler ambient @a -145 158 82 0.5 1
execute as @e[tag=scientist_hallway_1,scores={eventTimer=1}] run playsound minecraft:fx.sprinkler ambient @a -157 158 82 0.5 1
execute as @e[tag=scientist_hallway_1,scores={eventTimer=1}] run playsound minecraft:fx.sprinkler ambient @a -157 158 90 0.5 1
execute as @e[tag=scientist_hallway_1,scores={eventTimer=0..320}] run particle minecraft:falling_water -145 174.0 90 1 0 1 1 5 force
execute as @e[tag=scientist_hallway_1,scores={eventTimer=0..320}] run particle minecraft:falling_water -133 174.0 90 1 0 1 1 5 force
execute as @e[tag=scientist_hallway_1,scores={eventTimer=0..320}] run particle minecraft:falling_water -133 174.0 82 1 0 1 1 5 force
execute as @e[tag=scientist_hallway_1,scores={eventTimer=0..320}] run particle minecraft:falling_water -145 174.0 82 1 0 1 1 5 force
execute as @e[tag=scientist_hallway_1,scores={eventTimer=0..320}] run particle minecraft:falling_water -157 174.0 82 1 0 1 1 5 force
execute as @e[tag=scientist_hallway_1,scores={eventTimer=0..320}] run particle minecraft:falling_water -157 174.0 90 1 0 1 1 5 force

execute as @e[tag=scientist_hallway_1,scores={eventTimer=321}] run playsound minecraft:fx.sprinkler ambient @a -145 158 118 0.5 1
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321}] run playsound minecraft:fx.sprinkler ambient @a -145 158 110 0.5 1
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321}] run playsound minecraft:fx.sprinkler ambient @a -155 158 117 0.5 1
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321}] run playsound minecraft:fx.sprinkler ambient @a -161 158 117 0.5 1
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321}] run playsound minecraft:fx.sprinkler ambient @a -155 158 111 0.5 1
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321}] run playsound minecraft:fx.sprinkler ambient @a -161 158 111 0.5 1
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321}] run playsound minecraft:fx.sprinkler ambient @a -129 158 117 0.5 1
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321}] run playsound minecraft:fx.sprinkler ambient @a -135 158 117 0.5 1
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321}] run playsound minecraft:fx.sprinkler ambient @a -129 158 111 0.5 1
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321}] run playsound minecraft:fx.sprinkler ambient @a -135 158 111 0.5 1
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321..640}] run particle minecraft:falling_water -145 174.0 118 1 0 1 1 5 force
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321..640}] run particle minecraft:falling_water -145 174.0 110 1 0 1 1 5 force
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321..640}] run particle minecraft:falling_water -155 163.0 117 0.5 0 0.5 1 1 force
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321..640}] run particle minecraft:falling_water -161 163.0 117 0.5 0 0.5 1 1 force
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321..640}] run particle minecraft:falling_water -155 163.0 111 0.5 0 0.5 1 1 force
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321..640}] run particle minecraft:falling_water -161 163.0 111 0.5 0 0.5 1 1 force
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321..640}] run particle minecraft:falling_water -129 163.0 117 0.5 0 0.5 1 1 force
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321..640}] run particle minecraft:falling_water -135 163.0 117 0.5 0 0.5 1 1 force
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321..640}] run particle minecraft:falling_water -129 163.0 111 0.5 0 0.5 1 1 force
execute as @e[tag=scientist_hallway_1,scores={eventTimer=321..640}] run particle minecraft:falling_water -135 163.0 111 0.5 0 0.5 1 1 force

scoreboard players set @e[tag=scientist_hallway_1,scores={eventTimer=640..}] eventTimer 0

#boing
scoreboard players add @e[tag=scientist_hallway_2] eventTimer 0
scoreboard players add @e[tag=scientist_hallway_3] eventTimer 0

execute as @e[tag=scientist_hallway_2,scores={eventTimer=..0}] if block -149 158 105 lever[powered=true] run scoreboard players set @s eventTimer 1
execute as @e[tag=scientist_hallway_2,scores={eventTimer=1}] run clone -149 138 104 -141 148 106 -149 157 104
execute as @e[tag=scientist_hallway_2,scores={eventTimer=1}] run playsound minecraft:fx.boing block @a -145 160 105 1.5 1
execute as @e[tag=scientist_hallway_2,scores={eventTimer=1}] run scoreboard players set @s eventTimer 2

execute as @e[tag=scientist_hallway_3,scores={eventTimer=..0}] if block -141 158 123 lever[powered=true] run scoreboard players set @s eventTimer 1
execute as @e[tag=scientist_hallway_3,scores={eventTimer=1}] run clone -149 138 122 -141 148 124 -149 157 122
execute as @e[tag=scientist_hallway_3,scores={eventTimer=1}] run playsound minecraft:fx.boing block @a -145 160 123 1.5 1
execute as @e[tag=scientist_hallway_3,scores={eventTimer=1}] run scoreboard players set @s eventTimer 2

execute if entity @e[tag=scientist_hallway_2,scores={eventTimer=2}] if entity @e[tag=scientist_hallway_3,scores={eventTimer=2}] run advancement grant @a[advancements={code:secrets/peaceloveplants=false}] only code:secrets/peaceloveplants

#ambience particles
particle minecraft:spore_blossom_air -145 166 86 9 3 4 0 1 force
particle minecraft:spore_blossom_air -145 166 114 9 3 4 0 1 force