###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add sceneTwo eventTimer 1

execute if score sceneTwo eventTimer matches 1 run playsound minecraft:fx.rumble.light ambient @a ~ ~ ~ 100 1

execute if score sceneTwo eventTimer matches 1..69 run execute as @a at @s unless block ~ ~-1 ~ minecraft:air run tp @s ~ ~0.1 ~ ~ ~
execute if score sceneTwo eventTimer matches 70..89 run execute as @a at @s unless block ~ ~-1 ~ minecraft:air run tp @s ~ ~0.15 ~ ~ ~
execute if score sceneTwo eventTimer matches 90..140 run execute as @a at @s unless block ~ ~-1 ~ minecraft:air run tp @s ~ ~0.1 ~ ~ ~

execute if score sceneTwo eventTimer matches 20 run fill 10 116 44 42 122 66 minecraft:blue_ice replace minecraft:sea_lantern
execute if score sceneTwo eventTimer matches 20 run fill 5 125 42 47 143 68 minecraft:blue_ice replace minecraft:sea_lantern
execute if score sceneTwo eventTimer matches 20 run fill 20 143 49 32 143 61 minecraft:gold_block replace minecraft:redstone_block
execute if score sceneTwo eventTimer matches 20 run fill 25 130 43 27 130 43 minecraft:gray_stained_glass_pane replace minecraft:end_rod
execute if score sceneTwo eventTimer matches 20 run fill -32 123 47 3 134 76 minecraft:blue_ice replace minecraft:sea_lantern
execute if score sceneTwo eventTimer matches 20 run fill -32 123 47 3 134 76 minecraft:gold_block replace minecraft:redstone_block
execute if score sceneTwo eventTimer matches 20 run fill -32 123 47 3 134 76 minecraft:gray_stained_glass_pane replace minecraft:end_rod

execute if score sceneTwo eventTimer matches 50 run setblock 10 139 61 minecraft:blue_ice destroy
execute if score sceneTwo eventTimer matches 50 run setblock 11 139 61 minecraft:blue_ice destroy
execute if score sceneTwo eventTimer matches 50 run setblock 12 139 61 minecraft:blue_ice destroy
execute if score sceneTwo eventTimer matches 50 run particle firework 11 138.7 61 0.8 0 0 0.1 50 force

execute if score sceneTwo eventTimer matches 60 run setblock 34 139 49 minecraft:blue_ice destroy
execute if score sceneTwo eventTimer matches 60 run setblock 35 139 49 minecraft:blue_ice destroy
execute if score sceneTwo eventTimer matches 60 run setblock 36 139 49 minecraft:blue_ice destroy
execute if score sceneTwo eventTimer matches 60 run particle firework 35 138.7 49 0.8 0 0 0.1 50 force

execute if score sceneTwo eventTimer matches 70..79 run execute as @e[tag=event_robot_left_1] at @s run tp @s ~ ~ ~0.1 ~ ~
execute if score sceneTwo eventTimer matches 79 run data merge entity @e[tag=event_robot_left_1,limit=1] {HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:3}},{}]}

execute if score sceneTwo eventTimer matches 100..109 run execute as @e[tag=event_robot_left_2] at @s run tp @s ~ ~ ~0.1 ~ ~
execute if score sceneTwo eventTimer matches 109 run data merge entity @e[tag=event_robot_left_2,limit=1] {HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:3}},{}]}

execute if score sceneTwo eventTimer matches 80..89 run execute as @e[tag=event_robot_left_3] at @s run tp @s ~ ~ ~0.1 ~ ~
execute if score sceneTwo eventTimer matches 89 run data merge entity @e[tag=event_robot_left_3,limit=1] {HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:3}},{}]}

execute if score sceneTwo eventTimer matches 130..139 run execute as @e[tag=event_robot_left_4] at @s run tp @s ~ ~ ~0.1 ~ ~
execute if score sceneTwo eventTimer matches 139 run data merge entity @e[tag=event_robot_left_4,limit=1] {HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:3}},{}]}

execute if score sceneTwo eventTimer matches 90..99 run execute as @e[tag=event_robot_right_1] at @s run tp @s ~ ~ ~-0.1 ~ ~
execute if score sceneTwo eventTimer matches 99 run data merge entity @e[tag=event_robot_right_1,limit=1] {HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:3}},{}]}

execute if score sceneTwo eventTimer matches 110..119 run execute as @e[tag=event_robot_right_2] at @s run tp @s ~ ~ ~-0.1 ~ ~
execute if score sceneTwo eventTimer matches 119 run data merge entity @e[tag=event_robot_right_2,limit=1] {HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:3}},{}]}

execute if score sceneTwo eventTimer matches 120..129 run execute as @e[tag=event_robot_right_3] at @s run tp @s ~ ~ ~-0.1 ~ ~
execute if score sceneTwo eventTimer matches 129 run data merge entity @e[tag=event_robot_right_3,limit=1] {HandItems:[{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:3}},{}]}

execute if score sceneTwo eventTimer matches 90 run setblock 28 139 61 minecraft:blue_ice destroy
execute if score sceneTwo eventTimer matches 90 run setblock 29 139 61 minecraft:blue_ice destroy
execute if score sceneTwo eventTimer matches 90 run setblock 30 139 61 minecraft:blue_ice destroy
execute if score sceneTwo eventTimer matches 90 run particle firework 29 138.7 61 0.8 0 0 0.1 50 force

