###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###PLAYER OUT OF BOUNDS PROTECTION------------------------------------------------------------------------

execute as @a[tag=!admin] unless entity @s[x=-45,y=61,z=-61,dx=221,dy=34,dz=143] run title @s actionbar {"text":"You went out of bounds!","color":"red"}
execute as @a[tag=!admin] unless entity @s[x=-45,y=61,z=-61,dx=221,dy=34,dz=143] run advancement grant @s[advancements={code:secrets/outofbounds=false}] only code:secrets/outofbounds
execute as @a[tag=!admin] unless entity @s[x=-45,y=61,z=-61,dx=221,dy=34,dz=143] run tp @s 126 62 -44 90 0

###DOOR MAIN HALL

execute as @e[tag=hibernation_spawn,tag=!button_pressed] if block 132 64 -45 warped_button[powered=true] run playsound minecraft:block.fire.extinguish block @a 131 64 -44 1 0.5
execute as @e[tag=hibernation_spawn,tag=!button_pressed] if block 132 64 -45 warped_button[powered=true] run particle minecraft:cloud 131 63.0 -44 0 0 0.5 0.05 20
execute as @e[tag=hibernation_spawn,tag=!button_pressed] if block 132 64 -45 warped_button[powered=true] run tag @s add button_pressed

scoreboard players add @e[tag=hibernation_spawn,tag=button_pressed,tag=!door_open] eventTimer 1

execute as @e[tag=hibernation_spawn,scores={eventTimer=1}] run fill 131 63 -43 131 63 -45 minecraft:air
execute as @e[tag=hibernation_spawn,scores={eventTimer=1}] run fill 131 64 -43 131 64 -45 minecraft:smooth_stone
execute as @e[tag=hibernation_spawn,scores={eventTimer=10}] run fill 131 64 -43 131 64 -45 minecraft:air
execute as @e[tag=hibernation_spawn,scores={eventTimer=10}] run fill 131 65 -43 131 65 -45 minecraft:smooth_stone
execute as @e[tag=hibernation_spawn,scores={eventTimer=20}] run fill 131 65 -43 131 65 -45 minecraft:air

execute as @e[tag=hibernation_spawn,scores={eventTimer=20}] run tag @s add door_open

###TRIGGER SCENE 1 EVENTS---------------------------------------------------------------------------------------------------

execute if entity @a[x=73,y=61,z=-57,dx=102,dy=15,dz=57] run function code:scene_1/scene_1_canteen_events
execute if entity @a[x=-7,y=61,z=-47,dx=80,dy=15,dz=56] run function code:scene_1/scene_1_hallway_events
execute if entity @a[x=-44,y=61,z=8,dx=107,dy=20,dz=74] run function code:scene_1/scene_1_workshop_events

###WANDERING SCIENTIST ROUTINE---------------------------------------------------------------------------------------------------
scoreboard players add @e[tag=scientist_wandering] npcTimer 1

execute as @e[tag=scientist_wandering,scores={npcTimer=0..130}] at @s run tp @s ~0.1 ~ ~ -90 0
execute as @e[tag=scientist_wandering,scores={npcTimer=25}] at @s run tp @s ~ ~0.5 ~ ~ ~
execute as @e[tag=scientist_wandering,scores={npcTimer=35}] at @s run tp @s ~ ~0.5 ~ ~ ~
execute as @e[tag=scientist_wandering,scores={npcTimer=55}] at @s run tp @s ~ ~-0.5 ~ ~ ~
execute as @e[tag=scientist_wandering,scores={npcTimer=65}] at @s run tp @s ~ ~-0.5 ~ ~ ~
execute as @e[tag=scientist_wandering,scores={npcTimer=131..310}] at @s run tp @s ~ ~ ~0.1 0 0
execute as @e[tag=scientist_wandering,scores={npcTimer=311..530}] at @s run tp @s ~0.1 ~ ~ -90 0
execute as @e[tag=scientist_wandering,scores={npcTimer=531..590}] at @s run tp @s ~ ~ ~-0.1 180 0
execute as @e[tag=scientist_wandering,scores={npcTimer=585}] at @s run tp @s ~ ~0.5 ~ ~ ~
execute as @e[tag=scientist_wandering,scores={npcTimer=590}] at @s run tp @s ~ ~0.5 ~ ~ ~

