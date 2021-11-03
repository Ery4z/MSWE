###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

###HUFTER PROTECTION--------------------------------------------------------------------------------------

#detect if player breaks component
execute as @a[scores={minedRepeater=1..}] run tag @s add broken
execute as @a[scores={minedComparator=1..}] run tag @s add broken

#ADJUST: clone play area to bonus area
execute if entity @a[tag=broken] run clone -110 182 -43 -90 188 -3 -110 172 -43

#ADJUST: clone original area to play area (masked)
execute if entity @a[tag=broken] run clone -110 165 -43 -90 171 -3 -110 182 -43 masked

#ADJUST: clone bonus area to play area (masked)
execute if entity @a[tag=broken] run clone -110 172 -43 -90 178 -3 -110 182 -43 masked

#display message to player
title @a[tag=broken] actionbar {"text":"You can't break these!","color":"red"}

#reset player's breaking score
scoreboard players set @a[scores={minedRepeater=1..}] minedRepeater 0
scoreboard players set @a[scores={minedComparator=1..}] minedComparator 0

execute as @a[tag=broken] run tag @s remove broken

###PLAYER IN PLAY AREA DETECTION--------------------------------------------------------------------------

#ADJUST: detect if player is in play area
execute as @a[tag=!in-game] if entity @s[x=-112,y=187,z=-45,dx=24,dy=18,dz=44] run tag @s add in-game

#ADJUST: detect if player is out of play area
execute as @a[tag=in-game] unless entity @s[x=-112,y=187,z=-45,dx=24,dy=18,dz=44] run tag @s remove in-game

###PLAYER OUT OF BOUNDS PROTECTION------------------------------------------------------------------------

execute as @a[tag=!admin] unless entity @s[x=-120,y=187,z=-55,dx=41,dy=18,dz=65] run title @s actionbar {"text":"You went out of bounds!","color":"red"}
execute as @a[tag=!admin] unless entity @s[x=-120,y=187,z=-55,dx=41,dy=18,dz=65] run advancement grant @s[advancements={code:secrets/outofbounds=false}] only code:secrets/outofbounds
execute as @a[tag=!admin] unless entity @s[x=-120,y=187,z=-55,dx=41,dy=18,dz=65] run tp @s -100 187 5 180 0

###PLAYER START/RESET BUTTONS-----------------------------------------------------------------------------

#ADJUST: start (clone play area to bonus area)
execute as @e[type=armor_stand,tag=spawn,tag=start_level] run clone -110 182 -43 -90 188 -3 -110 172 -43
execute as @e[type=armor_stand,tag=spawn,tag=start_level] run tag @s remove start_level

#ADJUST: stop (clone bonus area to play area)
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run clone -110 172 -43 -90 178 -3 -110 182 -43
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=blockswap,x=-97,y=187,z=-37,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run data merge entity @e[type=armor_stand,tag=blockswap,x=-104,y=187,z=-30,dx=0,dy=0,dz=0,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}
execute as @e[type=armor_stand,tag=spawn,tag=stop_level] run tag @s remove stop_level

#ADJUST: reset (clone original area to play area)
execute as @a[tag=reset_level] run clone -110 165 -43 -90 171 -3 -110 182 -43
execute as @a[tag=reset_level] at @e[type=minecraft:armor_stand,tag=modifier] run particle minecraft:cloud ~ ~2.1 ~ 0.1 0 0.1 0.01 10 force
execute as @a[tag=reset_level] run scoreboard players set @s resetCooldown 0
execute as @a[tag=reset_level] run tag @a remove reset_level

###LEVEL COMPLETION REQUIREMENTS--------------------------------------------------------------------------

execute as @e[type=armor_stand,tag=blockswap,x=-97,y=187,z=-37,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..1.9] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-97,y=187,z=-37,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}] at @s unless entity @e[tag=robot,distance=..1.9] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}

execute as @e[type=armor_stand,tag=blockswap,x=-104,y=187,z=-30,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..0.9] run particle minecraft:portal ~ ~1.2 ~ 0 0 0 0.3 300 force
execute as @e[type=armor_stand,tag=blockswap,x=-104,y=187,z=-30,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}] at @s unless entity @e[tag=robot,distance=..0.9] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:99}}]}

