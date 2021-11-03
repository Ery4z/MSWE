###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###PLAYER OUT OF BOUNDS PROTECTION------------------------------------------------------------------------

execute as @a[tag=!admin] unless entity @s[x=-44,y=57,z=63,dx=209,dy=123,dz=167] run title @s actionbar {"text":"You went out of bounds!","color":"red"}
execute as @a[tag=!admin] unless entity @s[x=-44,y=57,z=63,dx=209,dy=123,dz=167] run advancement grant @s[advancements={code:secrets/outofbounds=false}] only code:secrets/outofbounds
execute as @a[tag=!admin] unless entity @s[x=-44,y=57,z=63,dx=209,dy=123,dz=167] run tp @s 152 162 68 0 0

###MAKE NPC LOOK IN PLAYER'S DIRECTION-------------------------------------------------------------------------------------
#execute as @e[tag=scientist_watney] at @s run tp @s ~ ~ ~ facing entity @p[distance=..8]

###ALARM SOUNDS------------------------------------------------------------------------------------------------------------
scoreboard players add alarmTracker eventTimer 1
execute if score alarmTracker eventTimer matches 8 run execute at @e[tag=alarm_on] run playsound minecraft:fx.alarm block @a ~ ~ ~ 0.3 1
execute if score alarmTracker eventTimer matches 8 run scoreboard players set alarmTracker eventTimer 0

###DR WATNEY BEHAVIOUR-----------------------------------------------------------------------------------------------------
execute at @e[tag=leader,tag=!waiting,tag=!standing] run tp @e[tag=scientist_watney] ~ ~6 ~ ~ ~
execute as @e[tag=leader,tag=!waiting,tag=!standing] run data merge entity @s {NoAI:0}
execute at @e[tag=leader,tag=waiting,tag=!standing] run tp @e[tag=scientist_watney] ~ ~6 ~ facing entity @p
execute as @e[tag=leader,tag=waiting,tag=!standing] run data merge entity @s {NoAI:1}
execute at @e[tag=leader,tag=!waiting,tag=standing] run tp @e[tag=scientist_watney] ~ ~6 ~
execute as @e[tag=leader,tag=!waiting,tag=standing] run data merge entity @s {NoAI:1}

execute as @e[tag=leader,scores={leaderProgress=0}] run tag @s add waiting
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=32,y=162,z=139,dx=10,dy=6,dz=14] run clone 22 172 159 28 176 159 22 163 162
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=32,y=162,z=139,dx=10,dy=6,dz=14] run playsound minecraft:entity.generic.explode block @a 25 163 152 4 1
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=32,y=162,z=139,dx=10,dy=6,dz=14] run particle minecraft:explosion 25 164 154 2 2 2 3 50 force
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=32,y=162,z=139,dx=10,dy=6,dz=14] run particle minecraft:cloud 25 164 156 2 2 2 0.3 500 force
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=32,y=162,z=139,dx=10,dy=6,dz=14] run particle minecraft:poof 25 164 156 2 2 2 0.3 500 force
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=32,y=162,z=139,dx=10,dy=6,dz=14] run setblock 26 162 155 minecraft:fire
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=32,y=162,z=139,dx=10,dy=6,dz=14] run setblock 20 162 158 minecraft:fire
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=32,y=162,z=139,dx=10,dy=6,dz=14] run summon falling_block 26 167 161 {BlockState:{Name:"minecraft:smooth_stone"},Time:1,Motion:[0.2,0.1,-0.6]}
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=32,y=162,z=139,dx=10,dy=6,dz=14] run summon falling_block 24 165 161 {BlockState:{Name:"minecraft:iron_block"},Time:1,Motion:[-0.2,0.1,-0.6]}
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=32,y=162,z=139,dx=10,dy=6,dz=14] run summon falling_block 25 166 161 {BlockState:{Name:"minecraft:iron_block"},Time:1,Motion:[0.14,0.1,-0.8]}
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=32,y=162,z=139,dx=10,dy=6,dz=14] run summon falling_block 23 166 161 {BlockState:{Name:"minecraft:iron_block"},Time:1,Motion:[-0.18,0.1,-0.9]}
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=32,y=162,z=139,dx=10,dy=6,dz=14] run summon falling_block 27 165 161 {BlockState:{Name:"minecraft:iron_block"},Time:1,Motion:[0.1,0.1,-0.3]}
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=32,y=162,z=139,dx=10,dy=6,dz=14] run summon falling_block 23 164 161 {BlockState:{Name:"minecraft:iron_block"},Time:1,Motion:[-0.1,0.1,-0.4]}
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=32,y=162,z=139,dx=10,dy=6,dz=14] run summon falling_block 25 163 161 {BlockState:{Name:"minecraft:smooth_stone"},Time:1,Motion:[0.0,0.2,-0.2]}
execute as @e[tag=leader,scores={leaderProgress=0}] at @e[tag=scientist_watney] if entity @a[x=32,y=162,z=139,dx=10,dy=6,dz=14] run scoreboard players set @s leaderProgress 1

