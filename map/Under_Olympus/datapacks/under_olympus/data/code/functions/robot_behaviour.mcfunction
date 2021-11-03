###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###SPAWN ROBOT--------------------------------------------------------------------------------------------
execute as @e[type=armor_stand,tag=spawn,tag=respawn] at @e[type=armor_stand,tag=robot] run particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0.04 100 force
execute at @e[type=armor_stand,tag=spawn,tag=respawn] run kill @e[type=armor_stand,tag=robot]
execute at @e[type=armor_stand,tag=spawn,tag=respawn] run summon minecraft:armor_stand ~ ~ ~ {Tags:["robot"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,tag=respawn] at @s run data modify entity @e[type=armor_stand,tag=robot,distance=0,limit=1] Rotation set from entity @s Rotation
execute at @e[type=armor_stand,tag=spawn,tag=respawn] run scoreboard players add @e[type=armor_stand,tag=robot] robotMoving 0
execute as @e[type=armor_stand,tag=spawn,tag=respawn] run tag @s remove respawn

###BLOCKSWAPPER-------------------------------------------------------------------------------------------
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=!carrying] at @s run data modify entity @s ArmorItems set from entity @e[type=armor_stand,tag=blockswap,distance=0..0.1,limit=1] ArmorItems
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=!carrying] at @s run data merge entity @e[type=armor_stand,tag=blockswap,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=carrying] at @s if entity @e[type=armor_stand,tag=blockswap,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] run tag @s add swapped
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=carrying,tag=swapped] at @s run data modify entity @e[type=armor_stand,tag=blockswap,distance=0..0.1,limit=1] ArmorItems set from entity @s ArmorItems
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=carrying,tag=swapped] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=carrying,tag=swapped] run tag @s remove swapped

###CRAFTER------------------------------------------------------------------------------------------------
#execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=!carrying] at @s run data modify entity @s ArmorItems set from entity @e[type=armor_stand,tag=crafter,distance=0..0.1,limit=1] ArmorItems
#execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=!carrying] at @s run data merge entity @e[type=armor_stand,tag=crafter,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=carrying] at @s if entity @e[type=armor_stand,tag=crafter,tag=!block_stored,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] run tag @s add swapped
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=carrying,tag=swapped] at @s run data modify entity @e[type=armor_stand,tag=crafter,distance=0..0.1,limit=1] ArmorItems set from entity @s ArmorItems
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=carrying,tag=swapped] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=carrying,tag=swapped] run tag @s remove swapped

###CHANGE ROBOT APPEARANCE--------------------------------------------------------------------------------
execute as @e[type=armor_stand,tag=robot,tag=active,tag=carrying] if entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] run tag @s remove carrying
execute as @e[type=armor_stand,tag=robot,tag=active,tag=!carrying] unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] run tag @s add carrying

execute as @e[type=armor_stand,tag=robot,tag=active,tag=!carrying] run data merge entity @s {HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:1}},{}]}
execute as @e[type=armor_stand,tag=robot,tag=active,tag=carrying] run data merge entity @s {HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:2}},{}]}
execute as @e[type=armor_stand,tag=robot,tag=!active,tag=fail] run data merge entity @s {HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:3}},{}]}
execute as @e[type=armor_stand,tag=robot,tag=!active,tag=finished] run data merge entity @s {HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}]}