###---------------REPLACE AIR BLOCKS WITH BARRIERS

fill -91 186 -6 -109 186 -42 minecraft:barrier replace minecraft:air

###---------------CYAN

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-96,y=187,z=-5,dx=0,dy=0,dz=0] unless block -92 186 -11 minecraft:barrier unless block -92 186 -7 minecraft:barrier run playsound minecraft:block.chest.locked block @a -92 187 -11 1 2
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-96,y=187,z=-5,dx=0,dy=0,dz=0] unless block -92 186 -11 minecraft:barrier unless block -92 186 -7 minecraft:barrier run particle minecraft:smoke -92 187.0 -11 0.7 0 0.7 0 30 force

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-96,y=187,z=-5,dx=0,dy=0,dz=0] unless block -92 186 -11 minecraft:barrier if block -92 186 -7 minecraft:barrier run playsound minecraft:block.piston.extend block @a -92 187 -11 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-96,y=187,z=-5,dx=0,dy=0,dz=0] unless block -92 186 -11 minecraft:barrier if block -92 186 -7 minecraft:barrier run particle minecraft:cloud -92 187.0 -11 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-96,y=187,z=-5,dx=0,dy=0,dz=0] unless block -92 186 -11 minecraft:barrier if block -92 186 -7 minecraft:barrier run clone -93 182 -12 -91 188 -10 -93 182 -8 replace move

###---------------WHITE

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-5,dx=0,dy=0,dz=0] unless block -100 186 -11 minecraft:barrier unless block -104 186 -11 minecraft:barrier run playsound minecraft:block.chest.locked block @a -100 187 -11 1 2
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-5,dx=0,dy=0,dz=0] unless block -100 186 -11 minecraft:barrier unless block -104 186 -11 minecraft:barrier run particle minecraft:smoke -100 187.0 -11 0.7 0 0.7 0 30 force

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-5,dx=0,dy=0,dz=0] unless block -100 186 -11 minecraft:barrier if block -104 186 -11 minecraft:barrier run playsound minecraft:block.piston.extend block @a -100 187 -11 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-5,dx=0,dy=0,dz=0] unless block -100 186 -11 minecraft:barrier if block -104 186 -11 minecraft:barrier run particle minecraft:cloud -100 187.0 -11 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-5,dx=0,dy=0,dz=0] unless block -100 186 -11 minecraft:barrier if block -104 186 -11 minecraft:barrier run clone -101 182 -12 -99 188 -10 -105 182 -12 replace move

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-110,y=187,z=-5,dx=0,dy=0,dz=0] unless block -100 186 -11 minecraft:barrier unless block -104 186 -11 minecraft:barrier run playsound minecraft:block.chest.locked block @a -100 187 -11 1 2

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-110,y=187,z=-5,dx=0,dy=0,dz=0] unless block -100 186 -11 minecraft:barrier if block -104 186 -11 minecraft:barrier run playsound minecraft:block.piston.extend block @a -100 187 -11 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-110,y=187,z=-5,dx=0,dy=0,dz=0] unless block -100 186 -11 minecraft:barrier if block -104 186 -11 minecraft:barrier run particle minecraft:cloud -100 187.0 -11 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-110,y=187,z=-5,dx=0,dy=0,dz=0] unless block -100 186 -11 minecraft:barrier if block -104 186 -11 minecraft:barrier run clone -101 182 -12 -99 188 -10 -105 182 -12 replace move

