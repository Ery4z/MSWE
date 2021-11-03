###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0] run scoreboard players add @s eventTimer 0
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=..49}] run scoreboard players add @s eventTimer 1

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run spawnpoint @a -52 126 53 0

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -41 128.5 78 {Tags:["hologram","level_13"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -30 128.5 89 {Tags:["hologram","level_13"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -30 128.5 67 {Tags:["hologram","level_13"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:83}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -19 128.5 78 {Tags:["hologram","level_13"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:86}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -33 128 84.0 {Tags:["hologram","level_13"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:23}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -26 128 77.0 {Tags:["hologram","level_13"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:32}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -35 126 78 {Tags:["robot_prop","level_13"],Rotation:[-90.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -21 126 69 {Tags:["hint","level_13"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run scoreboard players set timesStopped stopCounter 0

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -33 126 82 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:basalt",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -33 126 78 {Pose:{RightArm:[0f,0f,0f]},Tags:["crafter","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:5}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -33 128.125 78 {Pose:{RightArm:[0f,0f,0f]},Tags:["crafter_display","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -26 126 78 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -31 127 91 -29 127 91 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -31 128 91 -29 129 91 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone -35 122 73 -25 122 83 -35 126 73

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=30}] run particle minecraft:cloud -52 127.0 49 1 0 0 0.05 50
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=30}] run playsound minecraft:block.fire.extinguish block @a -52 128 49 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -53 127 49 -51 127 49 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -53 128 49 -51 128 49 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -53 128 49 -51 128 49 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -53 129 49 -51 129 49 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=50}] run fill -53 129 49 -51 129 49 minecraft:air

execute as @e[type=armor_stand,tag=blockswap,x=-56,y=126,z=24,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-56,y=126,z=24,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=-56,y=126,z=40,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-56,y=126,z=40,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=-48,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-48,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=!magma_block_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=crafter,tag=!magma_block_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data modify entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] ArmorItems set from entity @s ArmorItems
execute as @e[type=armor_stand,tag=crafter,tag=!magma_block_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add block_stored
execute as @e[type=armor_stand,tag=crafter,tag=!magma_block_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add magma_block_stored
execute as @e[type=armor_stand,tag=crafter,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=!cobblestone_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=crafter,tag=!cobblestone_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data modify entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] ArmorItems set from entity @s ArmorItems
execute as @e[type=armor_stand,tag=crafter,tag=!cobblestone_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add block_stored
execute as @e[type=armor_stand,tag=crafter,tag=!cobblestone_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add cobblestone_stored
execute as @e[type=armor_stand,tag=crafter,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=!smooth_stone_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=crafter,tag=!smooth_stone_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data modify entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] ArmorItems set from entity @s ArmorItems
execute as @e[type=armor_stand,tag=crafter,tag=!smooth_stone_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add block_stored
execute as @e[type=armor_stand,tag=crafter,tag=!smooth_stone_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add smooth_stone_stored
execute as @e[type=armor_stand,tag=crafter,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] run data merge entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] run particle minecraft:wax_off ~ ~1.2 ~ 0.2 0.2 0.2 2 25 force
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] run playsound minecraft:block.anvil.land block @a -64 127 32 1 1.5
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove block_stored
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove magma_block_stored

execute as @e[type=armor_stand,tag=crafter,tag=cobblestone_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] run data merge entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=crafter,tag=cobblestone_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] run particle minecraft:wax_off ~ ~1.2 ~ 0.2 0.2 0.2 2 25 force
execute as @e[type=armor_stand,tag=crafter,tag=cobblestone_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] run playsound minecraft:block.anvil.land block @a -64 127 32 1 1.5
execute as @e[type=armor_stand,tag=crafter,tag=cobblestone_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}
execute as @e[type=armor_stand,tag=crafter,tag=cobblestone_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove block_stored
execute as @e[type=armor_stand,tag=crafter,tag=cobblestone_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove cobblestone_stored

execute as @e[type=armor_stand,tag=crafter,tag=smooth_stone_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove block_stored
execute as @e[type=armor_stand,tag=crafter,tag=smooth_stone_stored,x=-64,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove smooth_stone_stored

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=49}] run function code:comms/comms_6

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=..50}] run particle minecraft:lava -97 123 17 0 1.5 0 1 5 force
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=..50}] run particle minecraft:happy_villager -97 124 17 0 2 0 0 50 force

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1..52}] run execute as @a[tag=has_fuse] unless entity @s[nbt={Inventory:[{id:"minecraft:poisonous_potato"}]}] run clear @s poisonous_potato
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1..52}] run execute as @a[tag=has_fuse] unless entity @s[nbt={Inventory:[{id:"minecraft:poisonous_potato"}]}] run item replace entity @s hotbar.4 with poisonous_potato{CustomModelData:80,display:{Name:'[{"text":"45kA Fuse","italic":false,"color":"gold"}]',Lore:['[{"text":"Can be used to replace a bad fuse.","color":"white"}]']},Unbreakable:1,HideFlags:4}

execute unless entity @e[tag=new_fuse,nbt={HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:80}},{}]}] as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=50..51}] run scoreboard players add @s eventTimer 1
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -96 126 28 -100 129 26 minecraft:blue_ice replace minecraft:sea_lantern
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -98 127 26 -98 127 27 minecraft:gold_block replace minecraft:redstone_block
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=51}] run setblock -97 127 17 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=51}] run setblock -97 140 18 minecraft:gray_stained_glass_pane
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=51}] run playsound minecraft:block.beacon.deactivate block @a -98 128 24 1.5 1
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=51}] at @e[tag=new_fuse] run tag @p add has_fuse

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=51..52}] run clear @a[tag=!has_fuse] poisonous_potato
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=51..100}] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:poisonous_potato"}}]

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=..52}] run particle minecraft:smoke -52 127.5 87.0 0.1 0.1 0.1 0 1 force
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=..52}] run particle minecraft:crit -52 127.5 87.0 0.1 0.1 0.1 0.3 1 force