###ROBOT COLLISION DETECTION------------------------------------------------------------------------------
execute as @e[type=armor_stand,tag=robot,tag=active] at @s if entity @e[type=armor_stand,tag=robot,distance=0.1..1.1] run tag @s add fail
execute as @e[type=armor_stand,tag=robot,tag=active] at @s if entity @e[type=armor_stand,tag=robot,distance=0.1..1.1] run playsound minecraft:fx.crash neutral @a ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=robot,tag=active] at @s if entity @e[type=armor_stand,tag=robot,distance=0.1..1.1] run title @a actionbar {"text":"A robot has crashed!","color":"red"}
execute as @e[type=armor_stand,tag=robot,tag=active] at @s if entity @e[type=armor_stand,tag=robot,distance=0.1..1.1] run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.1 500 force
execute as @e[type=armor_stand,tag=robot,tag=active] at @s if entity @e[type=armor_stand,tag=robot,distance=0.1..1.1] run particle minecraft:large_smoke ~ ~0.5 ~ 0 0 0 0.02 150 force
execute as @e[type=armor_stand,tag=robot,tag=active] at @s if entity @e[type=armor_stand,tag=robot,distance=0.1..1.1] run summon firework_rocket ~ ~1 ~ {LifeTime:0,Motion:[0.0,-0.5,0.0],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;15435844],FadeColors:[I;15790320]}]}}}}
execute as @e[type=armor_stand,tag=robot,tag=active] at @s if entity @e[type=armor_stand,tag=robot,distance=0.1..1.1] run scoreboard players add robotsCollided robotCollision 1
execute as @e[type=armor_stand,tag=robot,tag=active] at @s if entity @e[type=armor_stand,tag=robot,distance=0.1..1.1] run tag @s remove active

###DETECT NEXT RAIL TYPE----------------------------------------------------------------------------------

#Straight/crossing track
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:pink_carpet run tag @s add moving
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:rail[shape=east_west] run execute align xyz run tp @s ~0.5 ~ ~0.5 ~ 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:rail[shape=north_south] run execute align xyz run tp @s ~0.5 ~ ~0.5 ~ 0

#North-West corner track
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,y_rotation=0] at @s run execute if block ~ ~ ~ minecraft:rail[shape=north_west] run execute align xyz run tp @s ~0.5 ~ ~0.5 ~90 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,y_rotation=-90] at @s run execute if block ~ ~ ~ minecraft:rail[shape=north_west] run execute align xyz run tp @s ~0.5 ~ ~0.5 ~-90 0

#North-East corner track
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,y_rotation=90] at @s run execute if block ~ ~ ~ minecraft:rail[shape=north_east] run execute align xyz run tp @s ~0.5 ~ ~0.5 ~90 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,y_rotation=0] at @s run execute if block ~ ~ ~ minecraft:rail[shape=north_east] run execute align xyz run tp @s ~0.5 ~ ~0.5 ~-90 0

#South-East corner track
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,y_rotation=180] at @s run execute if block ~ ~ ~ minecraft:rail[shape=south_east] run execute align xyz run tp @s ~0.5 ~ ~0.5 ~90 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,y_rotation=90] at @s run execute if block ~ ~ ~ minecraft:rail[shape=south_east] run execute align xyz run tp @s ~0.5 ~ ~0.5 ~-90 0

#South-East corner track
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,y_rotation=-90] at @s run execute if block ~ ~ ~ minecraft:rail[shape=south_west] run execute align xyz run tp @s ~0.5 ~ ~0.5 ~90 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,y_rotation=180] at @s run execute if block ~ ~ ~ minecraft:rail[shape=south_west] run execute align xyz run tp @s ~0.5 ~ ~0.5 ~-90 0

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:rail run tag @s add moving

#4-directional dependent track (NOT carrying block)
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=!carrying] at @s run execute if block ~ ~ ~ minecraft:repeater[facing=north,delay=1] run execute align xyz run tp @s ~0.5 ~ ~0.5 180 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=!carrying] at @s run execute if block ~ ~ ~ minecraft:repeater[facing=north,delay=2] run execute align xyz run tp @s ~0.5 ~ ~0.5 -90 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=!carrying] at @s run execute if block ~ ~ ~ minecraft:repeater[facing=north,delay=3] run execute align xyz run tp @s ~0.5 ~ ~0.5 0 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=!carrying] at @s run execute if block ~ ~ ~ minecraft:repeater[facing=north,delay=4] run execute align xyz run tp @s ~0.5 ~ ~0.5 90 0

