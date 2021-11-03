###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0] run scoreboard players add @s eventTimer 0
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=..49}] run scoreboard players add @s eventTimer 1

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run spawnpoint @a -44 126 28 90

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -41 128.5 36 {Tags:["hologram","level_12"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:83}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -60 128.5 47 {Tags:["hologram","level_12"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:89}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -41 128.5 28 {Tags:["hologram","level_12"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -52 128.5 47 {Tags:["hologram","level_12"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -56 128 26.0 {Tags:["hologram","level_12"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:27}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -48 128 31.0 {Tags:["hologram","level_12"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:36}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -56 128 39.0 {Tags:["hologram","level_12"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:37}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -47 126 28 {Tags:["robot_prop","level_12"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}],HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:4}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -69 126 19 {Tags:["hint","level_12"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run scoreboard players set timesStopped stopCounter 0

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -56 126 24 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -56 126 40 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -64 126 32 {Pose:{RightArm:[0f,0f,0f]},Tags:["crafter","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:5}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -64 128.125 32 {Pose:{RightArm:[0f,0f,0f]},Tags:["crafter_display","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -48 126 32 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

#spawn hallway holograms
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -52 128.5 51 {Tags:["hologram","level_12"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -59 128.5 62 {Tags:["hologram","level_12"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:56}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -45 128.5 78 {Tags:["hologram","level_12","dynamic_hologram"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:72}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -45 128.5 62 {Tags:["hologram","level_12"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:47}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -59 128.5 78 {Tags:["hologram","level_12"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:48}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -80 128.5 47 {Tags:["hologram","level_12"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:45}},{}],Pose:{RightArm:[0f,0f,0f]}}

#spawn hallway alarms
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -52 132.5 66 {Tags:["level_12","alarm"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -52 132.5 82 {Tags:["level_12","alarm"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}

#spawn airlock alarms
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -87 133 47 {Tags:["level_12","airlock","airlock_alarm_0","is_closed"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -94 129 52 {Tags:["level_12","airlock_alarm_3"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -80 129 42 {Tags:["level_12","airlock_alarm_1"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[90f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -80 129 52 {Tags:["level_12","airlock_alarm_4"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -94 129 42 {Tags:["level_12","airlock_alarm_2"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[90f,0f,0f]}}

#reset airlock attributes
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run tag @e[tag=airlock] add is_closed
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone -90 145 38 -84 149 38 -90 127 52
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone -90 145 50 -84 149 50 -90 127 42
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -94 125 43 -80 134 51 minecraft:sea_lantern replace minecraft:blue_ice
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run setblock -92 124 37 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run setblock -82 124 57 minecraft:air

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -80 129 -6 {Tags:["level_12","alarm"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -94 129 -6 {Tags:["level_12","alarm"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}

#spawn scientists
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:drowned -97 127 47 {Tags:["level_12","scientist_spy"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:44}}]}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:drowned -87 126 2 {Tags:["level_12","scientist_mine_1"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{Count:1,id:"minecraft:golden_chestplate"},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:42}}]}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:drowned -85 126 20 {Tags:["level_12","scientist_mine_2"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{Count:1,id:"minecraft:golden_chestplate"},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:43}}]}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:drowned -84 126 23 {Tags:["level_12","scientist_mine_2"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{Count:1,id:"minecraft:golden_chestplate"},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:45}}]}

#spawn fuses
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -52 126 87 {Tags:["level_12","fuse_holder"],Rotation:[180.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:82}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -52 127 88.0 {Tags:["level_12","broken_fuse"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:81}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -52 127 87.0 {Tags:["level_12","replacement_fuse"],Rotation:[-90.0f,0.0f],ShowArms:1b,NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -96 126 27.0 {Tags:["level_12","fuse_holder"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:82}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run summon minecraft:armor_stand -95.0 127 27.0 {Tags:["level_12","new_fuse"],Rotation:[0.0f,0.0f],ShowArms:1b,NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:80,display:{Name:'[{"text":"45kA Fuse","italic":false,"color":"gold"}]',Lore:['[{"text":"Can be used to replace a bad fuse.","color":"white"}]']}}},{}],Pose:{RightArm:[0f,0f,0f]}}

#reset mining laser lights
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -96 126 28 -100 129 26 minecraft:sea_lantern replace minecraft:blue_ice
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -98 127 26 -98 127 27 minecraft:redstone_block replace minecraft:gold_block
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run setblock -97 127 17 minecraft:light[level=15]
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run setblock -97 140 18 minecraft:end_rod[facing=up]
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run setblock -52 127 89 minecraft:gold_block

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -51 127 49 -53 127 49 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -51 128 49 -53 129 49 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -43 127 77 -43 127 79 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run fill -43 128 77 -43 129 79 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run clone -65 122 23 -47 122 41 -65 126 23

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run setblock -56 138 32 minecraft:redstone_block
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run setblock -64 138 40 minecraft:redstone_block
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=1}] run setblock -48 138 32 minecraft:redstone_block

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=30}] run particle minecraft:cloud -39 127.0 28 0 0 1 0.05 50
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=30}] run playsound minecraft:block.fire.extinguish block @a -39 128 28 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -39 127 29 -39 127 27 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=30}] run fill -39 128 29 -39 128 27 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -39 128 29 -39 128 27 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=40}] run fill -39 129 29 -39 129 27 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=50}] run fill -39 129 29 -39 129 27 minecraft:air

execute as @e[type=armor_stand,tag=blockswap,x=-22,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-22,y=126,z=32,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=-22,y=126,z=24,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-22,y=126,z=24,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}
execute as @e[type=armor_stand,tag=blockswap,x=-30,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:orange_stained_glass",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-30,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:orange_stained_glass",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=!magma_block_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=crafter,tag=!magma_block_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data modify entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] ArmorItems set from entity @s ArmorItems
execute as @e[type=armor_stand,tag=crafter,tag=!magma_block_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add block_stored
execute as @e[type=armor_stand,tag=crafter,tag=!magma_block_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add magma_block_stored
execute as @e[type=armor_stand,tag=crafter,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=!red_sand_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=crafter,tag=!red_sand_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data modify entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] ArmorItems set from entity @s ArmorItems
execute as @e[type=armor_stand,tag=crafter,tag=!red_sand_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add block_stored
execute as @e[type=armor_stand,tag=crafter,tag=!red_sand_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add red_sand_stored
execute as @e[type=armor_stand,tag=crafter,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=!orange_stained_glass_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:orange_stained_glass",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=crafter,tag=!orange_stained_glass_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:orange_stained_glass",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data modify entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] ArmorItems set from entity @s ArmorItems
execute as @e[type=armor_stand,tag=crafter,tag=!orange_stained_glass_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:orange_stained_glass",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add block_stored
execute as @e[type=armor_stand,tag=crafter,tag=!orange_stained_glass_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:orange_stained_glass",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run tag @s add orange_stained_glass_stored
execute as @e[type=armor_stand,tag=crafter,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:orange_stained_glass",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}] run data merge entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}] run particle minecraft:wax_off ~ ~1.2 ~ 0.2 0.2 0.2 2 25 force
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}] run playsound minecraft:block.anvil.land block @a -26 127 28 1 1.5
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:orange_stained_glass",Count:1b}]}
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove block_stored
execute as @e[type=armor_stand,tag=crafter,tag=magma_block_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove magma_block_stored

execute as @e[type=armor_stand,tag=crafter,tag=red_sand_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] run data merge entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=crafter,tag=red_sand_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] run particle minecraft:wax_off ~ ~1.2 ~ 0.2 0.2 0.2 2 25 force
execute as @e[type=armor_stand,tag=crafter,tag=red_sand_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] run playsound minecraft:block.anvil.land block @a -26 127 28 1 1.5
execute as @e[type=armor_stand,tag=crafter,tag=red_sand_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,nbt={ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}] run data merge entity @e[tag=robot,tag=!moving,tag=active,tag=carrying,distance=0..0.1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:orange_stained_glass",Count:1b}]}
execute as @e[type=armor_stand,tag=crafter,tag=red_sand_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove block_stored
execute as @e[type=armor_stand,tag=crafter,tag=red_sand_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove red_sand_stored

execute as @e[type=armor_stand,tag=crafter,tag=orange_stained_glass_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove block_stored
execute as @e[type=armor_stand,tag=crafter,tag=orange_stained_glass_stored,x=-26,y=126,z=28,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s if entity @e[type=armor_stand,tag=crafter_display,distance=..2.2,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] unless entity @e[tag=robot,distance=..2] run tag @s remove orange_stained_glass_stored

execute as @a unless entity @s[x=-72,y=126,z=16,dx=32,dy=12,dz=32] run tag @s add not_in_room
execute as @a if entity @s[x=-70,y=126,z=18,dx=28,dy=12,dz=28] run tag @s remove not_in_room

execute unless entity @a[tag=not_in_room] as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=50..409}] run scoreboard players add @s eventTimer 1
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=51}] run playsound minecraft:block.fire.extinguish block @a -39 128 28 1 0.5
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -39 129 29 -39 129 27 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=51}] run fill -39 127 29 -39 128 27 minecraft:barrier
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -39 128 29 -39 128 27 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=60}] run fill -39 129 29 -39 129 27 minecraft:iron_block
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -39 127 29 -39 127 27 minecraft:smooth_stone
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=70}] run fill -39 128 29 -39 128 27 minecraft:iron_block

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=110}] run scoreboard players set musicTag tagList 0
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=110}] run playsound minecraft:fx.rumble.medium ambient @a ~ ~ ~ 100 1

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=110..179}] run execute as @a at @s unless block ~ ~-1 ~ minecraft:air run tp @s ~ ~0.1 ~ ~ ~
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=180..199}] run execute as @a at @s unless block ~ ~-1 ~ minecraft:air run tp @s ~ ~0.15 ~ ~ ~
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=200..250}] run execute as @a at @s unless block ~ ~-1 ~ minecraft:air run tp @s ~ ~0.1 ~ ~ ~

#Floor
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run fill -65 125 23 -47 125 41 minecraft:blue_ice replace minecraft:sea_lantern
#South wall
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run fill -72 125 45 -40 139 47 minecraft:blue_ice replace minecraft:sea_lantern
#West wall
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run fill -72 125 16 -69 139 48 minecraft:blue_ice replace minecraft:sea_lantern
#North wall
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run fill -72 125 16 -40 139 19 minecraft:blue_ice replace minecraft:sea_lantern
#East wall
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run fill -43 125 16 -40 139 48 minecraft:blue_ice replace minecraft:sea_lantern
#Ceiling
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run fill -69 139 19 -43 139 45 minecraft:blue_ice replace minecraft:sea_lantern
#Redstone lamps
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run fill -64 138 24 -48 138 40 minecraft:gold_block replace minecraft:redstone_block
#End rods south wall
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run fill -72 125 45 -40 139 47 minecraft:gray_stained_glass_pane replace minecraft:end_rod
#End rods east wall
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run fill -43 125 16 -40 139 48 minecraft:gray_stained_glass_pane replace minecraft:end_rod
#End rods in playing area
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -56 128 39 minecraft:lightning_rod[facing=south,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -56 128 39 minecraft:lightning_rod[facing=south,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -56 130 39 minecraft:lightning_rod[facing=south,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -56 130 39 minecraft:lightning_rod[facing=south,powered=true]

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -48 128 31 minecraft:lightning_rod[facing=south,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -48 128 31 minecraft:lightning_rod[facing=south,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -48 130 31 minecraft:lightning_rod[facing=south,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -48 130 31 minecraft:lightning_rod[facing=south,powered=true]

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -56 128 25 minecraft:lightning_rod[facing=north,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -56 128 25 minecraft:lightning_rod[facing=north,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -56 130 25 minecraft:lightning_rod[facing=north,powered=true]
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=130}] run setblock -56 130 25 minecraft:lightning_rod[facing=north,powered=true]

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=200}] run setblock -56 137 32 minecraft:redstone_lamp destroy
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=200}] run setblock -56 138 32 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=200}] run particle firework -56 136.7 32 0 0 0 0.1 50 force

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=220}] run setblock -64 137 40 minecraft:redstone_lamp destroy
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=220}] run setblock -64 138 40 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=220}] run particle firework -64 136.7 40 0 0 0 0.1 50 force

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=270}] run setblock -48 137 32 minecraft:redstone_lamp destroy
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=270}] run setblock -48 138 32 minecraft:air
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=270}] run particle firework -48 136.7 32 0 0 0 0.1 50 force

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=230..290}] run particle minecraft:cloud -68.7 134 39 0 0 0 0.1 1 force
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=230..290}] run particle minecraft:poof -68.7 134 39 0 0 0 0.15 1 force
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=230..290}] run particle minecraft:smoke -68.7 134 39 0 0 0 0.25 1 force

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=260..330}] run particle minecraft:cloud -51 138 39.7 1 0.1 0 0.1 1 force
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=270..330}] run particle minecraft:poof -51 138 39.7 1 0.1 0 0.15 1 force
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=270..330}] run particle minecraft:smoke -51 138 39.7 1 0.1 0 0.25 1 force

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=250..340}] run particle minecraft:smoke -55 134.1 18.9 0 0 0 0.15 100 force

