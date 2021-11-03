###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###HUFTER PROTECTION--------------------------------------------------------------------------------------

#detect if player breaks component
execute as @a[scores={minedRepeater=1..}] run tag @s add broken
execute as @a[scores={minedComparator=1..}] run tag @s add broken

#ADJUST: clone play area to bonus area
execute if entity @a[tag=broken] run clone 8 58 141 42 60 205 8 54 141

#ADJUST: clone original area to play area (masked)
execute if entity @a[tag=broken] run clone 8 50 141 42 52 205 8 58 141 masked

#ADJUST: clone bonus area to play area (masked)
execute if entity @a[tag=broken] run clone 8 54 141 42 56 205 8 58 141 masked

#display message to player
title @a[tag=broken] actionbar {"text":"You can't break these!","color":"red"}

#reset player's breaking score
scoreboard players set @a[scores={minedRepeater=1..}] minedRepeater 0
scoreboard players set @a[scores={minedComparator=1..}] minedComparator 0

execute as @a[tag=broken] run tag @s remove broken

###PLAYER IN PLAY AREA DETECTION--------------------------------------------------------------------------

#ADJUST: detect if player is in play area
execute as @a[tag=!in-game] if entity @s[x=7,y=58,z=140,dx=36,dy=25,dz=71] run tag @s add in-game

#ADJUST: detect if player is out of play area
execute as @a[tag=in-game] unless entity @s[x=7,y=58,z=140,dx=36,dy=25,dz=71] run tag @s remove in-game

###PLAYER OUT OF BOUNDS PROTECTION------------------------------------------------------------------------

execute at @e[type=armor_stand,tag=spawn,tag=!finished] as @a[tag=!admin] unless entity @s[x=1,y=58,z=134,dx=48,dy=25,dz=79] run title @s actionbar {"text":"You went out of bounds!","color":"red"}
execute at @e[type=armor_stand,tag=spawn,tag=!finished] as @a[tag=!admin] unless entity @s[x=1,y=58,z=134,dx=48,dy=25,dz=79] run advancement grant @s[advancements={code:secrets/outofbounds=false}] only code:secrets/outofbounds
execute at @e[type=armor_stand,tag=spawn,tag=!finished] as @a[tag=!admin] unless entity @s[x=1,y=58,z=134,dx=48,dy=25,dz=79] run tp @s 25 58 136 0 0

###PLAYER START/RESET BUTTONS-----------------------------------------------------------------------------

#ADJUST: start (clone play area to bonus area)
execute as @e[type=armor_stand,tag=spawn,tag=start_level] run clone 8 58 141 42 60 205 8 54 141
execute as @e[type=armor_stand,tag=spawn,tag=start_level] run tag @s remove start_level

#ADJUST: stop (clone bonus area to play area (masked))
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run clone 8 54 141 42 56 205 8 58 141 masked

execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=blockswap,x=36,y=58,z=143,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=blockswap,x=18,y=58,z=143,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=blockswap,x=24,y=58,z=155,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=blockswap,x=10,y=58,z=155,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=blockswap,x=24,y=59,z=159,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=blockswap,x=10,y=59,z=159,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=crafter,x=20,y=59,z=166,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=crafter_display,x=20,y=61.125,z=166,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=blockswap,x=20,y=59,z=172,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=blockswap,x=10,y=59,z=172,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=blockswap,x=20,y=60,z=176,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=hopper_display,x=10,y=62.125,z=176,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=blockswap,x=25,y=60,z=205,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run tag @s remove stop_level

#ADJUST: reset (clone original area to play area)
execute as @a[tag=reset_level] run clone 8 50 141 42 52 205 8 58 141
execute as @a[tag=reset_level] at @e[type=minecraft:armor_stand,tag=modifier] run particle minecraft:cloud ~ ~2.1 ~ 0.1 0 0.1 0.01 10 force
execute as @a[tag=reset_level] run scoreboard players set @s resetCooldown 0
execute as @a[tag=reset_level] run tag @a remove reset_level