execute if score sceneTwo eventTimer matches 80..140 run particle minecraft:cloud 22 130 44.1 0 0 0 0.1 1 force
execute if score sceneTwo eventTimer matches 80..140 run particle minecraft:poof 22 130 44.1 0 0 0 0.15 1 force
execute if score sceneTwo eventTimer matches 80..140 run particle minecraft:smoke 22 130 44.1 0 0 0 0.25 1 force

execute if score sceneTwo eventTimer matches 100..200 run particle minecraft:poof 34 138 45.1 0 0 0 0.02 1 force
execute if score sceneTwo eventTimer matches 100..200 run particle minecraft:cloud 34 138 45.1 0 0 0 0.05 1 force
execute if score sceneTwo eventTimer matches 100..200 run particle minecraft:smoke 34 138 45.1 0 0 0 0.25 1 force

execute if score sceneTwo eventTimer matches 90..170 run particle minecraft:cloud 18 133 66.9 0 0 0 0.1 1 force
execute if score sceneTwo eventTimer matches 90..170 run particle minecraft:poof 18 133 66.9 0 0 0 0.1 1 force
execute if score sceneTwo eventTimer matches 90..170 run particle minecraft:smoke 18 133 66.9 0 0 0 0.25 1 force

execute if score sceneTwo eventTimer matches 130 run fill 22 125 66 30 143 68 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 140 run fill 31 125 42 42 143 44 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 150 run fill 28 139 49 30 139 49 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 165 run fill 22 139 61 24 139 61 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 170 run fill 22 116 44 30 122 53 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 175 run fill 10 116 57 18 122 66 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 180 run fill 40 139 61 42 139 61 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 190 run fill 5 125 42 8 143 68 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 195 run fill 10 139 49 12 139 49 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 205 run fill 10 125 66 21 143 68 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 220 run fill 34 116 57 42 122 66 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 230 run fill 10 125 42 21 143 44 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 235 run fill 16 139 49 18 139 49 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 240 run fill 31 125 66 42 143 68 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 255 run fill 10 116 44 18 122 53 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 260 run fill 44 125 42 47 143 68 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 270 run fill 40 139 49 42 139 49 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 275 run fill 16 139 61 18 139 61 minecraft:sea_lantern replace minecraft:blue_ice
execute if score sceneTwo eventTimer matches 275 run fill -32 123 47 3 134 76 minecraft:sea_lantern replace minecraft:blue_ice
execute if score sceneTwo eventTimer matches 275 run fill -32 123 47 3 134 76 minecraft:redstone_block replace minecraft:gold_block
execute if score sceneTwo eventTimer matches 275 run fill -28 130 48 -8 130 62 minecraft:end_rod[facing=down] replace minecraft:gray_stained_glass_pane
execute if score sceneTwo eventTimer matches 275 run fill -28 129 48 -8 129 62 minecraft:end_rod[facing=up] replace minecraft:gray_stained_glass_pane

execute if score sceneTwo eventTimer matches 275 run fill -31 130 67 -29 130 67 minecraft:end_rod[facing=down] replace minecraft:gray_stained_glass_pane
execute if score sceneTwo eventTimer matches 275 run fill -31 129 67 -29 129 67 minecraft:end_rod[facing=up] replace minecraft:gray_stained_glass_pane

execute if score sceneTwo eventTimer matches 285 run fill 25 130 43 27 130 43 minecraft:end_rod[facing=down] replace minecraft:gray_stained_glass_pane

execute if score sceneTwo eventTimer matches 290 run fill 34 116 44 42 122 53 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 295 run fill 22 116 57 30 122 66 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 300 run fill 22 125 42 30 143 44 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 310 run fill 20 143 49 32 143 61 minecraft:redstone_block replace minecraft:gold_block

execute if score sceneTwo eventTimer matches 315 run fill 22 139 49 24 139 49 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 320 run fill 34 139 61 36 139 61 minecraft:sea_lantern replace minecraft:blue_ice

execute if score sceneTwo eventTimer matches 280..750 run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:poisonous_potato"}}]

execute if score sceneTwo eventTimer matches 280..328 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score sceneTwo eventTimer matches 280..328 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:61}

execute if score sceneTwo eventTimer matches 280 run playsound minecraft:fx.comms.incoming neutral @a ~ ~ ~ 100 1

execute if score sceneTwo eventTimer matches 329 run clear @a minecraft:poisonous_potato

execute if score sceneTwo eventTimer matches 330..749 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run clear @s minecraft:poisonous_potato
execute if score sceneTwo eventTimer matches 330..749 run execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run item replace entity @s weapon.offhand with minecraft:poisonous_potato{CustomModelData:60}

execute if score sceneTwo eventTimer matches 330 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score sceneTwo eventTimer matches 330 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Hello? Are you okay? The power grid went offline for a second.","color":"white"}]

execute if score sceneTwo eventTimer matches 470 run playsound minecraft:fx.comms.no neutral @a ~ ~ ~ 100 1
execute if score sceneTwo eventTimer matches 470 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"We're experiencing some seismic activities again, nothing to worry about. We've had worse..","color":"white"}]

execute if score sceneTwo eventTimer matches 610 run playsound minecraft:fx.comms.yes neutral @a ~ ~ ~ 100 1
execute if score sceneTwo eventTimer matches 610 run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Please proceed to the next room. I'll open the door remotely for you now.","color":"white"}]

execute if score sceneTwo eventTimer matches 700 run scoreboard players set progressTracker advProgress 28

execute if score sceneTwo eventTimer matches 750 run clear @a minecraft:poisonous_potato

execute if score sceneTwo eventTimer matches ..749 run schedule function code:scene_2/scene_2_event 1t
execute if score sceneTwo eventTimer matches 750 run scoreboard players set sceneTwo eventTimer 0