execute if entity @e[tag=replacement_fuse,nbt={HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:80}},{}]}] as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=52..79}] run scoreboard players add @s eventTimer 1
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=53}] run kill @e[tag=broken_fuse]
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=53}] run particle minecraft:firework -52 127.5 87.0 0.1 0.1 0.1 0.1 25 force
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=53}] run playsound minecraft:block.beacon.activate block @a -52 127 87 1.5 1
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=53}] run setblock -52 127 89 minecraft:redstone_block
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=53}] run advancement grant @a[advancements={code:story/electrifying=false}] only code:story/electrifying
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=53}] run kill @e[tag=dynamic_hologram]
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=53}] run summon minecraft:armor_stand -45 128.5 78 {Tags:["hologram","level_12","dynamic_hologram"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=53}] run spawnpoint @a -39 126 78 -90
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=53}] run tag @a remove has_fuse
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=53..100}] run clear @a poisonous_potato

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=60}] run particle minecraft:cloud -43 127.0 78 0 0 1 0.05 50
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=60}] run playsound minecraft:block.fire.extinguish block @a -43 128 78 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -43 127 77 -43 127 79 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -43 128 77 -43 128 79 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -43 128 77 -43 128 79 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -43 129 77 -43 129 79 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=80}] run fill -43 129 77 -43 129 79 minecraft:air

execute as @a unless entity @s[x=-42,y=126,z=66,dx=24,dy=12,dz=24] run tag @s add not_in_room
execute as @a if entity @s[x=-40,y=126,z=68,dx=20,dy=12,dz=20] run tag @s remove not_in_room

execute unless entity @a[tag=not_in_room] as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=80..99}] run scoreboard players add @s eventTimer 1
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=81}] run playsound minecraft:block.fire.extinguish block @a -43 128 78 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=81}] run fill -43 129 77 -43 129 79 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=81}] run fill -43 127 77 -43 128 79 minecraft:barrier
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=90}] run fill -43 128 77 -43 128 79 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=90}] run fill -43 129 77 -43 129 79 minecraft:iron_block
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run fill -43 127 77 -43 127 79 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run fill -43 128 77 -43 128 79 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run scoreboard players set progressTracker advProgress 37

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -26 124 80 {Tags:["modifier","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -28 124 74 {Tags:["modifier","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -28 124 78 {Tags:["modifier","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -28 124 82 {Tags:["modifier","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -30 124 76 {Tags:["modifier","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -30 124 78 {Tags:["modifier","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -32 124 78 {Tags:["modifier","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -34 124 78 {Tags:["modifier","level_13"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run kill @e[type=armor_stand,tag=robot_prop]
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run summon minecraft:armor_stand -35 126 78 {Tags:["spawn","level_13"],Rotation:[-90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run tag @e[type=armor_stand,tag=level_13,tag=spawn] add respawn
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run scoreboard players set gameTag tagList 1
execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run tag @a remove testing_solution

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run scoreboard players set musicTag tagList 2

execute as @e[type=armor_stand,tag=spawn,x=-47,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=100}] run kill @e[tag=level_12]

#rotate scientist
execute as @e[tag=scientist_spy] at @s run tp @s ~ ~ ~ facing entity @p[sort=nearest,x=-94,y=126,z=43,dx=14,dy=7,dz=8]

execute as @e[tag=scientist_mine_1] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_mine_1] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -85 126 1

execute as @e[tag=scientist_mine_2] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_mine_2] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -84.0 126 22.0

#achievement
execute if block -55 121 9 minecraft:orange_candle_cake[lit=false] run advancement grant @a[advancements={code:secrets/cake2=false}] only code:secrets/cake2