###HINT SYSTEM

#change hint projector appearance
execute as @e[tag=hint,nbt={HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}]}] at @s if score timesStopped stopCounter matches 3.. run particle minecraft:firework ~ ~2 ~ 0 0 0 0.05 20 force
execute as @e[tag=hint,nbt={HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}]}] at @s if score timesStopped stopCounter matches 3.. run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 2 2
execute as @e[tag=hint,nbt={HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}]}] if score timesStopped stopCounter matches 3.. run data merge entity @s {HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:7}},{}]}

#ADJUST: hint button behaviour
execute if block 5 58 139 warped_button[powered=true] if score timesStopped stopCounter matches 3.. if entity @e[tag=hint,tag=hint_taken] run tellraw @a ["",{"text":"Hint:","color":"red"},{"text":" you can click ","color":"white"},{"text":"this link","color":"gold","clickEvent":{"action":"open_url","value":"https://youtu.be/PWWkJf2eTJY"}},{"text":" to view the solution of this level.","color":"white"}]
execute if block 5 58 139 warped_button[powered=true] if score timesStopped stopCounter matches 3.. if entity @e[tag=hint,tag=hint_taken] run tag @e[tag=hint,tag=hint_taken] add hint_add
execute if block 5 58 139 warped_button[powered=true] if score timesStopped stopCounter matches 3.. if entity @e[tag=hint,tag=!hint_taken] run tellraw @a ["",{"text":"Warning:","color":"red"},{"text":" pressing this button ","color":"white"},{"text":"again","color":"gold"},{"text":" will give you the solution for this level. Are you sure you want to use a hint?","color":"white"}]
execute if block 5 58 139 warped_button[powered=true] if score timesStopped stopCounter matches 3.. if entity @e[tag=hint,tag=!hint_taken] run tag @e[tag=hint,tag=!hint_taken] add hint_taken
execute if block 5 58 139 warped_button[powered=true] run setblock 5 58 139 minecraft:warped_button[face=wall,facing=south,powered=false]

execute if block 6 58 138 warped_button[powered=true] if score timesStopped stopCounter matches 3.. if entity @e[tag=hint,tag=hint_taken] run tellraw @a ["",{"text":"Hint:","color":"red"},{"text":" you can click ","color":"white"},{"text":"this link","color":"gold","clickEvent":{"action":"open_url","value":"https://youtu.be/PWWkJf2eTJY"}},{"text":" to view the solution of this level.","color":"white"}]
execute if block 6 58 138 warped_button[powered=true] if score timesStopped stopCounter matches 3.. if entity @e[tag=hint,tag=hint_taken] run tag @e[tag=hint,tag=hint_taken] add hint_add
execute if block 6 58 138 warped_button[powered=true] if score timesStopped stopCounter matches 3.. if entity @e[tag=hint,tag=!hint_taken] run tellraw @a ["",{"text":"Warning:","color":"red"},{"text":" pressing this button ","color":"white"},{"text":"again","color":"gold"},{"text":" will give you the solution for this level. Are you sure you want to use a hint?","color":"white"}]
execute if block 6 58 138 warped_button[powered=true] if score timesStopped stopCounter matches 3.. if entity @e[tag=hint,tag=!hint_taken] run tag @e[tag=hint,tag=!hint_taken] add hint_taken
execute if block 6 58 138 warped_button[powered=true] run setblock 6 58 138 minecraft:warped_button[face=wall,facing=east,powered=false]

###LEVEL COMPLETION REQUIREMENTS--------------------------------------------------------------------------

###---------------SCANNING

execute as @e[type=armor_stand,tag=blockswap,x=36,y=58,z=143,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..1.9] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=36,y=58,z=143,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..1.9] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}

