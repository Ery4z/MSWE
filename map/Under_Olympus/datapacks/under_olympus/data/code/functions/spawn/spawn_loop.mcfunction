###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###PLAYER OUT OF BOUNDS PROTECTION------------------------------------------------------------------------

execute as @e[tag=hibernation_door, tag=spawn_area_prop] if entity @s[scores={hibernationScore=..199}] run execute as @a[tag=!admin] unless entity @s[x=994,y=100,z=-6,dx=34,dy=6,dz=12] run title @s actionbar {"text":"You went out of bounds!","color":"red"}
execute as @e[tag=hibernation_door, tag=spawn_area_prop] if entity @s[scores={hibernationScore=..199}] run execute as @a[tag=!admin] unless entity @s[x=994,y=100,z=-6,dx=34,dy=6,dz=12] run advancement grant @s[advancements={code:secrets/outofbounds=false}] only code:secrets/outofbounds
execute as @e[tag=hibernation_door, tag=spawn_area_prop] if entity @s[scores={hibernationScore=..199}] run execute as @a[tag=!admin] unless entity @s[x=994,y=100,z=-6,dx=34,dy=6,dz=12] run tp @s 1017 102 0 90 0

###testsound buttons
execute if block 1012 103 -5 warped_button[powered=true] run playsound minecraft:fx.comms.incoming block @a 1012 103 -5 0.5
execute if block 1012 103 -5 warped_button[powered=true] run setblock 1012 103 -5 minecraft:warped_button[face=floor,facing=north,powered=false]

execute if block 1013 103 -5 warped_button[powered=true] run playsound minecraft:fx.comms.incoming block @a 1013 103 -5 0.5
execute if block 1013 103 -5 warped_button[powered=true] run setblock 1013 103 -5 minecraft:warped_button[face=floor,facing=north,powered=false]

execute if block 1014 103 -5 warped_button[powered=true] run playsound minecraft:fx.comms.incoming block @a 1014 103 -5 0.5
execute if block 1014 103 -5 warped_button[powered=true] run setblock 1014 103 -5 minecraft:warped_button[face=floor,facing=north,powered=false]

###trigger hibernation scene
execute if entity @e[tag=world_spawn,tag=button_pressed] if block 1010 103 -2 warped_button[powered=true] run tag @e[tag=world_spawn] add button_pressed_twice

execute if entity @e[tag=world_spawn,tag=!button_pressed] if block 1010 103 -2 warped_button[powered=true] run tellraw @a ["",{"text":"Warning: ","color":"red"},{"text":"Please make sure ","color":"white"},{"text":"all players ","color":"gold"},{"text":"are ready before starting your adventure. Press the button again to ","color":"white"},{"text":"confirm","color":"gold"},{"text":".","color":"white"}]
execute if entity @e[tag=world_spawn,tag=!button_pressed] if block 1010 103 -2 warped_button[powered=true] run tag @e[tag=world_spawn] add button_pressed

execute if block 1010 103 -2 warped_button[powered=true] run setblock 1010 103 -2 minecraft:warped_button[face=wall,facing=east,powered=false]

scoreboard players add @e[tag=world_spawn,tag=button_pressed_twice,scores={eventTimer=..39}] eventTimer 1

execute as @e[tag=world_spawn,scores={eventTimer=1}] run playsound minecraft:block.fire.extinguish block @a 1008 103 0 1 0.5
execute as @e[tag=world_spawn,scores={eventTimer=1}] run particle minecraft:cloud 1008 102.0 0 0 0 1 0.05 40
execute as @e[tag=world_spawn,scores={eventTimer=1}] run fill 1008 102 1 1008 102 -1 minecraft:air
execute as @e[tag=world_spawn,scores={eventTimer=1}] run fill 1008 103 1 1008 103 -1 minecraft:smooth_stone
execute as @e[tag=world_spawn,scores={eventTimer=10}] run fill 1008 103 1 1008 103 -1 minecraft:air
execute as @e[tag=world_spawn,scores={eventTimer=10}] run fill 1008 104 1 1008 104 -1 minecraft:smooth_stone
execute as @e[tag=world_spawn,scores={eventTimer=20}] run fill 1008 104 1 1008 104 -1 minecraft:air
execute as @e[tag=world_spawn,scores={eventTimer=40}] run fill 998 106 0 1002 106 0 minecraft:sea_lantern replace minecraft:blue_ice
execute as @e[tag=world_spawn,scores={eventTimer=40}] run tag @e[tag=hibernation_door] add door_open

###hibernation scene-------------------------------------------------
execute as @a at @s if entity @e[type=minecraft:armor_stand,tag=hibernation_pod,tag=spawn_area_prop,distance=0..0.4] unless entity @a[distance=0.01..1.5] run tag @s add hibernation_ready
execute as @a at @s unless entity @e[type=minecraft:armor_stand,tag=hibernation_pod,tag=spawn_area_prop,distance=0..0.8] run tag @s remove hibernation_ready
execute as @a at @s if entity @a[distance=0.01..1.5] run tag @s remove hibernation_ready