###---------------LIGHT GRAY

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-5,dx=0,dy=0,dz=0] unless block -104 186 -11 minecraft:barrier unless block -108 186 -11 minecraft:barrier unless block -100 186 -11 minecraft:barrier run playsound minecraft:block.chest.locked block @a -104 187 -11 1 2
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-5,dx=0,dy=0,dz=0] unless block -104 186 -11 minecraft:barrier unless block -108 186 -11 minecraft:barrier unless block -100 186 -11 minecraft:barrier run particle minecraft:smoke -104 187.0 -11 0.7 0 0.7 0 30 force

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-5,dx=0,dy=0,dz=0] unless block -104 186 -11 minecraft:barrier if block -108 186 -11 minecraft:barrier run playsound minecraft:block.piston.extend block @a -104 187 -11 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-5,dx=0,dy=0,dz=0] unless block -104 186 -11 minecraft:barrier if block -108 186 -11 minecraft:barrier run particle minecraft:cloud -104 187.0 -11 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-5,dx=0,dy=0,dz=0] unless block -104 186 -11 minecraft:barrier if block -108 186 -11 minecraft:barrier run clone -105 182 -12 -103 188 -10 -109 182 -12 replace move

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-5,dx=0,dy=0,dz=0] unless block -104 186 -11 minecraft:barrier if block -100 186 -11 minecraft:barrier run playsound minecraft:block.piston.extend block @a -104 187 -11 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-5,dx=0,dy=0,dz=0] unless block -104 186 -11 minecraft:barrier if block -100 186 -11 minecraft:barrier run particle minecraft:cloud -104 187.0 -11 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-5,dx=0,dy=0,dz=0] unless block -104 186 -11 minecraft:barrier if block -100 186 -11 minecraft:barrier run clone -105 182 -12 -103 188 -10 -101 182 -12 replace move

###---------------BLACK

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-102,y=187,z=-7,dx=0,dy=0,dz=0] unless block -108 186 -11 minecraft:barrier unless block -104 186 -11 minecraft:barrier run playsound minecraft:block.chest.locked block @a -108 187 -11 1 2
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-102,y=187,z=-7,dx=0,dy=0,dz=0] unless block -108 186 -11 minecraft:barrier unless block -104 186 -11 minecraft:barrier run particle minecraft:smoke -108 187.0 -11 0.7 0 0.7 0 30 force

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-102,y=187,z=-7,dx=0,dy=0,dz=0] unless block -108 186 -11 minecraft:barrier if block -104 186 -11 minecraft:barrier run playsound minecraft:block.piston.extend block @a -108 187 -11 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-102,y=187,z=-7,dx=0,dy=0,dz=0] unless block -108 186 -11 minecraft:barrier if block -104 186 -11 minecraft:barrier run particle minecraft:cloud -108 187.0 -11 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-102,y=187,z=-7,dx=0,dy=0,dz=0] unless block -108 186 -11 minecraft:barrier if block -104 186 -11 minecraft:barrier run clone -109 182 -12 -107 188 -10 -105 182 -12 replace move

###---------------BLUE

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-17,dx=0,dy=0,dz=0] unless block -108 186 -33 minecraft:barrier unless block -108 186 -37 minecraft:barrier unless block -104 186 -33 minecraft:barrier run playsound minecraft:block.chest.locked block @a -108 187 -33 1 2
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-17,dx=0,dy=0,dz=0] unless block -108 186 -33 minecraft:barrier unless block -108 186 -37 minecraft:barrier unless block -104 186 -33 minecraft:barrier run particle minecraft:smoke -108 187.0 -33 0.7 0 0.7 0 30 force

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-17,dx=0,dy=0,dz=0] unless block -108 186 -33 minecraft:barrier if block -108 186 -37 minecraft:barrier run playsound minecraft:block.piston.extend block @a -108 187 -33 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-17,dx=0,dy=0,dz=0] unless block -108 186 -33 minecraft:barrier if block -108 186 -37 minecraft:barrier run particle minecraft:cloud -108 187.0 -33 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-17,dx=0,dy=0,dz=0] unless block -108 186 -33 minecraft:barrier if block -108 186 -37 minecraft:barrier run clone -109 182 -34 -107 188 -32 -109 182 -38 replace move

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-17,dx=0,dy=0,dz=0] unless block -108 186 -33 minecraft:barrier if block -104 186 -33 minecraft:barrier run playsound minecraft:block.piston.extend block @a -108 187 -33 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-17,dx=0,dy=0,dz=0] unless block -108 186 -33 minecraft:barrier if block -104 186 -33 minecraft:barrier run particle minecraft:cloud -108 187.0 -33 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-17,dx=0,dy=0,dz=0] unless block -108 186 -33 minecraft:barrier if block -104 186 -33 minecraft:barrier run clone -109 182 -34 -107 188 -32 -105 182 -34 replace move