execute as @e[tag=scientist_wandering,scores={npcTimer=701..800}] at @s run tp @s ~ ~ ~0.1 0 0
execute as @e[tag=scientist_wandering,scores={npcTimer=700}] at @s run tp @s ~ ~-0.5 ~ ~ ~
execute as @e[tag=scientist_wandering,scores={npcTimer=705}] at @s run tp @s ~ ~-0.5 ~ ~ ~
execute as @e[tag=scientist_wandering,scores={npcTimer=801..850}] at @s run tp @s ~0.1 ~ ~ -90 0
execute as @e[tag=scientist_wandering,scores={npcTimer=870}] run data merge entity @s {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:30}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}
execute as @e[tag=scientist_wandering,scores={npcTimer=851..870}] at @s run tp @s ~ ~ ~0.1 0 0
execute as @e[tag=scientist_wandering,scores={npcTimer=1001}] run data merge entity @s {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}

execute as @e[tag=scientist_wandering,scores={npcTimer=1001..1060}] at @s run tp @s ~ ~ ~-0.1 180 0
execute as @e[tag=scientist_wandering,scores={npcTimer=1061..1330}] at @s run tp @s ~-0.1 ~ ~ 90 0
execute as @e[tag=scientist_wandering,scores={npcTimer=1331..1510}] at @s run tp @s ~ ~ ~-0.1 180 0
execute as @e[tag=scientist_wandering,scores={npcTimer=1511..1640}] at @s run tp @s ~-0.1 ~ ~ 90 0
execute as @e[tag=scientist_wandering,scores={npcTimer=1575}] at @s run tp @s ~ ~0.5 ~ ~ ~
execute as @e[tag=scientist_wandering,scores={npcTimer=1585}] at @s run tp @s ~ ~0.5 ~ ~ ~
execute as @e[tag=scientist_wandering,scores={npcTimer=1605}] at @s run tp @s ~ ~-0.5 ~ ~ ~
execute as @e[tag=scientist_wandering,scores={npcTimer=1615}] at @s run tp @s ~ ~-0.5 ~ ~ ~

scoreboard players set @e[tag=scientist_wandering,scores={npcTimer=1800..}] npcTimer 0

###NPC SOUND EFFECT TIMER--------------------------------------------------------------------------------------------------
scoreboard players add @e[tag=scientist_spy] npcSoundTimer 1

execute if entity @e[tag=scientist_spy,scores={npcSoundTimer=50}] as @e[tag=scientist_sitting,sort=random,limit=1] at @s run playsound scientist.cough neutral @a ~ ~ ~ 0.4 1

scoreboard players set @e[tag=scientist_spy,scores={npcSoundTimer=50..}] npcSoundTimer 0

###DR WATNEY BEHAVIOUR-----------------------------------------------------------------------------------------------------
execute as @e[tag=scientist_watney] at @s run tp @s ~ ~ ~ facing entity @p[distance=..8]

execute at @e[tag=leader,tag=!waiting,tag=!standing] run tp @e[tag=scientist_watney] ~ ~6 ~ ~ ~
execute as @e[tag=leader,tag=!waiting,tag=!standing] run data merge entity @s {NoAI:0}
execute at @e[tag=leader,tag=waiting,tag=!standing] run tp @e[tag=scientist_watney] ~ ~6 ~ facing entity @p
execute as @e[tag=leader,tag=waiting,tag=!standing] run data merge entity @s {NoAI:1}
execute at @e[tag=leader,tag=!waiting,tag=standing] run tp @e[tag=scientist_watney] ~ ~6 ~
execute as @e[tag=leader,tag=!waiting,tag=standing] run data merge entity @s {NoAI:1}