execute as @e[type=armor_stand,tag=blockswap,x=24,y=58,z=155,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}] at @s if entity @e[tag=robot,tag=packed_ice_scanned,distance=..2.9] unless entity @e[tag=robot,distance=..1.9] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=24,y=58,z=155,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}] at @s if entity @e[tag=robot,tag=packed_ice_scanned,distance=..2.9] unless entity @e[tag=robot,distance=..1.9] run data merge entity @e[type=armor_stand,tag=blockswap,x=24,y=59,z=159,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]},limit=1] {ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=24,y=58,z=155,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}] at @s if entity @e[tag=robot,tag=packed_ice_scanned,distance=..2.9] unless entity @e[tag=robot,distance=..1.9] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=blockswap,x=18,y=58,z=143,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..1.9] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=18,y=58,z=143,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..1.9] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}

execute as @e[type=armor_stand,tag=blockswap,x=10,y=58,z=155,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] at @s if entity @e[tag=robot,tag=ancient_debris_scanned,distance=..2.9] unless entity @e[tag=robot,distance=..1.9] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=10,y=58,z=155,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] at @s if entity @e[tag=robot,tag=ancient_debris_scanned,distance=..2.9] unless entity @e[tag=robot,distance=..1.9] run data merge entity @e[type=armor_stand,tag=blockswap,x=10,y=59,z=159,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]},limit=1] {ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=10,y=58,z=155,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] at @s if entity @e[tag=robot,tag=ancient_debris_scanned,distance=..2.9] unless entity @e[tag=robot,distance=..1.9] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=robot,tag=!carrying] at @s unless entity @e[tag=blockswap,distance=..3] run tag @s remove ancient_debris_scanned
execute as @e[type=armor_stand,tag=robot,tag=!carrying] at @s unless entity @e[tag=blockswap,distance=..3] run tag @s remove packed_ice_scanned

execute as @e[type=armor_stand,tag=robot,tag=carrying,nbt={ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]},tag=!packed_ice_scanned,x=24,y=58,z=150,dx=0,dy=0,dz=0] run playsound minecraft:fx.scanned block @a 24 59 150 1 1
execute as @e[type=armor_stand,tag=robot,tag=carrying,nbt={ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]},tag=!packed_ice_scanned,x=24,y=58,z=150,dx=0,dy=0,dz=0] run tag @s add packed_ice_scanned

execute as @e[type=armor_stand,tag=robot,tag=carrying,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]},tag=!ancient_debris_scanned,x=24,y=58,z=150,dx=0,dy=0,dz=0] run playsound minecraft:fx.scanned block @a 24 59 150 1 1
execute as @e[type=armor_stand,tag=robot,tag=carrying,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]},tag=!ancient_debris_scanned,x=24,y=58,z=150,dx=0,dy=0,dz=0] run tag @s add ancient_debris_scanned

###---------------CRAFTING

