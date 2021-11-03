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
execute if entity @a[tag=broken] run clone -103 126 99 -85 126 117 -103 124 99

#ADJUST: clone original area to play area (masked)
execute if entity @a[tag=broken] run clone -103 122 99 -85 122 117 -103 126 99 masked

#ADJUST: clone bonus area to play area (masked)
execute if entity @a[tag=broken] run clone -103 124 99 -85 124 117 -103 126 99 masked

#display message to player
title @a[tag=broken] actionbar {"text":"You can't break these!","color":"red"}

#reset player's breaking score
scoreboard players set @a[scores={minedRepeater=1..}] minedRepeater 0
scoreboard players set @a[scores={minedComparator=1..}] minedComparator 0

execute as @a[tag=broken] run tag @s remove broken

###PLAYER IN PLAY AREA DETECTION--------------------------------------------------------------------------

#ADJUST: detect if player is in play area
execute as @a[tag=!in-game] if entity @s[x=-104,y=126,z=98,dx=20,dy=12,dz=20] run tag @s add in-game

#ADJUST: detect if player is out of play area
execute as @a[tag=in-game] unless entity @s[x=-104,y=126,z=98,dx=20,dy=12,dz=20] run tag @s remove in-game

###PLAYER OUT OF BOUNDS PROTECTION------------------------------------------------------------------------

execute as @a[tag=!admin] unless entity @s[x=-110,y=126,z=92,dx=32,dy=12,dz=32] run title @s actionbar {"text":"You went out of bounds!","color":"red"}
execute as @a[tag=!admin] unless entity @s[x=-110,y=126,z=92,dx=32,dy=12,dz=32] run advancement grant @s[advancements={code:secrets/outofbounds=false}] only code:secrets/outofbounds
execute as @a[tag=!admin] unless entity @s[x=-110,y=126,z=92,dx=32,dy=12,dz=32] run tp @s -82 126 112 90 0

###PLAYER START/RESET BUTTONS-----------------------------------------------------------------------------

#ADJUST: start (clone play area to bonus area)
execute as @e[type=armor_stand,tag=spawn,tag=start_level] run clone -103 126 99 -85 126 117 -103 124 99
execute as @e[type=armor_stand,tag=spawn,tag=start_level] run tag @s remove start_level

#ADJUST: stop (clone bonus area to play area (masked))
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run clone -103 124 99 -85 124 117 -103 126 99 masked
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=blockswap,x=-92,y=126,z=110,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=blockswap,x=-99,y=126,z=112,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=blockswap,x=-100,y=126,z=102,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=crafter,x=-94,y=126,z=108,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=crafter_display,x=-94,y=128.125,z=108,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run tag @s remove stop_level

#ADJUST: reset (clone original area to play area)
execute as @a[tag=reset_level] run clone -103 122 99 -85 122 117 -103 126 99
execute as @a[tag=reset_level] at @e[type=minecraft:armor_stand,tag=modifier] run particle minecraft:cloud ~ ~2.1 ~ 0.1 0 0.1 0.01 10 force
execute as @a[tag=reset_level] run scoreboard players set @s resetCooldown 0
execute as @a[tag=reset_level] run tag @a remove reset_level

###HINT SYSTEM

#change hint projector appearance
execute as @e[tag=hint,nbt={HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}]}] at @s if score timesStopped stopCounter matches 3.. run particle minecraft:firework ~ ~2 ~ 0 0 0 0.05 20 force
execute as @e[tag=hint,nbt={HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}]}] at @s if score timesStopped stopCounter matches 3.. run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 2 2
execute as @e[tag=hint,nbt={HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}]}] if score timesStopped stopCounter matches 3.. run data merge entity @s {HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:7}},{}]}

#ADJUST: hint button behaviour
execute if block -107 126 96 warped_button[powered=true] if score timesStopped stopCounter matches 3.. if entity @e[tag=hint,tag=hint_taken] run tellraw @a ["",{"text":"Hint:","color":"red"},{"text":" you can click ","color":"white"},{"text":"this link","color":"gold","clickEvent":{"action":"open_url","value":"https://youtu.be/wzRBte2r2FQ"}},{"text":" to view the solution of this level.","color":"white"}]
execute if block -107 126 96 warped_button[powered=true] if score timesStopped stopCounter matches 3.. if entity @e[tag=hint,tag=hint_taken] run tag @e[tag=hint,tag=hint_taken] add hint_add
execute if block -107 126 96 warped_button[powered=true] if score timesStopped stopCounter matches 3.. if entity @e[tag=hint,tag=!hint_taken] run tellraw @a ["",{"text":"Warning:","color":"red"},{"text":" pressing this button ","color":"white"},{"text":"again","color":"gold"},{"text":" will give you the solution for this level. Are you sure you want to use a hint?","color":"white"}]
execute if block -107 126 96 warped_button[powered=true] if score timesStopped stopCounter matches 3.. if entity @e[tag=hint,tag=!hint_taken] run tag @e[tag=hint,tag=!hint_taken] add hint_taken
execute if block -107 126 96 warped_button[powered=true] run setblock -107 126 96 minecraft:warped_button[face=wall,facing=south,powered=false]

