###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add @a musicCanteen 0
scoreboard players add @a musicKaraoke 0
scoreboard players add @a musicOffice 0
scoreboard players add @a musicWorkshop 0
scoreboard players add @a musicOne 0
scoreboard players add @a musicTwo 0
scoreboard players add @a musicThree 0
scoreboard players add @a musicFour 0
scoreboard players add @a musicFive 0
scoreboard players add @a musicFinal 0
scoreboard players add @a musicCredits 0

###MUSIC CANTEEN------------------------------------------------------------------------------------------------------------

execute as @a[x=75,y=62,z=-55,dx=54,dy=12,dz=54] run tag @s add in_canteen
execute as @a unless entity @s[x=75,y=62,z=-55,dx=54,dy=12,dz=54] run tag @s remove in_canteen

execute as @a[tag=in_canteen,scores={musicCanteen=..0}] run playsound ambience.canteen ambient @s ~ ~ ~ 100 1
execute as @a[tag=!in_canteen,scores={musicCanteen=1..}] run playsound ambience.canteen_fadeout ambient @s ~ ~ ~ 100 1
execute as @a[tag=!in_canteen,scores={musicCanteen=1..}] run stopsound @s ambient ambience.canteen

scoreboard players add @a[tag=in_canteen] musicCanteen 1
scoreboard players set @a[tag=in_canteen,scores={musicCanteen=320..}] musicCanteen 0
scoreboard players set @a[tag=!in_canteen,scores={musicCanteen=1..}] musicCanteen 0

###MUSIC KARAOKE BAR--------------------------------------------------------------------------------------------------------

execute as @a[x=-32,y=162,z=-28,dx=25,dy=7,dz=32,tag=!listeningToJukebox] run tag @s add in_karaoke
execute as @a unless entity @s[x=-32,y=162,z=-28,dx=25,dy=7,dz=32] run tag @s remove in_karaoke
execute as @a if entity @s[tag=listeningToJukebox] run tag @s remove in_karaoke

execute as @a[tag=in_karaoke,scores={musicKaraoke=..0}] run playsound ambience.karaoke ambient @s ~ ~ ~ 100 1
execute as @a[tag=!in_karaoke,scores={musicKaraoke=1..}] run playsound ambience.karaoke_fadeout ambient @s ~ ~ ~ 100 1
execute as @a[tag=!in_karaoke,scores={musicKaraoke=1..}] run stopsound @s ambient ambience.karaoke

scoreboard players add @a[tag=in_karaoke] musicKaraoke 1
scoreboard players set @a[tag=in_karaoke,scores={musicKaraoke=6195..}] musicKaraoke 0
scoreboard players set @a[tag=!in_karaoke,scores={musicKaraoke=1..}] musicKaraoke 0

###MUSIC OFFICES------------------------------------------------------------------------------------------------------------

execute as @a[x=4,y=62,z=-37,dx=12,dy=7,dz=20] run tag @s add in_office
execute as @a[x=-29,y=63,z=23,dx=15,dy=7,dz=19] run tag @s add in_office
execute as @a[x=38,y=94,z=10,dx=14,dy=7,dz=14] run tag @s add in_office
execute as @a[x=-101,y=158,z=111,dx=22,dy=7,dz=14] run tag @s add in_office
execute as @a[x=-124,y=158,z=186,dx=14,dy=7,dz=30] run tag @s add in_office

execute as @a unless entity @s[x=-29,y=63,z=23,dx=15,dy=7,dz=19] unless entity @s[x=4,y=62,z=-37,dx=12,dy=7,dz=20] unless entity @s[x=38,y=94,z=10,dx=14,dy=7,dz=14] unless entity @s[x=-101,y=158,z=111,dx=22,dy=7,dz=14] unless entity @s[x=-124,y=158,z=186,dx=14,dy=7,dz=30] run tag @s remove in_office

execute as @a[tag=in_office,scores={musicOffice=..0}] run playsound ambience.office ambient @s ~ ~ ~ 100 1
execute as @a[tag=!in_office,scores={musicOffice=1..}] run stopsound @s ambient ambience.office

scoreboard players add @a[tag=in_office] musicOffice 1
scoreboard players set @a[tag=in_office,scores={musicOffice=1280..}] musicOffice 0
scoreboard players set @a[tag=!in_office,scores={musicOffice=1..}] musicOffice 0

###MUSIC VERHICLE WORKSHOP--------------------------------------------------------------------------------------------------

execute as @a[x=-11,y=62,z=10,dx=72,dy=18,dz=64] run tag @s add in_workshop
execute as @a unless entity @s[x=-11,y=62,z=10,dx=72,dy=18,dz=64] run tag @s remove in_workshop

execute as @a[tag=in_workshop,scores={musicWorkshop=..0}] run playsound ambience.workshop ambient @s ~ ~ ~ 100 1
execute as @a[tag=!in_workshop,scores={musicWorkshop=1..}] run playsound ambience.workshop_fadeout ambient @s ~ ~ ~ 100 1
execute as @a[tag=!in_workshop,scores={musicWorkshop=1..}] run stopsound @s ambient ambience.workshop

scoreboard players add @a[tag=in_workshop] musicWorkshop 1
scoreboard players set @a[tag=in_workshop,scores={musicWorkshop=1460..}] musicWorkshop 0
scoreboard players set @a[tag=!in_workshop,scores={musicWorkshop=1..}] musicWorkshop 0