#4-directional dependent track (IS carrying block)
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=carrying] at @s run execute if block ~ ~ ~ minecraft:repeater[facing=north,delay=1] run execute align xyz run tp @s ~0.5 ~ ~0.5 0 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=carrying] at @s run execute if block ~ ~ ~ minecraft:repeater[facing=north,delay=2] run execute align xyz run tp @s ~0.5 ~ ~0.5 90 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=carrying] at @s run execute if block ~ ~ ~ minecraft:repeater[facing=north,delay=3] run execute align xyz run tp @s ~0.5 ~ ~0.5 180 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=carrying] at @s run execute if block ~ ~ ~ minecraft:repeater[facing=north,delay=4] run execute align xyz run tp @s ~0.5 ~ ~0.5 -90 0

#4-directional permanent track
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:repeater[facing=east,delay=1] run execute align xyz run tp @s ~0.5 ~ ~0.5 180 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:repeater[facing=east,delay=2] run execute align xyz run tp @s ~0.5 ~ ~0.5 -90 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:repeater[facing=east,delay=3] run execute align xyz run tp @s ~0.5 ~ ~0.5 0 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:repeater[facing=east,delay=4] run execute align xyz run tp @s ~0.5 ~ ~0.5 90 0

#Rotation track
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:repeater[facing=west,delay=1] run execute align xyz run tp @s ~0.5 ~ ~0.5 ~90 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:repeater[facing=west,delay=2] run execute align xyz run tp @s ~0.5 ~ ~0.5 ~-90 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:repeater[facing=west,delay=3] run execute align xyz run tp @s ~0.5 ~ ~0.5 ~90 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:repeater[facing=west,delay=4] run execute align xyz run tp @s ~0.5 ~ ~0.5 ~-90 0

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:repeater run tag @s add moving

#Bidirectional dependent track (NOT carrying block)
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=!carrying] at @s run execute if block ~ ~ ~ minecraft:comparator[facing=north,mode=compare] run execute align xyz run tp @s ~0.5 ~ ~0.5 180 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=!carrying] at @s run execute if block ~ ~ ~ minecraft:comparator[facing=north,mode=subtract] run execute align xyz run tp @s ~0.5 ~ ~0.5 0 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=!carrying] at @s run execute if block ~ ~ ~ minecraft:comparator[facing=east,mode=compare] run execute align xyz run tp @s ~0.5 ~ ~0.5 -90 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=!carrying] at @s run execute if block ~ ~ ~ minecraft:comparator[facing=east,mode=subtract] run execute align xyz run tp @s ~0.5 ~ ~0.5 90 0

#Bidirectional dependent track (IS carrying block)
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=carrying] at @s run execute if block ~ ~ ~ minecraft:comparator[facing=north,mode=compare] run execute align xyz run tp @s ~0.5 ~ ~0.5 0 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=carrying] at @s run execute if block ~ ~ ~ minecraft:comparator[facing=north,mode=subtract] run execute align xyz run tp @s ~0.5 ~ ~0.5 180 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=carrying] at @s run execute if block ~ ~ ~ minecraft:comparator[facing=east,mode=compare] run execute align xyz run tp @s ~0.5 ~ ~0.5 90 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=carrying] at @s run execute if block ~ ~ ~ minecraft:comparator[facing=east,mode=subtract] run execute align xyz run tp @s ~0.5 ~ ~0.5 -90 0

#Bidirectional permanent track
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:comparator[facing=south,mode=compare] run execute align xyz run tp @s ~0.5 ~ ~0.5 180 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:comparator[facing=south,mode=subtract] run execute align xyz run tp @s ~0.5 ~ ~0.5 0 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:comparator[facing=west,mode=compare] run execute align xyz run tp @s ~0.5 ~ ~0.5 -90 0
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:comparator[facing=west,mode=subtract] run execute align xyz run tp @s ~0.5 ~ ~0.5 90 0

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:comparator run tag @s add moving