###---------------PURPLE

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-17,dx=0,dy=0,dz=0] unless block -104 186 -33 minecraft:barrier unless block -108 186 -33 minecraft:barrier unless block -104 186 -37 minecraft:barrier unless block -100 186 -33 minecraft:barrier run playsound minecraft:block.chest.locked block @a -104 187 -33 1 2
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-17,dx=0,dy=0,dz=0] unless block -104 186 -33 minecraft:barrier unless block -108 186 -33 minecraft:barrier unless block -104 186 -37 minecraft:barrier unless block -100 186 -33 minecraft:barrier run particle minecraft:smoke -104 187.0 -33 0.7 0 0.7 0 30 force

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-17,dx=0,dy=0,dz=0] unless block -104 186 -33 minecraft:barrier if block -108 186 -33 minecraft:barrier run playsound minecraft:block.piston.extend block @a -104 187 -33 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-17,dx=0,dy=0,dz=0] unless block -104 186 -33 minecraft:barrier if block -108 186 -33 minecraft:barrier run particle minecraft:cloud -104 187.0 -33 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-17,dx=0,dy=0,dz=0] unless block -104 186 -33 minecraft:barrier if block -108 186 -33 minecraft:barrier run clone -105 182 -34 -103 188 -32 -109 182 -34 replace move

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-17,dx=0,dy=0,dz=0] unless block -104 186 -33 minecraft:barrier if block -104 186 -37 minecraft:barrier run playsound minecraft:block.piston.extend block @a -104 187 -33 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-17,dx=0,dy=0,dz=0] unless block -104 186 -33 minecraft:barrier if block -104 186 -37 minecraft:barrier run particle minecraft:cloud -104 187.0 -33 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-17,dx=0,dy=0,dz=0] unless block -104 186 -33 minecraft:barrier if block -104 186 -37 minecraft:barrier run clone -105 182 -34 -103 188 -32 -105 182 -38 replace move

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-17,dx=0,dy=0,dz=0] unless block -104 186 -33 minecraft:barrier if block -100 186 -33 minecraft:barrier run playsound minecraft:block.piston.extend block @a -104 187 -33 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-17,dx=0,dy=0,dz=0] unless block -104 186 -33 minecraft:barrier if block -100 186 -33 minecraft:barrier run particle minecraft:cloud -104 187.0 -33 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-17,dx=0,dy=0,dz=0] unless block -104 186 -33 minecraft:barrier if block -100 186 -33 minecraft:barrier run clone -105 182 -34 -103 188 -32 -101 182 -34 replace move

###---------------RED

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-17,dx=0,dy=0,dz=0] unless block -100 186 -33 minecraft:barrier unless block -104 186 -33 minecraft:barrier unless block -100 186 -37 minecraft:barrier run playsound minecraft:block.chest.locked block @a -100 187 -33 1 2
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-17,dx=0,dy=0,dz=0] unless block -100 186 -33 minecraft:barrier unless block -104 186 -33 minecraft:barrier unless block -100 186 -37 minecraft:barrier run particle minecraft:smoke -100 187.0 -33 0.7 0 0.7 0 30 force

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-17,dx=0,dy=0,dz=0] unless block -100 186 -33 minecraft:barrier if block -104 186 -33 minecraft:barrier run playsound minecraft:block.piston.extend block @a -100 187 -33 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-17,dx=0,dy=0,dz=0] unless block -100 186 -33 minecraft:barrier if block -104 186 -33 minecraft:barrier run particle minecraft:cloud -100 187.0 -33 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-17,dx=0,dy=0,dz=0] unless block -100 186 -33 minecraft:barrier if block -104 186 -33 minecraft:barrier run clone -101 182 -34 -99 188 -32 -105 182 -34 replace move

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-17,dx=0,dy=0,dz=0] unless block -100 186 -33 minecraft:barrier if block -100 186 -37 minecraft:barrier run playsound minecraft:block.piston.extend block @a -100 187 -33 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-17,dx=0,dy=0,dz=0] unless block -100 186 -33 minecraft:barrier if block -100 186 -37 minecraft:barrier run particle minecraft:cloud -100 187.0 -33 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-17,dx=0,dy=0,dz=0] unless block -100 186 -33 minecraft:barrier if block -100 186 -37 minecraft:barrier run clone -101 182 -34 -99 188 -32 -101 182 -38 replace move