###MUSIC LEVEL 1 TO 8-------------------------------------------------------------------------------------------------------

execute as @a[tag=musicOne,scores={musicOne=..0}] run playsound music.restarting_the_system record @s ~ ~ ~ 100 1
execute as @a[tag=!musicOne,scores={musicOne=1..}] run playsound music.restarting_the_system_fadeout record @s ~ ~ ~ 100 1
execute as @a[tag=!musicOne,scores={musicOne=1..}] run stopsound @s record music.restarting_the_system

scoreboard players add @a[tag=musicOne] musicOne 1
scoreboard players set @a[tag=musicOne,scores={musicOne=2561..}] musicOne 0
scoreboard players set @a[tag=!musicOne,scores={musicOne=1..}] musicOne 0

###MUSIC LEVEL 9 TO 16------------------------------------------------------------------------------------------------------

execute as @a[tag=musicTwo,scores={musicTwo=..0}] run playsound music.all_systems_full_power record @s ~ ~ ~ 100 1
execute as @a[tag=!musicTwo,scores={musicTwo=1..}] run playsound music.all_systems_full_power_fadeout record @s ~ ~ ~ 100 1
execute as @a[tag=!musicTwo,scores={musicTwo=1..}] run stopsound @s record music.all_systems_full_power

scoreboard players add @a[tag=musicTwo] musicTwo 1
scoreboard players set @a[tag=musicTwo,scores={musicTwo=2700..}] musicTwo 0
scoreboard players set @a[tag=!musicTwo,scores={musicTwo=1..}] musicTwo 0

###MUSIC LEVEL 17 TO 20-----------------------------------------------------------------------------------------------------

execute as @a[tag=musicThree,scores={musicThree=..0}] run playsound music.in_dn_tuun record @s ~ ~ ~ 100 1
execute as @a[tag=!musicThree,scores={musicThree=1..}] run playsound music.in_dn_tuun_fadeout record @s ~ ~ ~ 100 1
execute as @a[tag=!musicThree,scores={musicThree=1..}] run stopsound @s record music.in_dn_tuun

scoreboard players add @a[tag=musicThree] musicThree 1
scoreboard players set @a[tag=musicThree,scores={musicThree=2810..}] musicThree 0
scoreboard players set @a[tag=!musicThree,scores={musicThree=1..}] musicThree 0

###MUSIC LEVEL 20 TO 24-----------------------------------------------------------------------------------------------------

execute as @a[tag=musicFour,scores={musicFour=..0}] run playsound music.calm_facility_tour record @s ~ ~ ~ 100 1
execute as @a[tag=!musicFour,scores={musicFour=1..}] run playsound music.calm_facility_tour_fadeout record @s ~ ~ ~ 100 1
execute as @a[tag=!musicFour,scores={musicFour=1..}] run stopsound @s record music.calm_facility_tour

scoreboard players add @a[tag=musicFour] musicFour 1
scoreboard players set @a[tag=musicFour,scores={musicFour=2118..}] musicFour 0
scoreboard players set @a[tag=!musicFour,scores={musicFour=1..}] musicFour 0

###MUSIC LEVEL 25 TO 26-----------------------------------------------------------------------------------------------------

execute as @a[tag=musicFive,scores={musicFive=..0}] run playsound music.ambitious_machinery record @s ~ ~ ~ 100 1
execute as @a[tag=!musicFive,scores={musicFive=1..}] run playsound music.ambitious_machinery_fadeout record @s ~ ~ ~ 100 1
execute as @a[tag=!musicFive,scores={musicFive=1..}] run stopsound @s record music.ambitious_machinery

scoreboard players add @a[tag=musicFive] musicFive 1
scoreboard players set @a[tag=musicFive,scores={musicFive=3702..}] musicFive 0
scoreboard players set @a[tag=!musicFive,scores={musicFive=1..}] musicFive 0

###MUSIC LEVEL 27-----------------------------------------------------------------------------------------------------------

execute as @a[tag=musicFinal,scores={musicFinal=..0}] run playsound music.electric_eruption record @s ~ ~ ~ 100 1
execute as @a[tag=!musicFinal,scores={musicFinal=1..}] run playsound music.electric_eruption_fadeout record @s ~ ~ ~ 100 1
execute as @a[tag=!musicFinal,scores={musicFinal=1..}] run stopsound @s record music.electric_eruption

scoreboard players add @a[tag=musicFinal] musicFinal 1
scoreboard players set @a[tag=musicFinal,scores={musicFinal=3291..}] musicFinal 0
scoreboard players set @a[tag=!musicFinal,scores={musicFinal=1..}] musicFinal 0

###MUSIC CREDITS------------------------------------------------------------------------------------------------------------

execute as @a[tag=musicCredits,scores={musicCredits=..0}] run playsound music.lower_than_low record @s ~ ~ ~ 100 1
execute as @a[tag=!musicCredits,scores={musicCredits=1..}] run playsound music.lower_than_low_fadeout record @s ~ ~ ~ 100 1
execute as @a[tag=!musicCredits,scores={musicCredits=1..}] run stopsound @s record music.lower_than_low

scoreboard players add @a[tag=musicCredits] musicCredits 1
scoreboard players set @a[tag=musicCredits,scores={musicCredits=3230..}] musicCredits 0
scoreboard players set @a[tag=!musicCredits,scores={musicCredits=1..}] musicCredits 0