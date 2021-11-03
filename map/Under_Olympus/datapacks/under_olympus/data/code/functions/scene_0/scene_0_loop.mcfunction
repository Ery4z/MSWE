###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=hibernation_door,tag=hibernation_chamber_player,tag=!hibernation_finished] at @s if entity @a[distance=0..2] run scoreboard players add @s hibernationScore 1

execute as @e[tag=hibernation_door,tag=hibernation_chamber_player,tag=door_1] at @s if entity @e[scores={hibernationScore=1}] if entity @p[distance=0..2] run fill 150 63 -52 150 65 -52 air
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player,tag=door_2] at @s if entity @e[scores={hibernationScore=1}] if entity @p[distance=0..2] run fill 154 63 -52 154 65 -52 air
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player,tag=door_3] at @s if entity @e[scores={hibernationScore=1}] if entity @p[distance=0..2] run fill 154 63 -60 154 65 -60 air
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player,tag=door_4] at @s if entity @e[scores={hibernationScore=1}] if entity @p[distance=0..2] run fill 150 63 -60 150 65 -60 air

execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @e[scores={hibernationScore=10}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:74}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=11}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:73}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=12}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:72}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=13}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:71}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=14}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:72}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=15}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:74}

execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=24}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:73}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=25}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:72}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=26}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:71}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=27}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:70}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=28}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:69}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=29}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:70}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=30}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:72}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=31}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:74}

execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=40}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:73}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=41}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:72}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=42}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:71}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=43}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:70}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=44}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:69}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=45}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:68}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=46}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:67}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=47}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:66}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=48}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:65}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=49}] run item replace entity @p weapon.offhand with minecraft:air

execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] at @s if entity @s[scores={hibernationScore=130..230}] run particle minecraft:poof ~ ~-1 ~ 0.1 0.1 0.1 0.01 2

execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=250}] run data merge entity @s {Pose:{RightArm:[0f,0f,0f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=251}] run data merge entity @s {Pose:{RightArm:[0f,0f,-1f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=252}] run data merge entity @s {Pose:{RightArm:[0f,0f,-2f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=253}] run data merge entity @s {Pose:{RightArm:[0f,0f,-3f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=254}] run data merge entity @s {Pose:{RightArm:[0f,0f,-4f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=255}] run data merge entity @s {Pose:{RightArm:[0f,0f,-5f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=256}] run data merge entity @s {Pose:{RightArm:[0f,0f,-6f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=257}] run data merge entity @s {Pose:{RightArm:[0f,0f,-7f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=258}] run data merge entity @s {Pose:{RightArm:[0f,0f,-8f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=259}] run data merge entity @s {Pose:{RightArm:[0f,0f,-9f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=260}] run data merge entity @s {Pose:{RightArm:[0f,0f,-10f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=261}] run data merge entity @s {Pose:{RightArm:[0f,0f,-12f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=262}] run data merge entity @s {Pose:{RightArm:[0f,0f,-14f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=263}] run data merge entity @s {Pose:{RightArm:[0f,0f,-16f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=264}] run data merge entity @s {Pose:{RightArm:[0f,0f,-18f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=265}] run data merge entity @s {Pose:{RightArm:[0f,0f,-20f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=266}] run data merge entity @s {Pose:{RightArm:[0f,0f,-22f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=267}] run data merge entity @s {Pose:{RightArm:[0f,0f,-24f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=268}] run data merge entity @s {Pose:{RightArm:[0f,0f,-26f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=269}] run data merge entity @s {Pose:{RightArm:[0f,0f,-28f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=270}] run data merge entity @s {Pose:{RightArm:[0f,0f,-30f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=271}] run data merge entity @s {Pose:{RightArm:[0f,0f,-32f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=272}] run data merge entity @s {Pose:{RightArm:[0f,0f,-34f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=273}] run data merge entity @s {Pose:{RightArm:[0f,0f,-36f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=274}] run data merge entity @s {Pose:{RightArm:[0f,0f,-38f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=275}] run data merge entity @s {Pose:{RightArm:[0f,0f,-40f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=276}] run data merge entity @s {Pose:{RightArm:[0f,0f,-42f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=277}] run data merge entity @s {Pose:{RightArm:[0f,0f,-44f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=278}] run data merge entity @s {Pose:{RightArm:[0f,0f,-46f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=279}] run data merge entity @s {Pose:{RightArm:[0f,0f,-48f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=280}] run data merge entity @s {Pose:{RightArm:[0f,0f,-50f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=281}] run data merge entity @s {Pose:{RightArm:[0f,0f,-52f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=282}] run data merge entity @s {Pose:{RightArm:[0f,0f,-54f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=283}] run data merge entity @s {Pose:{RightArm:[0f,0f,-56f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=284}] run data merge entity @s {Pose:{RightArm:[0f,0f,-58f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=285}] run data merge entity @s {Pose:{RightArm:[0f,0f,-60f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=286}] run data merge entity @s {Pose:{RightArm:[0f,0f,-62f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=287}] run data merge entity @s {Pose:{RightArm:[0f,0f,-64f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=288}] run data merge entity @s {Pose:{RightArm:[0f,0f,-66f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=289}] run data merge entity @s {Pose:{RightArm:[0f,0f,-68f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=290}] run data merge entity @s {Pose:{RightArm:[0f,0f,-70f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=291}] run data merge entity @s {Pose:{RightArm:[0f,0f,-72f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=292}] run data merge entity @s {Pose:{RightArm:[0f,0f,-74f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=293}] run data merge entity @s {Pose:{RightArm:[0f,0f,-76f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=294}] run data merge entity @s {Pose:{RightArm:[0f,0f,-78f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=295}] run data merge entity @s {Pose:{RightArm:[0f,0f,-80f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=296}] run data merge entity @s {Pose:{RightArm:[0f,0f,-82f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=297}] run data merge entity @s {Pose:{RightArm:[0f,0f,-84f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=298}] run data merge entity @s {Pose:{RightArm:[0f,0f,-86f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=299}] run data merge entity @s {Pose:{RightArm:[0f,0f,-88f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=300}] run data merge entity @s {Pose:{RightArm:[0f,0f,-90f]}}
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=300}] run fill 154 63 -61 150 63 -51 minecraft:sea_lantern replace minecraft:blue_ice

execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=300}] run fill 155 63 -52 155 65 -52 minecraft:air
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=300}] run fill 154 63 -53 154 65 -53 minecraft:air
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=300}] run fill 153 63 -52 153 65 -52 minecraft:air

execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=300}] run fill 151 63 -52 151 65 -52 minecraft:air
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=300}] run fill 150 63 -53 150 65 -53 minecraft:air
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=300}] run fill 149 63 -52 149 65 -52 minecraft:air

execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=300}] run fill 149 63 -60 149 65 -60 minecraft:air
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=300}] run fill 150 63 -59 150 65 -59 minecraft:air
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=300}] run fill 151 63 -60 151 65 -60 minecraft:air

execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=300}] run fill 153 63 -60 153 65 -60 minecraft:air
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=300}] run fill 154 63 -59 154 65 -59 minecraft:air
execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=300}] run fill 155 63 -60 155 65 -60 minecraft:air

execute as @e[tag=hibernation_door,tag=hibernation_chamber_player] if entity @s[scores={hibernationScore=300}] run tag @e[tag=hibernation_door,tag=hibernation_chamber_player] add hibernation_finished

execute as @e[tag=hibernation_spawn,tag=!button_pressed] if block 157 64 -51 warped_button[powered=true] run playsound minecraft:block.fire.extinguish block @a 158.0 64 -50 1 0.5
execute as @e[tag=hibernation_spawn,tag=!button_pressed] if block 157 64 -51 warped_button[powered=true] run particle minecraft:cloud 158.0 63.0 -50 0.5 0 0 0.05 20
execute as @e[tag=hibernation_spawn,tag=!button_pressed] if block 157 64 -51 warped_button[powered=true] run tag @s add button_pressed

scoreboard players add @e[tag=hibernation_spawn,tag=button_pressed] eventTimer 1

execute as @e[tag=hibernation_spawn,scores={eventTimer=1}] run execute as @a[tag=!admin] unless entity @s[x=148,y=63,z=-61,dx=12,dy=6,dz=10] run tp @s 152 63 -56
execute as @e[tag=hibernation_spawn,scores={eventTimer=1}] run fill 158 63 -50 157 63 -50 minecraft:air
execute as @e[tag=hibernation_spawn,scores={eventTimer=1}] run fill 158 64 -50 157 64 -50 minecraft:smooth_stone
execute as @e[tag=hibernation_spawn,scores={eventTimer=10}] run fill 158 64 -50 157 64 -50 minecraft:air
execute as @e[tag=hibernation_spawn,scores={eventTimer=10}] run fill 158 65 -50 157 65 -50 minecraft:smooth_stone
execute as @e[tag=hibernation_spawn,scores={eventTimer=20}] run fill 158 65 -50 157 65 -50 minecraft:air

execute as @e[tag=hibernation_spawn,scores={eventTimer=80}] run fill 168 61 -49 176 70 -39 minecraft:sea_lantern replace minecraft:blue_ice
execute as @e[tag=hibernation_spawn,scores={eventTimer=80}] run playsound minecraft:fx.light block @a 172.0 68 -44 1 1
execute as @e[tag=hibernation_spawn,scores={eventTimer=100}] run fill 161 61 -49 167 70 -39 minecraft:sea_lantern replace minecraft:blue_ice
execute as @e[tag=hibernation_spawn,scores={eventTimer=100}] run playsound minecraft:fx.light block @a 165.0 68 -44 1 1
execute as @e[tag=hibernation_spawn,scores={eventTimer=120}] run fill 154 61 -49 160 70 -39 minecraft:sea_lantern replace minecraft:blue_ice
execute as @e[tag=hibernation_spawn,scores={eventTimer=120}] run playsound minecraft:fx.light block @a 158.0 68 -44 1 1
execute as @e[tag=hibernation_spawn,scores={eventTimer=140}] run fill 147 61 -49 153 70 -39 minecraft:sea_lantern replace minecraft:blue_ice
execute as @e[tag=hibernation_spawn,scores={eventTimer=140}] run playsound minecraft:fx.light block @a 151.0 68 -44 1 1
execute as @e[tag=hibernation_spawn,scores={eventTimer=160}] run fill 140 61 -49 146 70 -39 minecraft:sea_lantern replace minecraft:blue_ice
execute as @e[tag=hibernation_spawn,scores={eventTimer=160}] run playsound minecraft:fx.light block @a 144.0 68 -44 1 1
execute as @e[tag=hibernation_spawn,scores={eventTimer=180}] run fill 133 61 -49 139 70 -39 minecraft:sea_lantern replace minecraft:blue_ice
execute as @e[tag=hibernation_spawn,scores={eventTimer=180}] run playsound minecraft:fx.light block @a 137.0 68 -44 1 1

execute as @e[tag=hibernation_spawn,scores={eventTimer=180}] run tag @e[tag=hibernation_spawn] remove button_pressed
execute as @e[tag=hibernation_spawn,scores={eventTimer=180}] run scoreboard players set progressTracker advProgress 5
execute as @e[tag=hibernation_spawn,scores={eventTimer=180}] run scoreboard players set @s eventTimer 0

###PLAYER OUT OF BOUNDS PROTECTION------------------------------------------------------------------------

execute as @a[tag=!admin] unless entity @s[x=131,y=61,z=-61,dx=45,dy=8,dz=34] run title @s actionbar {"text":"You went out of bounds!","color":"red"}
execute as @a[tag=!admin] unless entity @s[x=131,y=61,z=-61,dx=45,dy=8,dz=34] run advancement grant @s[advancements={code:secrets/outofbounds=false}] only code:secrets/outofbounds
execute as @a[tag=!admin] unless entity @s[x=131,y=61,z=-61,dx=45,dy=8,dz=34] run tp @s 152 63 -56 -90 0