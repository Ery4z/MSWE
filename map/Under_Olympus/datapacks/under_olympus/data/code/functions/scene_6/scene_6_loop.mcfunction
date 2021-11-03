###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###PLAYER OUT OF BOUNDS PROTECTION------------------------------------------------------------------------

execute as @a[tag=!admin] if score replay eventTimer matches ..0 unless entity @s[x=-44,y=154,z=-57,dx=175,dy=57,dz=133] run title @s actionbar {"text":"You went out of bounds!","color":"red"}
execute as @a[tag=!admin] if score replay eventTimer matches ..0 unless entity @s[x=-44,y=154,z=-57,dx=175,dy=57,dz=133] run advancement grant @s[advancements={code:secrets/outofbounds=false}] only code:secrets/outofbounds
execute as @a[tag=!admin] if score replay eventTimer matches ..0 unless entity @s[x=-44,y=154,z=-57,dx=175,dy=57,dz=133] run tp @s 10 162 -8 90 0

###OPEN KARAOKE DOOR
execute if score doorTracker eventTimer matches 0..50 run scoreboard players add doorTracker eventTimer 1

execute if score doorTracker eventTimer matches 30 run playsound minecraft:block.fire.extinguish block @a -7 164 -8 1 0.5
execute if score doorTracker eventTimer matches 30 run particle minecraft:cloud -7 163.0 -8 0 0 1 0.05 50
execute if score doorTracker eventTimer matches 30 run fill -7 163 -9 -7 163 -7 minecraft:air
execute if score doorTracker eventTimer matches 30 run fill -7 164 -9 -7 164 -7 minecraft:smooth_stone
execute if score doorTracker eventTimer matches 40 run fill -7 164 -9 -7 164 -7 minecraft:air
execute if score doorTracker eventTimer matches 40 run fill -7 165 -9 -7 165 -7 minecraft:smooth_stone
execute if score doorTracker eventTimer matches 50 run fill -7 165 -9 -7 165 -7 minecraft:air

###DANCEFLOOR
execute if score doorTracker eventTimer matches 51..151 run scoreboard players add doorTracker eventTimer 1

execute if score doorTracker eventTimer matches 52 run clone -24 160 -18 -16 160 -10 -24 161 -18
execute if score doorTracker eventTimer matches 72 run clone -24 158 -18 -16 158 -10 -24 161 -18
execute if score doorTracker eventTimer matches 92 run clone -24 156 -18 -16 156 -10 -24 161 -18
execute if score doorTracker eventTimer matches 112 run clone -24 154 -18 -16 154 -10 -24 161 -18
execute if score doorTracker eventTimer matches 132 run clone -24 152 -18 -16 152 -10 -24 161 -18

execute if score doorTracker eventTimer matches 152.. run scoreboard players set doorTracker eventTimer 51

###MAKE NPC LOOK IN PLAYER'S DIRECTION-------------------------------------------------------------------------------------
execute as @e[tag=scientist_fish] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_fish] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing entity @e[tag=fish,sort=nearest,limit=1]
execute as @e[tag=scientist_fish] at @s unless entity @a[distance=..4] run tag @s remove spoken_to
execute as @e[tag=scientist_fish,tag=!spoken_to] at @s if entity @a[distance=..4] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 1.2
execute as @e[tag=scientist_fish,tag=!spoken_to] at @s if entity @a[distance=..4] run tellraw @a[distance=..8] ["",{"text":"<","color":"white"},{"text":"Dr. Gordon","color":"gold"},{"text":"> ","color":"white"},{"text":"These fish look amazing!","color":"white"}]
execute as @e[tag=scientist_fish,tag=!spoken_to] at @s if entity @a[distance=..4] run tag @s add spoken_to