###---------------ORANGE

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-21,dx=0,dy=0,dz=0] unless block -108 186 -37 minecraft:barrier unless block -108 186 -41 minecraft:barrier unless block -104 186 -37 minecraft:barrier unless block -108 186 -33 minecraft:barrier run playsound minecraft:block.chest.locked block @a -108 187 -37 1 2
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-21,dx=0,dy=0,dz=0] unless block -108 186 -37 minecraft:barrier unless block -108 186 -41 minecraft:barrier unless block -104 186 -37 minecraft:barrier unless block -108 186 -33 minecraft:barrier run particle minecraft:smoke -108 187.0 -37 0.7 0 0.7 0 30 force

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-21,dx=0,dy=0,dz=0] unless block -108 186 -37 minecraft:barrier if block -108 186 -41 minecraft:barrier run playsound minecraft:block.piston.extend block @a -108 187 -37 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-21,dx=0,dy=0,dz=0] unless block -108 186 -37 minecraft:barrier if block -108 186 -41 minecraft:barrier run particle minecraft:cloud -108 187.0 -37 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-21,dx=0,dy=0,dz=0] unless block -108 186 -37 minecraft:barrier if block -108 186 -41 minecraft:barrier run clone -109 182 -38 -107 188 -36 -109 182 -42 replace move

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-21,dx=0,dy=0,dz=0] unless block -108 186 -37 minecraft:barrier if block -104 186 -37 minecraft:barrier run playsound minecraft:block.piston.extend block @a -108 187 -37 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-21,dx=0,dy=0,dz=0] unless block -108 186 -37 minecraft:barrier if block -104 186 -37 minecraft:barrier run particle minecraft:cloud -108 187.0 -37 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-21,dx=0,dy=0,dz=0] unless block -108 186 -37 minecraft:barrier if block -104 186 -37 minecraft:barrier run clone -109 182 -38 -107 188 -36 -105 182 -38 replace move

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-21,dx=0,dy=0,dz=0] unless block -108 186 -37 minecraft:barrier if block -108 186 -33 minecraft:barrier run playsound minecraft:block.piston.extend block @a -108 187 -37 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-21,dx=0,dy=0,dz=0] unless block -108 186 -37 minecraft:barrier if block -108 186 -33 minecraft:barrier run particle minecraft:cloud -108 187.0 -37 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-21,dx=0,dy=0,dz=0] unless block -108 186 -37 minecraft:barrier if block -108 186 -33 minecraft:barrier run clone -109 182 -38 -107 188 -36 -109 182 -34 replace move

