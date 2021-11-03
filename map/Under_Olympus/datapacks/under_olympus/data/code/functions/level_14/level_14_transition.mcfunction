###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0] run scoreboard players add @s eventTimer 0
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=..49}] run scoreboard players add @s eventTimer 1

execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=1}] run spawnpoint @a -30 126 96 0

execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -19 128.5 104 {Tags:["hologram","level_14"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:83}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -30 128.5 115 {Tags:["hologram","level_14"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:87}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -30 128.5 93 {Tags:["hologram","level_14"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -41 128.5 104 {Tags:["hologram","level_14"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -27 128 101.0 {Tags:["hologram","level_14"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:33}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -29 128 106.0 {Tags:["hologram","level_14"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:29}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -25 126 102 {Tags:["robot_prop","level_14"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -21 126 113 {Tags:["hint","level_14"],Rotation:[0.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=1}] run scoreboard players set timesStopped stopCounter 0

execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -29 126 104 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_14"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -31 126 102 {Pose:{RightArm:[0f,0f,0f]},Tags:["crafter","level_14"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:5}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -31 128.125 102 {Pose:{RightArm:[0f,0f,0f]},Tags:["crafter_display","level_14"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -27 126 102 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_14"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -43 127 103 -43 127 105 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -43 128 103 -43 129 105 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone -35 122 99 -25 122 109 -35 126 99

execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=30}] run particle minecraft:cloud -30 127.0 91 1 0 0 0.05 50
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=30}] run playsound minecraft:block.fire.extinguish block @a -30 128 91 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -31 127 91 -29 127 91 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -31 128 91 -29 128 91 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -31 128 91 -29 128 91 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -31 129 91 -29 129 91 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=50}] run fill -31 129 91 -29 129 91 minecraft:air

execute as @e[type=armor_stand,tag=blockswap,x=-33,y=126,z=82,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-33,y=126,z=82,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:basalt",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=-26,y=126,z=78,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-26,y=126,z=78,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,x=-33,y=126,z=78,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:basalt",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=crafter,x=-33,y=126,z=78,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:basalt",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data modify entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] ArmorItems set from entity @s ArmorItems
execute as @e[type=armor_stand,tag=crafter,x=-33,y=126,z=78,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:basalt",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add block_stored
execute as @e[type=armor_stand,tag=crafter,x=-33,y=126,z=78,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:basalt",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=block_stored,x=-33,y=126,z=78,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1] run data merge entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=crafter,tag=block_stored,x=-33,y=126,z=78,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b}]}
execute as @e[type=armor_stand,tag=crafter,tag=block_stored,x=-33,y=126,z=78,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1] run particle minecraft:wax_off ~ ~1.2 ~ 0.2 0.2 0.2 2 25 force
execute as @e[type=armor_stand,tag=crafter,tag=block_stored,x=-33,y=126,z=78,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1] run playsound minecraft:block.anvil.land block @a -33 127 78 1 1.5
execute as @e[type=armor_stand,tag=crafter,tag=block_stored,x=-33,y=126,z=78,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove block_stored

execute as @a unless entity @s[x=-42,y=126,z=92,dx=24,dy=12,dz=24] run tag @s add not_in_room
execute as @a if entity @s[x=-40,y=126,z=94,dx=20,dy=12,dz=20] run tag @s remove not_in_room

execute unless entity @a[tag=not_in_room] as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=50..69}] run scoreboard players add @s eventTimer 1
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=51}] run playsound minecraft:block.fire.extinguish block @a -30 128 91 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -31 129 91 -29 129 91 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -31 127 91 -29 128 91 minecraft:barrier
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -31 128 91 -29 128 91 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -31 129 91 -29 129 91 minecraft:iron_block
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -31 127 91 -29 127 91 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -31 128 91 -29 128 91 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set progressTracker advProgress 39

execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -26 124 100 {Tags:["modifier","level_14"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -26 124 102 {Tags:["modifier","level_14"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -26 124 106 {Tags:["modifier","level_14"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -28 124 106 {Tags:["modifier","level_14"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -28 124 108 {Tags:["modifier","level_14"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -30 124 104 {Tags:["modifier","level_14"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -32 124 100 {Tags:["modifier","level_14"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -32 124 104 {Tags:["modifier","level_14"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -34 124 100 {Tags:["modifier","level_14"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -34 124 102 {Tags:["modifier","level_14"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[type=armor_stand,tag=robot_prop]
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run summon minecraft:armor_stand -25 126 102 {Tags:["spawn","level_14"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @e[type=armor_stand,tag=level_14,tag=spawn] add respawn
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run scoreboard players set gameTag tagList 1
execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run tag @a remove testing_solution

execute as @e[type=armor_stand,tag=spawn,x=-35,y=126,z=78,dx=0,dy=0,dz=0,scores={eventTimer=70}] run kill @e[tag=level_13]