execute as @e[type=armor_stand,tag=blockswap,x=20,y=59,z=172,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:netherite_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=20,y=59,z=172,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:netherite_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run data merge entity @e[type=armor_stand,tag=blockswap,x=20,y=60,z=176,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]},limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}
execute as @e[type=armor_stand,tag=blockswap,x=20,y=59,z=172,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:netherite_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=blockswap,x=10,y=59,z=172,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=10,y=59,z=172,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run data merge entity @e[type=armor_stand,tag=hopper_display,x=10,y=62.125,z=176,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]},limit=1] {ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=10,y=59,z=172,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=!ancient_debris_stored,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=crafter,tag=!ancient_debris_stored,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run data modify entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] ArmorItems set from entity @s ArmorItems
execute as @e[type=armor_stand,tag=crafter,tag=!ancient_debris_stored,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run tag @s add block_stored
execute as @e[type=armor_stand,tag=crafter,tag=!ancient_debris_stored,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run tag @s add ancient_debris_stored
execute as @e[type=armor_stand,tag=crafter,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=!netherite_block_stored,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:netherite_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=crafter,tag=!netherite_block_stored,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:netherite_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run data modify entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] ArmorItems set from entity @s ArmorItems
execute as @e[type=armor_stand,tag=crafter,tag=!netherite_block_stored,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:netherite_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run tag @s add block_stored
execute as @e[type=armor_stand,tag=crafter,tag=!netherite_block_stored,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:netherite_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run tag @s add netherite_block_stored
execute as @e[type=armor_stand,tag=crafter,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:netherite_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..1.9] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=ancient_debris_stored,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] run data merge entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=crafter,tag=ancient_debris_stored,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] run particle minecraft:wax_off ~ ~1.2 ~ 0.2 0.2 0.2 2 25 force
execute as @e[type=armor_stand,tag=crafter,tag=ancient_debris_stored,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] run playsound minecraft:block.anvil.land block @a 20 60 166 1 1.5
execute as @e[type=armor_stand,tag=crafter,tag=ancient_debris_stored,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:netherite_block",Count:1b}]}
execute as @e[type=armor_stand,tag=crafter,tag=ancient_debris_stored,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove block_stored
execute as @e[type=armor_stand,tag=crafter,tag=ancient_debris_stored,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove ancient_debris_stored

execute as @e[type=armor_stand,tag=crafter,tag=netherite_block_stored,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove block_stored
execute as @e[type=armor_stand,tag=crafter,tag=netherite_block_stored,x=20,y=59,z=166,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove netherite_block_stored

###---------------LIQUIDS

execute as @e[type=armor_stand,tag=blockswap,x=25,y=60,z=205,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] at @s unless entity @e[tag=robot,distance=..1.9] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=25,y=60,z=205,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] at @s unless entity @e[tag=robot,distance=..1.9] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

#-----------------RED

execute as @e[type=armor_stand,tag=hopper,x=10,y=60,z=189,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run particle minecraft:rain ~ ~1.2 ~ 0.2 0.2 0.2 0 25 force
execute as @e[type=armor_stand,tag=hopper,x=10,y=60,z=189,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run playsound minecraft:item.bucket.fill block @a 10 61 189 1 1
execute as @e[type=armor_stand,tag=hopper,x=10,y=60,z=189,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:92}}]}

execute as @e[type=armor_stand,tag=hopper,x=10,y=60,z=189,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:95}}]}] run particle minecraft:rain ~ ~1.2 ~ 0.2 0.2 0.2 0 25 force
execute as @e[type=armor_stand,tag=hopper,x=10,y=60,z=189,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:95}}]}] run playsound minecraft:item.bucket.fill block @a 10 61 189 1 1
execute as @e[type=armor_stand,tag=hopper,x=10,y=60,z=189,dx=0,dy=0,dz=0] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:95}}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}

#-----------------BLUE