execute as @e[tag=scientist_jozef] at @s run tp @s ~ ~ ~ facing entity @p[distance=..3]
execute as @e[tag=scientist_jozef] at @s unless entity @a[distance=..3] run tp @s ~ ~ ~ facing -24 162 -8
execute as @e[tag=scientist_jozef] at @s unless entity @a[distance=..3] run tag @s remove spoken_to
execute as @e[tag=scientist_jozef,tag=!spoken_to] at @s if entity @a[distance=..3] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 1.1
execute as @e[tag=scientist_jozef,tag=!spoken_to] at @s if entity @a[distance=..3] run tellraw @a[distance=..8] ["",{"text":"<","color":"white"},{"text":"9Jozef","color":"gold"},{"text":"> ","color":"white"},{"text":"I'm the one that created the map music! Click ","color":"white"},{"text":"here","underlined":true,"color":"white","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCZ-F-8rbFnmFy-X669hqHug"}},{"text":" to visit my YouTube channel.","color":"white"}]
execute as @e[tag=scientist_jozef,tag=!spoken_to] at @s if entity @a[distance=..3] run tellraw @a[distance=..8] ["",{"text":"<","color":"white"},{"text":"9Jozef","color":"gold"},{"text":"> ","color":"white"},{"text":"You can also use the buttons on the wall behind me to play the map music on the jukebox!","color":"white"}]
execute as @e[tag=scientist_jozef,tag=!spoken_to] at @s if entity @a[distance=..3] run tag @s add spoken_to

execute as @e[tag=scientist_TBMVD] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_TBMVD] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -13 162 -1
execute as @e[tag=scientist_TBMVD] at @s unless entity @a[distance=..4] run tag @s remove spoken_to
execute as @e[tag=scientist_TBMVD,tag=!spoken_to] at @s if entity @a[distance=..4] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 1.3
execute as @e[tag=scientist_TBMVD,tag=!spoken_to] at @s if entity @a[distance=..4] run tellraw @a[distance=..8] ["",{"text":"<","color":"white"},{"text":"TBMVD","color":"gold"},{"text":"> ","color":"white"},{"text":"You can replay all the individual map levels by using the buttons on the wall behind me!","color":"white"}]
execute as @e[tag=scientist_TBMVD,tag=!spoken_to] at @s if entity @a[distance=..4] run tag @s add spoken_to

execute as @e[tag=scientist_super_stanie] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4.5]
execute as @e[tag=scientist_super_stanie] at @s unless entity @a[distance=..4.5] run tp @s ~ ~ ~ facing -24 162.0 0
execute as @e[tag=scientist_super_stanie] at @s unless entity @a[distance=..4.5] run tag @s remove spoken_to
execute as @e[tag=scientist_super_stanie,tag=!spoken_to] at @s if entity @a[distance=..4.5] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 1.2
execute as @e[tag=scientist_super_stanie,tag=!spoken_to] at @s if entity @a[distance=..4.5] run tellraw @a[distance=..8] ["",{"text":"<","color":"white"},{"text":"super_stanie","color":"gold"},{"text":"> ","color":"white"},{"text":"Did you manage to get all the advancements? There are 13 secret advancements aswell!","color":"white"}]
execute as @e[tag=scientist_super_stanie,tag=!spoken_to] at @s if entity @a[distance=..4.5] run tag @s add spoken_to

execute as @e[type=minecraft:drowned,tag=scientist_watney] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[type=minecraft:drowned,tag=scientist_watney] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -8 161 -16
execute as @e[type=minecraft:drowned,tag=scientist_watney] at @s unless entity @a[distance=..4] unless entity @a[tag=listeningToJukebox] run data merge entity @s {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}}]}
execute as @e[type=minecraft:drowned,tag=scientist_watney] at @s unless entity @a[distance=..4] run tag @s remove spoken_to
execute as @e[type=minecraft:drowned,tag=scientist_watney,tag=!spoken_to] at @s if entity @a[distance=..4] run data merge entity @s {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}
execute as @e[type=minecraft:drowned,tag=scientist_watney,tag=!spoken_to] at @s if entity @a[distance=..4] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[type=minecraft:drowned,tag=scientist_watney,tag=!spoken_to] at @s if entity @a[distance=..4] run tellraw @a[distance=..8] ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Welcome to the karaoke bar!","color":"white"}]
execute as @e[type=minecraft:drowned,tag=scientist_watney,tag=!spoken_to] at @s if entity @a[distance=..4] run tag @s add spoken_to

execute as @e[tag=scientist_dance_1] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_dance_1] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -17.0 162 -11

execute as @e[tag=scientist_dance_2] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_dance_2] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -16.0 162 -15

execute as @e[tag=scientist_dance_3] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_dance_3] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -20 162 -16

execute as @e[tag=scientist_dance_4] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_dance_4] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -24.0 162 -16

execute as @e[tag=scientist_dance_5] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_dance_5] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -22 162 -13

execute as @e[tag=scientist_dance_6] at @s run tp @s ~ ~ ~ facing entity @p[distance=..4]
execute as @e[tag=scientist_dance_6] at @s unless entity @a[distance=..4] run tp @s ~ ~ ~ facing -21 162 -10.0