#South wall
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=300}] run fill -72 125 45 -40 139 47 minecraft:sea_lantern replace minecraft:blue_ice
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=300}] run fill -61 130 47 -51 130 47 minecraft:end_rod[facing=down] replace minecraft:gray_stained_glass_pane
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=300}] run fill -61 129 47 -59 129 47 minecraft:end_rod[facing=up] replace minecraft:gray_stained_glass_pane
#North wall
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=320}] run fill -72 125 16 -40 139 19 minecraft:sea_lantern replace minecraft:blue_ice
#Ceiling
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=330}] run fill -69 139 19 -43 139 45 minecraft:sea_lantern replace minecraft:blue_ice
#East wall
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=350}] run fill -43 125 16 -40 139 48 minecraft:sea_lantern replace minecraft:blue_ice
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=350}] run fill -41 130 27 -41 130 37 minecraft:end_rod[facing=down] replace minecraft:gray_stained_glass_pane
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=350}] run fill -41 129 35 -41 129 37 minecraft:end_rod[facing=up] replace minecraft:gray_stained_glass_pane
#Redstone lamps
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=365}] run fill -64 138 24 -48 138 40 minecraft:redstone_block replace minecraft:gold_block
#West wall
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=370}] run fill -72 125 16 -69 139 48 minecraft:sea_lantern replace minecraft:blue_ice
#Floor
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=390}] run fill -65 125 23 -47 125 41 minecraft:sea_lantern replace minecraft:blue_ice
#End rods in playing area
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=400}] run setblock -56 128 39 minecraft:end_rod[facing=north]
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=400}] run setblock -56 130 39 minecraft:end_rod[facing=north]

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=400}] run setblock -48 128 31 minecraft:end_rod[facing=north]
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=400}] run setblock -48 130 31 minecraft:end_rod[facing=north]

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run setblock -56 128 25 minecraft:end_rod[facing=south]
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run setblock -56 130 25 minecraft:end_rod[facing=south]

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run scoreboard players set musicTag tagList 2

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run scoreboard players set progressTracker advProgress 35

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -48 124 26 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -50 124 38 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -54 124 26 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -54 124 28 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -54 124 30 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -54 124 34 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -56 124 24 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -56 124 32 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -56 124 40 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -60 124 24 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -60 124 26 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -60 124 30 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -60 124 34 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -62 124 30 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -62 124 34 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -62 124 36 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -62 124 38 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -64 124 32 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run kill @e[type=armor_stand,tag=robot_prop]
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run summon minecraft:armor_stand -47 126 28 {Tags:["spawn","level_12"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run tag @e[type=armor_stand,tag=level_12,tag=spawn] add respawn
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run scoreboard players set gameTag tagList 1
execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run tag @a remove testing_solution

execute as @e[type=armor_stand,tag=spawn,x=-21,y=126,z=30,dx=0,dy=0,dz=0,scores={eventTimer=410}] run kill @e[tag=level_11]

#Mining laser particles
particle minecraft:lava -97 123 17 0 1.5 0 1 5 force
particle minecraft:happy_villager -97 124 17 0 2 0 0 50 force

#rotate scientist
execute as @e[tag=scientist_spy] at @s run tp @s ~ ~ ~ facing entity @p[sort=nearest,x=-94,y=126,z=43,dx=14,dy=7,dz=8]

execute as @e[tag=scientist_mine_1] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_mine_1] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -85 126 1

execute as @e[tag=scientist_mine_2] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_mine_2] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -84.0 126 22.0