###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add replay eventTimer 1

execute if score replay eventTimer matches 10 run scoreboard players set replayTag tagList 1
execute if score replay eventTimer matches 10 run spawnpoint @a -44 126 28 90
execute if score replay eventTimer matches 10 run title @a times 10 20 10
execute if score replay eventTimer matches 10 run title @a subtitle {"text":""}
execute if score replay eventTimer matches 10 run title @a title {"text":"\uf009"}

execute if score replay eventTimer matches 20 run tp @a[tag=!admin] -44 126 28 90 0

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -41 128.5 36 {Tags:["hologram","level_12"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:83}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -60 128.5 47 {Tags:["hologram","level_12"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:89}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -41 128.5 28 {Tags:["hologram","level_12"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -52 128.5 47 {Tags:["hologram","level_12"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:70}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -56 128 26.0 {Tags:["hologram","level_12"],Rotation:[-90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:27}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -48 128 31.0 {Tags:["hologram","level_12"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:36}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -56 128 39.0 {Tags:["hologram","level_12"],Rotation:[90.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:37}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -69 126 19 {Tags:["hint","level_12"],Rotation:[180.0f,0.0f],Invulnerable:1,NoGravity:1,Invisible:1b,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:8}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -56 126 24 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -56 126 40 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -64 126 32 {Pose:{RightArm:[0f,0f,0f]},Tags:["crafter","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:5}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -64 128.125 32 {Pose:{RightArm:[0f,0f,0f]},Tags:["crafter_display","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -48 126 32 {Pose:{RightArm:[0f,0f,0f]},Tags:["blockswap","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -52 128.5 51 {Tags:["hologram","level_12"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:71}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -59 128.5 62 {Tags:["hologram","level_12"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:56}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -45 128.5 78 {Tags:["hologram","level_12","dynamic_hologram"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:72}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -45 128.5 62 {Tags:["hologram","level_12"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:47}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -59 128.5 78 {Tags:["hologram","level_12"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:48}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -80 128.5 47 {Tags:["hologram","level_12"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:45}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -52 132.5 66 {Tags:["level_12","alarm"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -52 132.5 82 {Tags:["level_12","alarm"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -87 133 47 {Tags:["level_12","airlock","airlock_alarm_0","is_closed"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -94 129 52 {Tags:["level_12","airlock_alarm_3"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -80 129 42 {Tags:["level_12","airlock_alarm_1"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[90f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -80 129 52 {Tags:["level_12","airlock_alarm_4"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -94 129 42 {Tags:["level_12","airlock_alarm_2"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[90f,0f,0f]}}

execute if score replay eventTimer matches 30 run clone -90 145 38 -84 149 38 -90 127 52
execute if score replay eventTimer matches 30 run clone -90 145 50 -84 149 50 -90 127 42
execute if score replay eventTimer matches 30 run fill -94 125 43 -80 134 51 minecraft:sea_lantern replace minecraft:blue_ice
execute if score replay eventTimer matches 30 run setblock -92 124 37 minecraft:air
execute if score replay eventTimer matches 30 run setblock -82 124 57 minecraft:air

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -80 129 -6 {Tags:["level_12","alarm"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -94 129 -6 {Tags:["level_12","alarm"],Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:15}},{}],Pose:{RightArm:[-90f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:drowned -97 127 47 {Tags:["level_12","scientist_spy"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:44}}]}
execute if score replay eventTimer matches 30 run summon minecraft:drowned -87 126 2 {Tags:["level_12","scientist_mine_1"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{Count:1,id:"minecraft:golden_chestplate"},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:42}}]}
execute if score replay eventTimer matches 30 run summon minecraft:drowned -85 126 20 {Tags:["level_12","scientist_mine_2"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{Count:1,id:"minecraft:golden_chestplate"},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:43}}]}
execute if score replay eventTimer matches 30 run summon minecraft:drowned -84 126 23 {Tags:["level_12","scientist_mine_2"],Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}],ArmorItems:[{},{},{Count:1,id:"minecraft:golden_chestplate"},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:45}}]}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -52 126 87 {Tags:["level_12","fuse_holder"],Rotation:[180.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:82}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -52 127 88.0 {Tags:["level_12","broken_fuse"],Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:81}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -52 127 87.0 {Tags:["level_12","replacement_fuse"],Rotation:[-90.0f,0.0f],ShowArms:1b,NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -96 126 27.0 {Tags:["level_12","fuse_holder"],Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:82}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -95.0 127 27.0 {Tags:["level_12","new_fuse"],Rotation:[0.0f,0.0f],ShowArms:1b,NoGravity:1,Invisible:1b,Invulnerable:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:80,display:{Name:'[{"text":"45kA Fuse","italic":false,"color":"gold"}]',Lore:['[{"text":"Can be used to replace a bad fuse.","color":"white"}]']}}},{}],Pose:{RightArm:[0f,0f,0f]}}

execute if score replay eventTimer matches 30 run fill -96 126 28 -100 129 26 minecraft:sea_lantern replace minecraft:blue_ice
execute if score replay eventTimer matches 30 run fill -98 127 26 -98 127 27 minecraft:redstone_block replace minecraft:gold_block
execute if score replay eventTimer matches 30 run setblock -97 127 17 minecraft:light[level=15]
execute if score replay eventTimer matches 30 run setblock -97 140 18 minecraft:end_rod[facing=up]
execute if score replay eventTimer matches 30 run setblock -52 127 89 minecraft:gold_block

execute if score replay eventTimer matches 30 run fill -39 127 29 -39 127 27 minecraft:smooth_stone
execute if score replay eventTimer matches 30 run fill -39 128 29 -39 129 27 minecraft:iron_block

execute if score replay eventTimer matches 30 run fill -51 127 49 -53 127 49 minecraft:smooth_stone
execute if score replay eventTimer matches 30 run fill -51 128 49 -53 129 49 minecraft:iron_block

execute if score replay eventTimer matches 30 run clone -65 122 23 -47 122 41 -65 126 23

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -48 124 26 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -50 124 38 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -54 124 26 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -54 124 28 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -54 124 30 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -54 124 34 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -56 124 24 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -56 124 32 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -56 124 40 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -60 124 24 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -60 124 26 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -60 124 30 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -60 124 34 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -62 124 30 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -62 124 34 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -62 124 36 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -62 124 38 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -64 124 32 {Tags:["modifier","level_12"],Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

execute if score replay eventTimer matches 30 run summon minecraft:armor_stand -47 126 28 {Tags:["spawn","level_12"],Rotation:[90.0f,0.0f],Invisible:1,Invulnerable:1,NoGravity:1}
execute if score replay eventTimer matches 30 run tag @e[type=armor_stand,tag=level_12,tag=spawn] add respawn
execute if score replay eventTimer matches 30 run scoreboard players set timesStopped stopCounter 0
execute if score replay eventTimer matches 30 run scoreboard players set gameTag tagList 1
execute if score replay eventTimer matches 30 run scoreboard players set musicTag tagList 2
execute if score replay eventTimer matches 30 run tag @a remove testing_solution

execute if score replay eventTimer matches 30 run scoreboard players set progressTracker advProgress 35

execute if score replay eventTimer matches ..29 run schedule function code:replay/replay_level_12 1t
execute if score replay eventTimer matches 30 run scoreboard players set replay eventTimer 0