execute as @e[type=armor_stand,tag=hopper,x=10,y=60,z=176,dx=0,dy=0,dz=0] at @s if entity @e[type=armor_stand,tag=hopper_display,x=10,y=62.125,z=176,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b}]}] if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run particle minecraft:rain ~ ~1.2 ~ 0.2 0.2 0.2 0 25 force
execute as @e[type=armor_stand,tag=hopper,x=10,y=60,z=176,dx=0,dy=0,dz=0] at @s if entity @e[type=armor_stand,tag=hopper_display,x=10,y=62.125,z=176,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b}]}] if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run playsound minecraft:item.bucket.fill block @a 10 61 176 1 1
execute as @e[type=armor_stand,tag=hopper,x=10,y=60,z=176,dx=0,dy=0,dz=0] at @s if entity @e[type=armor_stand,tag=hopper_display,x=10,y=62.125,z=176,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b}]}] if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:90}}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:95}}]}
execute as @e[type=armor_stand,tag=hopper,x=10,y=60,z=176,dx=0,dy=0,dz=0] at @s if entity @e[type=armor_stand,tag=hopper_display,x=10,y=62.125,z=176,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b}]}] if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:95}}]}] run data merge entity @e[type=armor_stand,tag=hopper_display,x=10,y=62.125,z=176,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b}]},limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=hopper,x=10,y=60,z=176,dx=0,dy=0,dz=0] at @s if entity @e[type=armor_stand,tag=hopper_display,x=10,y=62.125,z=176,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b}]}] if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:92}}]}] run particle minecraft:rain ~ ~1.2 ~ 0.2 0.2 0.2 0 25 force
execute as @e[type=armor_stand,tag=hopper,x=10,y=60,z=176,dx=0,dy=0,dz=0] at @s if entity @e[type=armor_stand,tag=hopper_display,x=10,y=62.125,z=176,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b}]}] if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:92}}]}] run playsound minecraft:item.bucket.fill block @a 10 61 176 1 1
execute as @e[type=armor_stand,tag=hopper,x=10,y=60,z=176,dx=0,dy=0,dz=0] at @s if entity @e[type=armor_stand,tag=hopper_display,x=10,y=62.125,z=176,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b}]}] if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:92}}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}
execute as @e[type=armor_stand,tag=hopper,x=10,y=60,z=176,dx=0,dy=0,dz=0] at @s if entity @e[type=armor_stand,tag=hopper_display,x=10,y=62.125,z=176,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b}]}] if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] run data merge entity @e[type=armor_stand,tag=hopper_display,x=10,y=62.125,z=176,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b}]},limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

#-----------------FINISH

execute as @e[type=armor_stand,tag=blockswap,x=25,y=60,z=205,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run playsound minecraft:fx.completed record @a ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=blockswap,x=25,y=60,z=205,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run title @a times 20 100 20
execute as @e[type=armor_stand,tag=blockswap,x=25,y=60,z=205,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run title @a subtitle {"text":"Final track completed!","color":"gold"}
execute as @e[type=armor_stand,tag=blockswap,x=25,y=60,z=205,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run title @a title {"text":""}

execute as @e[type=armor_stand,tag=blockswap,x=25,y=60,z=205,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] at @e[type=armor_stand,tag=robot] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run particle minecraft:firework ~ ~1 ~ 0 0 0 0.1 40 force

execute as @e[type=armor_stand,tag=blockswap,x=25,y=60,z=205,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] if score replayTag tagList matches 0 run scoreboard players set gameTag tagList 0
execute as @e[type=armor_stand,tag=blockswap,x=25,y=60,z=205,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] if score replayTag tagList matches 0 run tag @a remove fastforward
execute as @e[type=armor_stand,tag=blockswap,x=25,y=60,z=205,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] if score replayTag tagList matches 0 run tag @e[type=armor_stand,tag=spawn] remove fastforward
execute as @e[type=armor_stand,tag=blockswap,x=25,y=60,z=205,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] if score replayTag tagList matches 0 if entity @e[tag=hint,tag=hint_add] run scoreboard players add hints hintsTaken 1
execute as @e[type=armor_stand,tag=blockswap,x=25,y=60,z=205,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] if score replayTag tagList matches 0 run advancement grant @a[advancements={code:story/savetheplanet=false}] only code:story/savetheplanet

execute as @e[type=armor_stand,tag=blockswap,x=25,y=60,z=205,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] if score replayTag tagList matches 0 run function code:credits/credits_loop

execute as @e[type=armor_stand,tag=blockswap,x=25,y=60,z=205,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] if score replayTag tagList matches 1 run tellraw @a {"text":"You finished a level in replay mode. Use the 'Exit level' button in your hotbar to return to the level selection area.","italic":true,"color":"gray"}

execute as @e[type=armor_stand,tag=blockswap,x=25,y=60,z=205,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:93}}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run tag @e[type=armor_stand,tag=spawn] add finished