execute as @e[tag=leader,scores={leaderProgress=0}] run function code:scene_1/scene_1_watney_0

execute as @e[tag=leader,scores={leaderProgress=1}] run function code:scene_1/scene_1_watney_1

execute as @e[tag=leader,scores={leaderProgress=2}] run function code:scene_1/scene_1_watney_2

execute as @e[tag=leader,scores={leaderProgress=3}] run function code:scene_1/scene_1_watney_3

execute as @e[tag=leader,scores={leaderProgress=4}] run function code:scene_1/scene_1_watney_4

execute as @e[tag=leader,scores={leaderProgress=5}] run function code:scene_1/scene_1_watney_5

execute as @e[tag=leader,scores={leaderProgress=6}] run function code:scene_1/scene_1_watney_6

execute as @e[tag=leader,scores={leaderProgress=7}] run function code:scene_1/scene_1_watney_7

execute as @e[tag=leader,scores={leaderProgress=8}] run function code:scene_1/scene_1_watney_8

execute as @e[tag=leader,scores={leaderProgress=9}] run function code:scene_1/scene_1_watney_9

execute as @e[tag=leader,scores={leaderProgress=10}] run function code:scene_1/scene_1_watney_10

execute as @e[tag=leader,scores={leaderProgress=11}] run function code:scene_1/scene_1_watney_11

execute as @e[tag=leader,scores={leaderProgress=12}] run function code:scene_1/scene_1_watney_12

execute as @e[tag=leader,scores={leaderProgress=13}] run function code:scene_1/scene_1_watney_13

execute as @e[tag=leader,scores={leaderProgress=14}] run function code:scene_1/scene_1_watney_14

execute as @e[tag=leader,scores={leaderProgress=15}] run function code:scene_1/scene_1_watney_15

execute as @e[tag=leader,scores={leaderProgress=16}] run function code:scene_1/scene_1_watney_16

execute as @e[tag=leader,scores={leaderProgress=17}] run function code:scene_1/scene_1_watney_17

execute as @e[tag=leader,scores={leaderProgress=18}] run function code:scene_1/scene_1_watney_18

execute as @e[tag=leader,scores={leaderProgress=19}] run function code:scene_1/scene_1_watney_19

execute as @e[tag=leader,scores={leaderProgress=20}] run function code:scene_1/scene_1_watney_20

execute as @e[tag=leader,scores={leaderProgress=21}] run function code:scene_1/scene_1_watney_21

execute as @e[tag=leader,scores={leaderProgress=22}] run function code:scene_1/scene_1_watney_22

execute as @e[tag=leader,scores={leaderProgress=23}] run function code:scene_1/scene_1_watney_23

execute as @e[tag=leader,scores={leaderProgress=24}] run function code:scene_1/scene_1_watney_24

execute as @e[tag=leader,scores={leaderProgress=25}] run function code:scene_1/scene_1_watney_25

execute as @e[tag=leader,scores={leaderProgress=26}] run function code:scene_1/scene_1_watney_26

execute as @e[tag=leader,scores={leaderProgress=27}] run function code:scene_1/scene_1_watney_27

execute as @e[tag=leader,scores={leaderProgress=28}] run function code:scene_1/scene_1_watney_28

execute as @e[tag=leader,scores={leaderProgress=29}] run function code:scene_1/scene_1_watney_29

execute as @e[tag=leader,scores={leaderProgress=30}] run function code:scene_1/scene_1_watney_30

execute as @e[tag=leader,scores={leaderProgress=31}] run function code:scene_1/scene_1_watney_31

execute as @e[tag=leader,scores={leaderProgress=32}] run function code:scene_1/scene_1_watney_32