#Blue track modifier switch
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:cyan_carpet run tag @s add modify_blue

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_blue] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:repeater[facing=north,delay=4] run setblock ~ ~2.5 ~ minecraft:pink_carpet destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_blue] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:repeater[facing=north,delay=3] run setblock ~ ~2.5 ~ minecraft:repeater[facing=north,delay=4] destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_blue] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:repeater[facing=north,delay=2] run setblock ~ ~2.5 ~ minecraft:repeater[facing=north,delay=3] destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_blue] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:repeater[facing=north,delay=1] run setblock ~ ~2.5 ~ minecraft:repeater[facing=north,delay=2] destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_blue] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:pink_carpet run setblock ~ ~2.5 ~ minecraft:repeater[facing=north,delay=1]

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_blue] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:comparator[facing=north,mode=compare] run setblock ~ ~2.5 ~ minecraft:pink_carpet destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_blue] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:comparator[facing=north,mode=subtract] run setblock ~ ~2.5 ~ minecraft:comparator[facing=north,mode=compare] destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_blue] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:pink_carpet run setblock ~ ~2.5 ~ minecraft:comparator[facing=north,mode=subtract]

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_blue] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:comparator[facing=east,mode=compare] run setblock ~ ~2.5 ~ minecraft:pink_carpet destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_blue] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:comparator[facing=east,mode=subtract] run setblock ~ ~2.5 ~ minecraft:comparator[facing=east,mode=compare] destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_blue] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:pink_carpet run setblock ~ ~2.5 ~ minecraft:comparator[facing=east,mode=subtract]

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_blue] at @s run execute if block ~ ~ ~ minecraft:cyan_carpet run tag @s remove modify_blue
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:cyan_carpet run tag @s add moving

#Green track modifier switch
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:green_carpet run tag @s add modify_green

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_green] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:repeater[facing=east,delay=4] run setblock ~ ~2.5 ~ minecraft:pink_carpet destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_green] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:repeater[facing=east,delay=3] run setblock ~ ~2.5 ~ minecraft:repeater[facing=east,delay=4] destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_green] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:repeater[facing=east,delay=2] run setblock ~ ~2.5 ~ minecraft:repeater[facing=east,delay=3] destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_green] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:repeater[facing=east,delay=1] run setblock ~ ~2.5 ~ minecraft:repeater[facing=east,delay=2] destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_green] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:pink_carpet run setblock ~ ~2.5 ~ minecraft:repeater[facing=east,delay=1]

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_green] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:comparator[facing=west,mode=compare] run setblock ~ ~2.5 ~ minecraft:pink_carpet destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_green] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:comparator[facing=west,mode=subtract] run setblock ~ ~2.5 ~ minecraft:comparator[facing=west,mode=compare] destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_green] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:pink_carpet run setblock ~ ~2.5 ~ minecraft:comparator[facing=west,mode=subtract]

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_green] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:comparator[facing=south,mode=compare] run setblock ~ ~2.5 ~ minecraft:pink_carpet destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_green] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:comparator[facing=south,mode=subtract] run setblock ~ ~2.5 ~ minecraft:comparator[facing=south,mode=compare] destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_green] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:pink_carpet run setblock ~ ~2.5 ~ minecraft:comparator[facing=south,mode=subtract]

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_green] at @s run execute if block ~ ~ ~ minecraft:green_carpet run tag @s remove modify_green
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:green_carpet run tag @s add moving

#Yellow track modifier switch
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:brown_carpet run tag @s add modify_yellow

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_yellow] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:repeater[facing=west,delay=4] run setblock ~ ~2.5 ~ minecraft:pink_carpet destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_yellow] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:repeater[facing=west,delay=3] run setblock ~ ~2.5 ~ minecraft:repeater[facing=west,delay=4] destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_yellow] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:repeater[facing=west,delay=2] run setblock ~ ~2.5 ~ minecraft:repeater[facing=west,delay=3] destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_yellow] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:repeater[facing=west,delay=1] run setblock ~ ~2.5 ~ minecraft:repeater[facing=west,delay=2] destroy
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_yellow] run execute as @e[type=armor_stand,tag=modifier] at @s run execute if block ~ ~2.5 ~ minecraft:pink_carpet run setblock ~ ~2.5 ~ minecraft:repeater[facing=west,delay=1]

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,tag=modify_yellow] at @s run execute if block ~ ~ ~ minecraft:brown_carpet run tag @s remove modify_yellow
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:brown_carpet run tag @s add moving