execute as @e[tag=leader,scores={leaderProgress=1}] run tag @s remove waiting
execute as @e[tag=leader,scores={leaderProgress=1}] at @s run data modify entity @s WanderTarget.X set value 25
execute as @e[tag=leader,scores={leaderProgress=1}] at @s run data modify entity @s WanderTarget.Y set value 150
execute as @e[tag=leader,scores={leaderProgress=1}] at @s run data modify entity @s WanderTarget.Z set value 165
execute as @e[tag=leader,scores={leaderProgress=1},x=25,y=156,z=165,dx=0,dy=0,dz=0] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=1},x=25,y=156,z=165,dx=0,dy=0,dz=0] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"There you are! Thank god you made it!","color":"white"}]
scoreboard players set @e[tag=leader,scores={leaderProgress=1},x=25,y=156,z=165,dx=0,dy=0,dz=0] leaderProgress 2

execute as @e[tag=leader,scores={leaderProgress=2}] run data modify entity @s WanderTarget.X set value 26
execute as @e[tag=leader,scores={leaderProgress=2}] run data modify entity @s WanderTarget.Y set value 150
execute as @e[tag=leader,scores={leaderProgress=2}] run data modify entity @s WanderTarget.Z set value 159
scoreboard players set @e[tag=leader,scores={leaderProgress=2},x=26,y=156,z=159,dx=0,dy=0,dz=0] leaderProgress 3

execute as @e[tag=leader,scores={leaderProgress=3}] at @e[tag=scientist_watney] if entity @a[distance=..4] run tag @s add waiting
execute as @e[tag=leader,scores={leaderProgress=3}] at @e[tag=scientist_watney] unless entity @a[distance=..4] run tag @s remove waiting
execute as @e[tag=leader,scores={leaderProgress=3}] at @s run data modify entity @s WanderTarget.X set from entity @p Pos[0]
execute as @e[tag=leader,scores={leaderProgress=3}] at @s run data modify entity @s WanderTarget.Y set from entity @p Pos[1]
execute as @e[tag=leader,scores={leaderProgress=3}] at @s run data modify entity @s WanderTarget.Z set from entity @p Pos[2]

execute as @e[tag=leader,scores={leaderProgress=3}] run scoreboard players add @e[tag=scientist_watney] dialogTimer 1
execute as @e[tag=leader,scores={leaderProgress=3}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.no neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=3}] if entity @e[tag=scientist_watney,scores={dialogTimer=1}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"I was locked inside the vehicle hangar, so i had to.. uh.. override this door..","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=3}] if entity @e[tag=scientist_watney,scores={dialogTimer=180}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.no neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=3}] if entity @e[tag=scientist_watney,scores={dialogTimer=180}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Listen, we don't have much time. As you know, our systems have started to malfunction because of the recent seismic activities.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=3}] if entity @e[tag=scientist_watney,scores={dialogTimer=360}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.no neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=3}] if entity @e[tag=scientist_watney,scores={dialogTimer=360}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"The activities are now stronger than ever, and when that big one hit us, the cooling system of the nuclear reactor started to malfunction aswell!","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=3}] if entity @e[tag=scientist_watney,scores={dialogTimer=540}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.no neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=3}] if entity @e[tag=scientist_watney,scores={dialogTimer=540}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"All personnel had to be evacuated, but i couldn't leave you here by yourself.","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=3}] if entity @e[tag=scientist_watney,scores={dialogTimer=720}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.no neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=3}] if entity @e[tag=scientist_watney,scores={dialogTimer=720}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"By the time you woke up, a full lockdown was already triggered, which means we are trapped down here..","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=3}] if entity @e[tag=scientist_watney,scores={dialogTimer=900}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.no neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=3}] if entity @e[tag=scientist_watney,scores={dialogTimer=900}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"Brute-forcing our way up will take too much time, so we have to.. well.. i mean you have to fix the nuclear reactor. There is no other way!","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=3}] if entity @e[tag=scientist_watney,scores={dialogTimer=980}] run scoreboard players set @s leaderProgress 4

execute as @e[tag=leader,scores={leaderProgress=4}] run scoreboard players set @e[tag=scientist_watney] dialogTimer 0
execute as @e[tag=leader,scores={leaderProgress=4}] run tag @s remove waiting
execute as @e[tag=leader,scores={leaderProgress=4}] run data modify entity @s WanderTarget.X set value 26
execute as @e[tag=leader,scores={leaderProgress=4}] run data modify entity @s WanderTarget.Y set value 150
execute as @e[tag=leader,scores={leaderProgress=4}] run data modify entity @s WanderTarget.Z set value 114
scoreboard players set @e[tag=leader,scores={leaderProgress=4},x=26,y=156,z=114,dx=0,dy=0,dz=0] leaderProgress 5

execute as @e[tag=leader,scores={leaderProgress=5}] run tag @s add waiting
execute as @e[tag=leader,scores={leaderProgress=5}] run data merge entity @e[tag=scientist_watney,limit=1] {Glowing:1}
execute as @e[tag=leader,scores={leaderProgress=5}] at @e[tag=scientist_watney] if entity @a[distance=..5] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ 0.4 0.9
execute as @e[tag=leader,scores={leaderProgress=5}] at @e[tag=scientist_watney] if entity @a[distance=..5] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"This elevator will take you down to the nuclear reactor. I won't be able to help you remotely, but i believe in you!","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=5}] at @e[tag=scientist_watney] if entity @a[distance=..5] run scoreboard players set @s leaderProgress 6

execute as @e[tag=leader,scores={leaderProgress=6}] run data merge entity @e[tag=scientist_watney,limit=1] {Glowing:0}
execute as @e[tag=leader,scores={leaderProgress=6}] run scoreboard players add @e[tag=scientist_watney] dialogTimer 1
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=180}] at @e[tag=scientist_watney] run playsound minecraft:entity.villager.no neutral @a ~ ~ ~ 0.4 0.9

execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=101}] run playsound entity.minecart.riding block @a 25 164 107 1 0.7
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=101..120}] as @e[type=armor_stand,tag=elevator_door_up] at @s run tp @s ~ ~0.125 ~
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=101..120}] as @e[type=armor_stand,tag=elevator_door_up] at @s run particle minecraft:crit ~1.45 ~-0.7 ~0.6 0 0 0 0 1 force
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=101..120}] as @e[type=armor_stand,tag=elevator_door_up] at @s run particle minecraft:crit ~-1.45 ~-0.7 ~0.6 0 0 0 0 1 force
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=120}] run fill 24 163 107 26 165 107 minecraft:air
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=120}] run stopsound @a block entity.minecart.riding

execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=180}] run tellraw @a ["",{"text":"<","color":"white"},{"text":"Dr. Watney","color":"gold"},{"text":"> ","color":"white"},{"text":"You're the engineer after all.. Good luck! And uh.. don't die!","color":"white"}]
execute as @e[tag=leader,scores={leaderProgress=6}] if entity @e[tag=scientist_watney,scores={dialogTimer=200}] run scoreboard players set @s leaderProgress 7

execute as @e[tag=leader,scores={leaderProgress=7}] run scoreboard players set @e[tag=scientist_watney] dialogTimer 0

###GRANT ADVANCEMENTS
execute as @a[x=83,y=161,z=91,dx=22,dy=7,dz=6] run advancement grant @s[advancements={code:secrets/fishybusiness=false}] only code:secrets/fishybusiness

execute if block -40 164 185 warped_button[powered=true] if score doorTracker eventTimer matches ..0 run scoreboard players set doorTracker eventTimer 1

execute if score doorTracker eventTimer matches 1..23 run scoreboard players add doorTracker eventTimer 1

execute if score doorTracker eventTimer matches 5 run particle minecraft:enchanted_hit -39 164.1 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 6 run particle minecraft:enchanted_hit -39 164.2 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 7 run particle minecraft:enchanted_hit -39 164.3 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 8 run particle minecraft:enchanted_hit -39 164.4 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 9 run particle minecraft:enchanted_hit -39 164.5 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 10 run particle minecraft:enchanted_hit -39 164.6 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 11 run particle minecraft:enchanted_hit -39 164.7 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 12 run particle minecraft:enchanted_hit -39 164.8 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 13 run particle minecraft:enchanted_hit -39 164.9 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 14 run particle minecraft:enchanted_hit -39 165.0 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 15 run particle minecraft:enchanted_hit -39 165.1 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 16 run particle minecraft:enchanted_hit -39 165.2 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 17 run particle minecraft:enchanted_hit -39 165.3 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 18 run particle minecraft:enchanted_hit -39 165.4 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 19 run particle minecraft:enchanted_hit -39 165.5 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 20 run particle minecraft:enchanted_hit -39 165.6 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 21 run particle minecraft:enchanted_hit -39 165.7 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 22 run particle minecraft:enchanted_hit -39 165.8 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 23 run particle minecraft:enchanted_hit -39 165.9 185 0.25 0 0.25 0 100
execute if score doorTracker eventTimer matches 23 run advancement grant @a[advancements={code:secrets/planktonsfavorite=false}] only code:secrets/planktonsfavorite

execute if score doorTracker eventTimer matches 10 run playsound minecraft:block.beacon.ambient block @a -39 165 185 1 2
execute if score doorTracker eventTimer matches 10 run summon minecraft:item -39 165 185 {Tags:["scene_5","meatloaf_hologram"],Item:{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:37}},PickupDelay:32767,Age:-32768}
execute if score doorTracker eventTimer matches 10 run setblock -39 162 185 minecraft:sea_lantern
execute if score doorTracker eventTimer matches 10.. run particle minecraft:dolphin -39 164.1 185 0.2 0 0.2 0 5
execute if score doorTracker eventTimer matches 10.. run particle minecraft:end_rod -39 164.1 185 0.2 0 0.2 0.02 1