execute if block -106 126 95 warped_button[powered=true] if score timesStopped stopCounter matches 3.. if entity @e[tag=hint,tag=hint_taken] run tellraw @a ["",{"text":"Hint:","color":"red"},{"text":" you can click ","color":"white"},{"text":"this link","color":"gold","clickEvent":{"action":"open_url","value":"https://youtu.be/wzRBte2r2FQ"}},{"text":" to view the solution of this level.","color":"white"}]
execute if block -106 126 95 warped_button[powered=true] if score timesStopped stopCounter matches 3.. if entity @e[tag=hint,tag=hint_taken] run tag @e[tag=hint,tag=hint_taken] add hint_add
execute if block -106 126 95 warped_button[powered=true] if score timesStopped stopCounter matches 3.. if entity @e[tag=hint,tag=!hint_taken] run tellraw @a ["",{"text":"Warning:","color":"red"},{"text":" pressing this button ","color":"white"},{"text":"again","color":"gold"},{"text":" will give you the solution for this level. Are you sure you want to use a hint?","color":"white"}]
execute if block -106 126 95 warped_button[powered=true] if score timesStopped stopCounter matches 3.. if entity @e[tag=hint,tag=!hint_taken] run tag @e[tag=hint,tag=!hint_taken] add hint_taken
execute if block -106 126 95 warped_button[powered=true] run setblock -106 126 95 minecraft:warped_button[face=wall,facing=east,powered=false]

###LEVEL COMPLETION REQUIREMENTS--------------------------------------------------------------------------

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

execute as @e[type=armor_stand,tag=blockswap,x=-100,y=126,z=102,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run playsound minecraft:fx.completed record @a ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=blockswap,x=-100,y=126,z=102,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run title @a times 20 100 20
execute as @e[type=armor_stand,tag=blockswap,x=-100,y=126,z=102,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run title @a subtitle {"text":"Track completed!","color":"gold"}
execute as @e[type=armor_stand,tag=blockswap,x=-100,y=126,z=102,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run title @a title {"text":""}

execute as @e[type=armor_stand,tag=blockswap,x=-100,y=126,z=102,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] at @e[type=armor_stand,tag=robot] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run particle minecraft:firework ~ ~1 ~ 0 0 0 0.1 40 force

execute as @e[type=armor_stand,tag=blockswap,x=-100,y=126,z=102,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] if score replayTag tagList matches 0 run scoreboard players set gameTag tagList 0
execute as @e[type=armor_stand,tag=blockswap,x=-100,y=126,z=102,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] if score replayTag tagList matches 0 run tag @a remove fastforward
execute as @e[type=armor_stand,tag=blockswap,x=-100,y=126,z=102,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] if score replayTag tagList matches 0 run tag @e[type=armor_stand,tag=spawn] remove fastforward
execute as @e[type=armor_stand,tag=blockswap,x=-100,y=126,z=102,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] if score replayTag tagList matches 0 if entity @e[tag=hint,tag=hint_add] run scoreboard players add hints hintsTaken 1
execute as @e[type=armor_stand,tag=blockswap,x=-100,y=126,z=102,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] if score replayTag tagList matches 0 run advancement grant @a[advancements={code:story/completemanufacturing=false}] only code:story/completemanufacturing

execute as @e[type=armor_stand,tag=blockswap,x=-100,y=126,z=102,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] if score replayTag tagList matches 0 run scoreboard players set progressTracker advProgress 45

execute as @e[type=armor_stand,tag=blockswap,x=-100,y=126,z=102,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] if score replayTag tagList matches 1 run tellraw @a {"text":"You finished a level in replay mode. Use the 'Exit level' button in your hotbar to return to the level selection area.","italic":true,"color":"gray"}

execute as @e[type=armor_stand,tag=blockswap,x=-100,y=126,z=102,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run tag @e[type=armor_stand,tag=spawn] add finished