###---------------YELLOW

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-21,dx=0,dy=0,dz=0] unless block -104 186 -37 minecraft:barrier unless block -108 186 -37 minecraft:barrier unless block -104 186 -41 minecraft:barrier unless block -100 186 -37 minecraft:barrier unless block -104 186 -33 minecraft:barrier run playsound minecraft:block.chest.locked block @a -104 187 -37 1 2
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-21,dx=0,dy=0,dz=0] unless block -104 186 -37 minecraft:barrier unless block -108 186 -37 minecraft:barrier unless block -104 186 -41 minecraft:barrier unless block -100 186 -37 minecraft:barrier unless block -104 186 -33 minecraft:barrier run particle minecraft:smoke -104 187.0 -37 0.7 0 0.7 0 30 force

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-21,dx=0,dy=0,dz=0] unless block -104 186 -37 minecraft:barrier if block -108 186 -37 minecraft:barrier run playsound minecraft:block.piston.extend block @a -104 187 -37 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-21,dx=0,dy=0,dz=0] unless block -104 186 -37 minecraft:barrier if block -108 186 -37 minecraft:barrier run particle minecraft:cloud -104 187.0 -37 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-21,dx=0,dy=0,dz=0] unless block -104 186 -37 minecraft:barrier if block -108 186 -37 minecraft:barrier run clone -105 182 -38 -103 188 -36 -109 182 -38 replace move

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-21,dx=0,dy=0,dz=0] unless block -104 186 -37 minecraft:barrier if block -104 186 -41 minecraft:barrier run playsound minecraft:block.piston.extend block @a -104 187 -37 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-21,dx=0,dy=0,dz=0] unless block -104 186 -37 minecraft:barrier if block -104 186 -41 minecraft:barrier run particle minecraft:cloud -104 187.0 -37 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-21,dx=0,dy=0,dz=0] unless block -104 186 -37 minecraft:barrier if block -104 186 -41 minecraft:barrier run clone -105 182 -38 -103 188 -36 -105 182 -42 replace move

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-21,dx=0,dy=0,dz=0] unless block -104 186 -37 minecraft:barrier if block -100 186 -37 minecraft:barrier run playsound minecraft:block.piston.extend block @a -104 187 -37 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-21,dx=0,dy=0,dz=0] unless block -104 186 -37 minecraft:barrier if block -100 186 -37 minecraft:barrier run particle minecraft:cloud -104 187.0 -37 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-21,dx=0,dy=0,dz=0] unless block -104 186 -37 minecraft:barrier if block -100 186 -37 minecraft:barrier run clone -105 182 -38 -103 188 -36 -101 182 -38 replace move

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-21,dx=0,dy=0,dz=0] unless block -104 186 -37 minecraft:barrier if block -104 186 -33 minecraft:barrier run playsound minecraft:block.piston.extend block @a -104 187 -37 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-21,dx=0,dy=0,dz=0] unless block -104 186 -37 minecraft:barrier if block -104 186 -33 minecraft:barrier run particle minecraft:cloud -104 187.0 -37 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-21,dx=0,dy=0,dz=0] unless block -104 186 -37 minecraft:barrier if block -104 186 -33 minecraft:barrier run clone -105 182 -38 -103 188 -36 -105 182 -34 replace move

###---------------LIME

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-21,dx=0,dy=0,dz=0] unless block -100 186 -37 minecraft:barrier unless block -100 186 -33 minecraft:barrier unless block -104 186 -37 minecraft:barrier unless block -100 186 -41 minecraft:barrier run playsound minecraft:block.chest.locked block @a -100 187 -37 1 2
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-21,dx=0,dy=0,dz=0] unless block -100 186 -37 minecraft:barrier unless block -100 186 -33 minecraft:barrier unless block -104 186 -37 minecraft:barrier unless block -100 186 -41 minecraft:barrier run particle minecraft:smoke -100 187.0 -37 0.7 0 0.7 0 30 force

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-21,dx=0,dy=0,dz=0] unless block -100 186 -37 minecraft:barrier if block -100 186 -33 minecraft:barrier run playsound minecraft:block.piston.extend block @a -100 187 -37 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-21,dx=0,dy=0,dz=0] unless block -100 186 -37 minecraft:barrier if block -100 186 -33 minecraft:barrier run particle minecraft:cloud -100 187.0 -37 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-21,dx=0,dy=0,dz=0] unless block -100 186 -37 minecraft:barrier if block -100 186 -33 minecraft:barrier run clone -101 182 -38 -99 188 -36 -101 182 -34 replace move

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-21,dx=0,dy=0,dz=0] unless block -100 186 -37 minecraft:barrier if block -104 186 -37 minecraft:barrier run playsound minecraft:block.piston.extend block @a -100 187 -37 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-21,dx=0,dy=0,dz=0] unless block -100 186 -37 minecraft:barrier if block -104 186 -37 minecraft:barrier run particle minecraft:cloud -100 187.0 -37 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-21,dx=0,dy=0,dz=0] unless block -100 186 -37 minecraft:barrier if block -104 186 -37 minecraft:barrier run clone -101 182 -38 -99 188 -36 -105 182 -38 replace move

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-21,dx=0,dy=0,dz=0] unless block -100 186 -37 minecraft:barrier if block -100 186 -41 minecraft:barrier run playsound minecraft:block.piston.extend block @a -100 187 -37 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-21,dx=0,dy=0,dz=0] unless block -100 186 -37 minecraft:barrier if block -100 186 -41 minecraft:barrier run particle minecraft:cloud -100 187.0 -37 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-21,dx=0,dy=0,dz=0] unless block -100 186 -37 minecraft:barrier if block -100 186 -41 minecraft:barrier run clone -101 182 -38 -99 188 -36 -101 182 -42 replace move