#set barrier
execute if entity @a unless entity @a[tag=!hibernation_ready] run fill 1003 101 3 1003 102 2 minecraft:barrier
execute if entity @a unless entity @a[tag=!hibernation_ready] run fill 1001 101 3 1001 102 2 minecraft:barrier
execute if entity @a unless entity @a[tag=!hibernation_ready] run fill 1002 101 2 1002 102 2 minecraft:barrier

execute if entity @a unless entity @a[tag=!hibernation_ready] run fill 999 101 3 999 102 2 minecraft:barrier
execute if entity @a unless entity @a[tag=!hibernation_ready] run fill 997 101 3 997 102 2 minecraft:barrier
execute if entity @a unless entity @a[tag=!hibernation_ready] run fill 998 101 2 998 102 2 minecraft:barrier

execute if entity @a unless entity @a[tag=!hibernation_ready] run fill 997 101 -3 997 102 -2 minecraft:barrier
execute if entity @a unless entity @a[tag=!hibernation_ready] run fill 999 101 -3 999 102 -2 minecraft:barrier
execute if entity @a unless entity @a[tag=!hibernation_ready] run fill 998 101 -2 998 102 -2 minecraft:barrier

execute if entity @a unless entity @a[tag=!hibernation_ready] run fill 1001 101 -3 1001 102 -2 minecraft:barrier
execute if entity @a unless entity @a[tag=!hibernation_ready] run fill 1003 101 -3 1003 102 -2 minecraft:barrier
execute if entity @a unless entity @a[tag=!hibernation_ready] run fill 1002 101 -2 1002 102 -2 minecraft:barrier

execute if entity @a if entity @a[tag=!hibernation_ready] run fill 1003 101 -3 997 102 3 minecraft:cave_air replace minecraft:barrier

#door animation
execute as @e[tag=hibernation_door,tag=spawn_area_prop,tag=door_open] at @s if entity @a[distance=0..2] unless entity @a[tag=!hibernation_ready] run scoreboard players add @s hibernationScore 1
execute as @e[tag=hibernation_door,tag=spawn_area_prop,tag=door_open] at @s unless entity @s[scores={hibernationScore=..0}] if entity @a[tag=!hibernation_ready] run scoreboard players remove @s hibernationScore 1

execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=0}] run fill 1002 101 3 1002 103 3 minecraft:air
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=0}] run fill 998 101 3 998 103 3 minecraft:air
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=0}] run fill 998 101 -3 998 103 -3 minecraft:air
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=0}] run fill 1002 101 -3 1002 103 -3 minecraft:air
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=0}] run data merge entity @s {Pose:{RightArm:[0f,0f,-90f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=1}] run data merge entity @s {Pose:{RightArm:[0f,0f,-88f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=2}] run data merge entity @s {Pose:{RightArm:[0f,0f,-86f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=3}] run data merge entity @s {Pose:{RightArm:[0f,0f,-84f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=4}] run data merge entity @s {Pose:{RightArm:[0f,0f,-82f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=5}] run data merge entity @s {Pose:{RightArm:[0f,0f,-80f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=6}] run data merge entity @s {Pose:{RightArm:[0f,0f,-78f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=7}] run data merge entity @s {Pose:{RightArm:[0f,0f,-76f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=8}] run data merge entity @s {Pose:{RightArm:[0f,0f,-74f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=9}] run data merge entity @s {Pose:{RightArm:[0f,0f,-72f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=10}] run data merge entity @s {Pose:{RightArm:[0f,0f,-70f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=11}] run data merge entity @s {Pose:{RightArm:[0f,0f,-68f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=12}] run data merge entity @s {Pose:{RightArm:[0f,0f,-66f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=13}] run data merge entity @s {Pose:{RightArm:[0f,0f,-64f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=14}] run data merge entity @s {Pose:{RightArm:[0f,0f,-62f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=15}] run data merge entity @s {Pose:{RightArm:[0f,0f,-60f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=16}] run data merge entity @s {Pose:{RightArm:[0f,0f,-58f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=17}] run data merge entity @s {Pose:{RightArm:[0f,0f,-56f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=18}] run data merge entity @s {Pose:{RightArm:[0f,0f,-54f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=19}] run data merge entity @s {Pose:{RightArm:[0f,0f,-52f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=20}] run data merge entity @s {Pose:{RightArm:[0f,0f,-50f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=21}] run data merge entity @s {Pose:{RightArm:[0f,0f,-48f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=22}] run data merge entity @s {Pose:{RightArm:[0f,0f,-46f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=23}] run data merge entity @s {Pose:{RightArm:[0f,0f,-44f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=24}] run data merge entity @s {Pose:{RightArm:[0f,0f,-42f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=25}] run data merge entity @s {Pose:{RightArm:[0f,0f,-40f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=26}] run data merge entity @s {Pose:{RightArm:[0f,0f,-38f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=27}] run data merge entity @s {Pose:{RightArm:[0f,0f,-36f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=28}] run data merge entity @s {Pose:{RightArm:[0f,0f,-34f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=29}] run data merge entity @s {Pose:{RightArm:[0f,0f,-32f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=30}] run data merge entity @s {Pose:{RightArm:[0f,0f,-30f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=31}] run data merge entity @s {Pose:{RightArm:[0f,0f,-28f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=32}] run data merge entity @s {Pose:{RightArm:[0f,0f,-26f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=33}] run data merge entity @s {Pose:{RightArm:[0f,0f,-24f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=34}] run data merge entity @s {Pose:{RightArm:[0f,0f,-22f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=35}] run data merge entity @s {Pose:{RightArm:[0f,0f,-20f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=36}] run data merge entity @s {Pose:{RightArm:[0f,0f,-18f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=37}] run data merge entity @s {Pose:{RightArm:[0f,0f,-16f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=38}] run data merge entity @s {Pose:{RightArm:[0f,0f,-14f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=39}] run data merge entity @s {Pose:{RightArm:[0f,0f,-12f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=40}] run data merge entity @s {Pose:{RightArm:[0f,0f,-10f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=41}] run data merge entity @s {Pose:{RightArm:[0f,0f,-9f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=42}] run data merge entity @s {Pose:{RightArm:[0f,0f,-8f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=43}] run data merge entity @s {Pose:{RightArm:[0f,0f,-7f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=44}] run data merge entity @s {Pose:{RightArm:[0f,0f,-6f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=45}] run data merge entity @s {Pose:{RightArm:[0f,0f,-5f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=46}] run data merge entity @s {Pose:{RightArm:[0f,0f,-4f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=47}] run data merge entity @s {Pose:{RightArm:[0f,0f,-3f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=48}] run data merge entity @s {Pose:{RightArm:[0f,0f,-2f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=49}] run data merge entity @s {Pose:{RightArm:[0f,0f,-1f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=50}] run data merge entity @s {Pose:{RightArm:[0f,0f,0f]}}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] if entity @s[scores={hibernationScore=50}] run fill 1002 101 -4 998 101 4 minecraft:sea_lantern replace minecraft:blue_ice

#sleep gas
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=70..170}] run particle minecraft:poof ~ ~-1 ~ 0.1 0.1 0.1 0.01 2

#falling asleep
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=139}] run item replace entity @p weapon.offhand with minecraft:air
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=140}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:65}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=141}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:66}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=142}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:67}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=143}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:68}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=144}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:69}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=145}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:67}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=146}] run item replace entity @p weapon.offhand with minecraft:air
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=156}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:65}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=157}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:66}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=158}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:67}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=159}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:68}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=160}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:69}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=161}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:70}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=162}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:71}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=163}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:72}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=164}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:73}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=165}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:74}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=166}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:70}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=167}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:67}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=168}] run item replace entity @p weapon.offhand with minecraft:air
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=175}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:65}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=176}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:66}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=177}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:67}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=178}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:68}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=179}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:69}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=180}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:70}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=181}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:71}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=182}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:72}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=183}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:73}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=184}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:74}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=185}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:72}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=186}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:70}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=187}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:71}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=188}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:72}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=189}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:73}
execute as @e[tag=hibernation_door,tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=190}] run item replace entity @p weapon.offhand with minecraft:poisonous_potato{CustomModelData:74}

#grant advancement
execute as @e[tag=hibernation_door, tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=200}] run advancement grant @a[advancements={code:story/themartian=false}] only code:story/themartian

#tp to olympus
execute as @e[tag=hibernation_door, tag=spawn_area_prop] at @s if entity @s[scores={hibernationScore=200}] run scoreboard players set @e[tag=hibernation_spawn] eventTimer 0

execute as @e[tag=hibernation_door, tag=spawn_area_prop, tag=door_1] at @s if entity @s[scores={hibernationScore=200}] run tp @p[distance=0..2] 150.5 63.5 -51.5
execute as @e[tag=hibernation_door, tag=spawn_area_prop, tag=door_2] at @s if entity @s[scores={hibernationScore=200}] run tp @p[distance=0..2] 154.5 63.5 -51.5
execute as @e[tag=hibernation_door, tag=spawn_area_prop, tag=door_3] at @s if entity @s[scores={hibernationScore=200}] run tp @p[distance=0..2] 154.5 63.5 -59.5
execute as @e[tag=hibernation_door, tag=spawn_area_prop, tag=door_4] at @s if entity @s[scores={hibernationScore=200}] run tp @p[distance=0..2] 150.5 63.5 -59.5