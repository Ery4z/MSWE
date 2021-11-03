###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0] run scoreboard players add @s eventTimer 0
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=..49}] run scoreboard players add @s eventTimer 1

execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run spawnpoint @a -18 126 28 90

execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -18 128.5 39 {Tags:["hologram","level_11"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:83}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -34 128.5 39 {Tags:["hologram","level_11"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:88}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -15 128.5 28 {Tags:["hologram","level_11"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -37 128.5 28 {Tags:["hologram","level_11"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -22 128 26.0 {Tags:["hologram","level_11"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:21}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -30 128 30.0 {Tags:["hologram","level_11"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:34}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -22 128 31.0 {Tags:["hologram","level_11"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:27}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -21 126 30 {Tags:["robot_prop","level_11"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -35 126 19 {Tags:["hint","level_11"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run scoreboard players set timesStopped stopCounter 0

execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -22 126 32 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_11"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -22 126 24 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_11"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -26 126 28 {Pose:{RightArm:[0f,0f,0f]},Tags:["crafter","level_11"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:5}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -26 128.125 28 {Pose:{RightArm:[0f,0f,0f]},Tags:["crafter_display","level_11"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -30 126 28 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_11"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -39 127 29 -39 127 27 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -39 128 29 -39 129 27 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone -31 122 23 -21 122 33 -31 126 23

execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=30}] run particle minecraft:cloud -13 127.0 28 0 0 1 0.05 50
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=30}] run playsound minecraft:block.fire.extinguish block @a -13 128 28 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -13 127 29 -13 127 27 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -13 128 29 -13 128 27 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -13 128 29 -13 128 27 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -13 129 29 -13 129 27 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=50}] run fill -13 129 29 -13 129 27 minecraft:air

execute as @e[type=armor_stand,tag=blockswap,x=-2,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-2,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=4,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:netherite_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=4,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:netherite_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,x=-3,y=126,z=26,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=crafter,x=-3,y=126,z=26,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data modify entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] ArmorItems set from entity @s ArmorItems
execute as @e[type=armor_stand,tag=crafter,x=-3,y=126,z=26,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add block_stored
execute as @e[type=armor_stand,tag=crafter,x=-3,y=126,z=26,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=block_stored,x=-3,y=126,z=26,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1] run data merge entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=crafter,tag=block_stored,x=-3,y=126,z=26,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:netherite_block",Count:1b}]}
execute as @e[type=armor_stand,tag=crafter,tag=block_stored,x=-3,y=126,z=26,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1] run particle minecraft:wax_off ~ ~1.2 ~ 0.2 0.2 0.2 2 25 force
execute as @e[type=armor_stand,tag=crafter,tag=block_stored,x=-3,y=126,z=26,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1] run playsound minecraft:block.anvil.land block @a -3 127 26 1 1.5
execute as @e[type=armor_stand,tag=crafter,tag=block_stored,x=-3,y=126,z=26,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove block_stored

execute as @a unless entity @s[x=-38,y=126,z=16,dx=24,dy=12,dz=24] run tag @s add not_in_room
execute as @a if entity @s[x=-36,y=126,z=18,dx=20,dy=12,dz=20] run tag @s remove not_in_room

execute unless entity @a[tag=not_in_room] as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=50..69}] run scoreboard players add @s eventTimer 1
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=51}] run playsound minecraft:block.fire.extinguish block @a -13 128 28 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -13 129 29 -13 129 27 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -13 127 29 -13 128 27 minecraft:barrier
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -13 128 29 -13 128 27 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -13 129 29 -13 129 27 minecraft:iron_block
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -13 127 29 -13 127 27 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -13 128 29 -13 128 27 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set progressTracker advProgress 33

execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -22 124 28 {Tags:["modifier","level_11"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -22 124 30 {Tags:["modifier","level_11"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -24 124 24 {Tags:["modifier","level_11"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -24 124 26 {Tags:["modifier","level_11"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -24 124 32 {Tags:["modifier","level_11"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -26 124 28 {Tags:["modifier","level_11"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -28 124 28 {Tags:["modifier","level_11"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[type=armor_stand,tag=robot_prop]
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -21 126 30 {Tags:["spawn","level_11"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @e[type=armor_stand,tag=level_11,tag=spawn] add respawn
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set gameTag tagList 1
execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @a remove testing_solution

execute as @e[type=armor_stand,tag=spawn,x=5,y=126,z=28,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[tag=level_10]