###---------------PINK

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-25,dx=0,dy=0,dz=0] unless block -108 186 -41 minecraft:barrier unless block -104 186 -41 minecraft:barrier unless block -108 186 -37 minecraft:barrier run playsound minecraft:block.chest.locked block @a -108 187 -41 1 2
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-25,dx=0,dy=0,dz=0] unless block -108 186 -41 minecraft:barrier unless block -104 186 -41 minecraft:barrier unless block -108 186 -37 minecraft:barrier run particle minecraft:smoke -108 187.0 -41 0.7 0 0.7 0 30 force

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-25,dx=0,dy=0,dz=0] unless block -108 186 -41 minecraft:barrier if block -104 186 -41 minecraft:barrier run playsound minecraft:block.piston.extend block @a -108 187 -41 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-25,dx=0,dy=0,dz=0] unless block -108 186 -41 minecraft:barrier if block -104 186 -41 minecraft:barrier run particle minecraft:cloud -108 187.0 -41 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-25,dx=0,dy=0,dz=0] unless block -108 186 -41 minecraft:barrier if block -104 186 -41 minecraft:barrier run clone -109 182 -42 -107 188 -40 -105 182 -42 replace move

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-25,dx=0,dy=0,dz=0] unless block -108 186 -41 minecraft:barrier if block -108 186 -37 minecraft:barrier run playsound minecraft:block.piston.extend block @a -108 187 -41 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-25,dx=0,dy=0,dz=0] unless block -108 186 -41 minecraft:barrier if block -108 186 -37 minecraft:barrier run particle minecraft:cloud -108 187.0 -41 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-108,y=187,z=-25,dx=0,dy=0,dz=0] unless block -108 186 -41 minecraft:barrier if block -108 186 -37 minecraft:barrier run clone -109 182 -42 -107 188 -40 -109 182 -38 replace move

###---------------LIGHT BLUE

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-25,dx=0,dy=0,dz=0] unless block -104 186 -41 minecraft:barrier unless block -100 186 -41 minecraft:barrier unless block -104 186 -37 minecraft:barrier unless block -108 186 -41 minecraft:barrier run playsound minecraft:block.chest.locked block @a -104 187 -41 1 2
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-25,dx=0,dy=0,dz=0] unless block -104 186 -41 minecraft:barrier unless block -100 186 -41 minecraft:barrier unless block -104 186 -37 minecraft:barrier unless block -108 186 -41 minecraft:barrier run particle minecraft:smoke -104 187.0 -41 0.7 0 0.7 0 30 force

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-25,dx=0,dy=0,dz=0] unless block -104 186 -41 minecraft:barrier if block -100 186 -41 minecraft:barrier run playsound minecraft:block.piston.extend block @a -104 187 -41 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-25,dx=0,dy=0,dz=0] unless block -104 186 -41 minecraft:barrier if block -100 186 -41 minecraft:barrier run particle minecraft:cloud -104 187.0 -41 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-25,dx=0,dy=0,dz=0] unless block -104 186 -41 minecraft:barrier if block -100 186 -41 minecraft:barrier run clone -105 182 -42 -103 188 -40 -101 182 -42 replace move

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-25,dx=0,dy=0,dz=0] unless block -104 186 -41 minecraft:barrier if block -104 186 -37 minecraft:barrier run playsound minecraft:block.piston.extend block @a -104 187 -41 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-25,dx=0,dy=0,dz=0] unless block -104 186 -41 minecraft:barrier if block -104 186 -37 minecraft:barrier run particle minecraft:cloud -104 187.0 -41 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-25,dx=0,dy=0,dz=0] unless block -104 186 -41 minecraft:barrier if block -104 186 -37 minecraft:barrier run clone -105 182 -42 -103 188 -40 -105 182 -38 replace move

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-25,dx=0,dy=0,dz=0] unless block -104 186 -41 minecraft:barrier if block -108 186 -41 minecraft:barrier run playsound minecraft:block.piston.extend block @a -104 187 -41 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-25,dx=0,dy=0,dz=0] unless block -104 186 -41 minecraft:barrier if block -108 186 -41 minecraft:barrier run particle minecraft:cloud -104 187.0 -41 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-104,y=187,z=-25,dx=0,dy=0,dz=0] unless block -104 186 -41 minecraft:barrier if block -108 186 -41 minecraft:barrier run clone -105 182 -42 -103 188 -40 -109 182 -42 replace move

