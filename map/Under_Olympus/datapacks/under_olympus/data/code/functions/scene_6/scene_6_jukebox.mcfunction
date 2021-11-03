###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

#Scanning Department
execute if block -31 166 -7 warped_button[powered=true] run tag @a add listeningToJukebox
execute if block -31 166 -7 warped_button[powered=true] run scoreboard players set musicTag tagList 1
execute if block -31 166 -7 warped_button[powered=true] run setblock -31 166 -7 minecraft:warped_button[face=wall,facing=east,powered=false]

#Manufacturing Floor
execute if block -31 165 -7 warped_button[powered=true] run tag @a add listeningToJukebox
execute if block -31 165 -7 warped_button[powered=true] run scoreboard players set musicTag tagList 2
execute if block -31 165 -7 warped_button[powered=true] run setblock -31 165 -7 minecraft:warped_button[face=wall,facing=east,powered=false]

#Agricultural Department
execute if block -31 164 -7 warped_button[powered=true] run tag @a add listeningToJukebox
execute if block -31 164 -7 warped_button[powered=true] run scoreboard players set musicTag tagList 3
execute if block -31 164 -7 warped_button[powered=true] run setblock -31 164 -7 minecraft:warped_button[face=wall,facing=east,powered=false]

#Outside Olympus
execute if block -31 163 -7 warped_button[powered=true] run tag @a add listeningToJukebox
execute if block -31 163 -7 warped_button[powered=true] run scoreboard players set musicTag tagList 4
execute if block -31 163 -7 warped_button[powered=true] run setblock -31 163 -7 minecraft:warped_button[face=wall,facing=east,powered=false]

#Ruined Facility
execute if block -31 166 -9 warped_button[powered=true] run tag @a add listeningToJukebox
execute if block -31 166 -9 warped_button[powered=true] run scoreboard players set musicTag tagList 5
execute if block -31 166 -9 warped_button[powered=true] run setblock -31 166 -9 minecraft:warped_button[face=wall,facing=east,powered=false]

#Final Level
execute if block -31 165 -9 warped_button[powered=true] run tag @a add listeningToJukebox
execute if block -31 165 -9 warped_button[powered=true] run scoreboard players set musicTag tagList 6
execute if block -31 165 -9 warped_button[powered=true] run setblock -31 165 -9 minecraft:warped_button[face=wall,facing=east,powered=false]

#Map Credits
execute if block -31 164 -9 warped_button[powered=true] run tag @a add listeningToJukebox
execute if block -31 164 -9 warped_button[powered=true] run scoreboard players set musicTag tagList 7
execute if block -31 164 -9 warped_button[powered=true] run setblock -31 164 -9 minecraft:warped_button[face=wall,facing=east,powered=false]

#All Music OFF
execute if block -31 163 -9 warped_button[powered=true] run tag @a remove listeningToJukebox
execute if block -31 163 -9 warped_button[powered=true] run scoreboard players set musicTag tagList 0
execute if block -31 163 -9 warped_button[powered=true] run setblock -31 163 -9 minecraft:warped_button[face=wall,facing=east,powered=false]

#Jukebox & Piano particles
execute if entity @a[tag=listeningToJukebox] run particle minecraft:note -30 162.8 -8 0.3 0 0.3 10 1 force
execute if entity @a[tag=listeningToJukebox] run data merge entity @e[type=minecraft:drowned,tag=scientist_watney,limit=1] {HandItems:[{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}},{Count:1,id:"minecraft:poisonous_potato",tag:{CustomModelData:31}}]}
execute unless entity @a[tag=listeningToJukebox] unless entity @e[tag=scientist_watney,tag=spoken_to] run particle minecraft:note -8 164.5 -16 0.7 0 0.8 10 1 force