#External modifier switch
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:activator_rail run tag @s add moving

#Robot going off track
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:air run tag @s add fail
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:air run playsound minecraft:fx.crash neutral @a ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:air run title @a actionbar {"text":"A robot has gone off track!","color":"red"}
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:air run scoreboard players add robotsCrashed robotCrash 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:air run tag @s remove active

execute as @e[type=armor_stand,tag=robot,tag=fail] at @s run particle minecraft:crit ~ ~0.5 ~ 0 0 0 0.4 1 force
execute as @e[type=armor_stand,tag=robot,tag=fail] at @s run particle minecraft:smoke ~ ~1.2 ~ 0.1 0.2 0.1 0.01 1 force

#Course completion track
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:detector_rail run tag @s add finished
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] at @s run execute if block ~ ~ ~ minecraft:detector_rail run tag @s remove active

###TP ROBOT 1 BLOCK IN THE DIRECTION IT'S FACING----------------------------------------------------------
execute as @e[type=armor_stand,tag=robot,tag=moving,tag=active] if score @s robotMoving matches ..0 run tag @s remove moving
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active] if score @s robotMoving matches ..0 run scoreboard players set @s robotMoving 10

execute as @e[type=armor_stand,tag=robot,tag=moving,tag=active] if score @s robotMoving matches 1.. at @s run tp @s ^ ^ ^0.1
execute as @e[type=armor_stand,tag=robot,tag=moving,tag=active] if score @s robotMoving matches 1.. run scoreboard players remove @s robotMoving 1

execute as @e[type=armor_stand,tag=robot,tag=moving,tag=active] if entity @e[type=armor_stand,tag=spawn,tag=fastforward] if score @s robotMoving matches 1.. at @s run tp @s ^ ^ ^0.1
execute as @e[type=armor_stand,tag=robot,tag=moving,tag=active] if entity @e[type=armor_stand,tag=spawn,tag=fastforward] if score @s robotMoving matches 1.. run scoreboard players remove @s robotMoving 1
execute as @e[type=armor_stand,tag=robot,tag=moving,tag=active] if entity @e[type=armor_stand,tag=spawn,tag=fastforward] if score @s robotMoving matches 1.. at @s run tp @s ^ ^ ^0.1
execute as @e[type=armor_stand,tag=robot,tag=moving,tag=active] if entity @e[type=armor_stand,tag=spawn,tag=fastforward] if score @s robotMoving matches 1.. run scoreboard players remove @s robotMoving 1
execute as @e[type=armor_stand,tag=robot,tag=moving,tag=active] if entity @e[type=armor_stand,tag=spawn,tag=fastforward] if score @s robotMoving matches 1.. at @s run tp @s ^ ^ ^0.1
execute as @e[type=armor_stand,tag=robot,tag=moving,tag=active] if entity @e[type=armor_stand,tag=spawn,tag=fastforward] if score @s robotMoving matches 1.. run scoreboard players remove @s robotMoving 1
execute as @e[type=armor_stand,tag=robot,tag=moving,tag=active] if entity @e[type=armor_stand,tag=spawn,tag=fastforward] if score @s robotMoving matches 1.. at @s run tp @s ^ ^ ^0.1
execute as @e[type=armor_stand,tag=robot,tag=moving,tag=active] if entity @e[type=armor_stand,tag=spawn,tag=fastforward] if score @s robotMoving matches 1.. run scoreboard players remove @s robotMoving 1