###---------------BROWN

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-25,dx=0,dy=0,dz=0] unless block -100 186 -41 minecraft:barrier unless block -100 186 -37 minecraft:barrier unless block -104 186 -41 minecraft:barrier run playsound minecraft:block.chest.locked block @a -100 187 -41 1 2
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-25,dx=0,dy=0,dz=0] unless block -100 186 -41 minecraft:barrier unless block -100 186 -37 minecraft:barrier unless block -104 186 -41 minecraft:barrier run particle minecraft:smoke -100 187.0 -41 0.7 0 0.7 0 30 force

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-25,dx=0,dy=0,dz=0] unless block -100 186 -41 minecraft:barrier if block -100 186 -37 minecraft:barrier run playsound minecraft:block.piston.extend block @a -100 187 -41 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-25,dx=0,dy=0,dz=0] unless block -100 186 -41 minecraft:barrier if block -100 186 -37 minecraft:barrier run particle minecraft:cloud -100 187.0 -41 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-25,dx=0,dy=0,dz=0] unless block -100 186 -41 minecraft:barrier if block -100 186 -37 minecraft:barrier run clone -101 182 -42 -99 188 -40 -101 182 -38 replace move

execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-25,dx=0,dy=0,dz=0] unless block -100 186 -41 minecraft:barrier if block -104 186 -41 minecraft:barrier run playsound minecraft:block.piston.extend block @a -100 187 -41 1 1
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-25,dx=0,dy=0,dz=0] unless block -100 186 -41 minecraft:barrier if block -104 186 -41 minecraft:barrier run particle minecraft:cloud -100 187.0 -41 0.7 0 0.7 0 30 force
execute as @e[type=armor_stand,tag=robot,tag=!moving,tag=active,x=-100,y=187,z=-25,dx=0,dy=0,dz=0] unless block -100 186 -41 minecraft:barrier if block -104 186 -41 minecraft:barrier run clone -101 182 -42 -99 188 -40 -105 182 -42 replace move

###---------------FINISH

execute as @e[type=armor_stand,tag=blockswap,x=-104,y=187,z=-30,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run playsound minecraft:fx.completed record @a ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=blockswap,x=-104,y=187,z=-30,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run title @a times 20 100 20
execute as @e[type=armor_stand,tag=blockswap,x=-104,y=187,z=-30,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run title @a subtitle {"text":"Bonus track completed!","color":"gold"}
execute as @e[type=armor_stand,tag=blockswap,x=-104,y=187,z=-30,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run title @a title {"text":""}

execute as @e[type=armor_stand,tag=blockswap,x=-104,y=187,z=-30,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}] at @e[type=armor_stand,tag=robot] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run particle minecraft:firework ~ ~1 ~ 0 0 0 0.1 40 force

execute as @e[type=armor_stand,tag=blockswap,x=-104,y=187,z=-30,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] if score replayTag tagList matches 1 run advancement grant @a[advancements={code:story/theultimateengineer=false}] only code:story/theultimateengineer
execute as @e[type=armor_stand,tag=blockswap,x=-104,y=187,z=-30,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] if score replayTag tagList matches 1 run tellraw @a {"text":"You finished the bonus level! Use the 'Exit level' button in your hotbar to return to the level selection area.","italic":true,"color":"gray"}

execute as @e[type=armor_stand,tag=blockswap,x=-104,y=187,z=-30,dx=0,dy=0,dz=0,nbt={ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}] if entity @e[type=armor_stand,tag=spawn,tag=!finished] run tag @e[type=armor_stand,tag=spawn] add finished