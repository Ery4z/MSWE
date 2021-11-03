###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

#Change gamemode and remove effect when player is testing solution
effect give @a minecraft:saturation 1000000 255 true

#Give players the right 'root' advancements
advancement grant @a[advancements={code:story/root=false}] only code:story/root
advancement grant @a[advancements={code:challenges/root=false}] only code:challenges/root
advancement grant @a[advancements={code:secrets/root=false}] only code:secrets/root

#Grant certain advancements
advancement grant @a[advancements={code:secrets/butwhy=false},scores={minedEndRod=50..}] only code:secrets/butwhy
advancement grant @a[advancements={code:secrets/potterypots=false},scores={plantsPotted=1..}] only code:secrets/potterypots
advancement grant @a[advancements={code:secrets/howdidyoumanagethat=false},scores={timesDied=1..}] only code:secrets/howdidyoumanagethat
execute if score robotsCollided robotCollision matches 1.. run advancement grant @a[advancements={code:challenges/collision=false}] only code:challenges/collision

#Change gamemode and remove effect when player is testing solution
execute as @a[tag=in-game,tag=testing_solution,tag=!admin,gamemode=!adventure] run gamemode adventure @s
execute as @a[tag=in-game,tag=testing_solution,tag=!admin,nbt={ActiveEffects:[{Id:4b}]}] run effect clear @s minecraft:mining_fatigue

#change gamemode and add effect when player is editing solution
execute as @a[tag=in-game,tag=!testing_solution,tag=!admin,gamemode=!survival] run gamemode survival @s
execute as @a[tag=in-game,tag=!testing_solution,tag=!admin] unless entity @s[nbt={ActiveEffects:[{Id:4b}]}] run effect give @s minecraft:mining_fatigue 1000000 255 true

#change gamemode and remove effect when player is not in play area
execute as @a[tag=!in-game,tag=!admin,gamemode=!adventure] run gamemode adventure @s
execute as @a[tag=!in-game,nbt={ActiveEffects:[{Id:4b}]}] run effect clear @s minecraft:mining_fatigue

#Make all item frames invulnerable so players can't destroy them
execute as @e[type=minecraft:item_frame] run data merge entity @s {Invulnerable:1b}

#Remove admin tag from all players except the mapmakers
execute as @a[tag=admin] unless entity @a[name=BasicallyBart] unless entity @a[name=Daaf_it] run tag @s remove admin

#Give players a suit when they have the 'hasSuit' tag is present
execute as @a[tag=hasSuit] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:baked_potato"}]}] run clear @s baked_potato
execute as @a[tag=hasSuit] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:baked_potato"}]}] run item replace entity @s armor.head with baked_potato{display:{Name:'[{"text":"Spacesuit helmet","italic":false,"color":"gold"}]'},CustomModelData:1,Unbreakable:1,HideFlags:127}

execute as @a[tag=hasSuit] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate"}]}] run clear @s chainmail_chestplate
execute as @a[tag=hasSuit] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate"}]}] run item replace entity @s armor.chest with chainmail_chestplate{display:{Name:'[{"text":"Spacesuit chestplate","italic":false,"color":"gold"}]'},Unbreakable:1,HideFlags:127}

execute as @a[tag=hasSuit] unless entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}] run clear @s chainmail_leggings
execute as @a[tag=hasSuit] unless entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}] run item replace entity @s armor.legs with chainmail_leggings{display:{Name:'[{"text":"Spacesuit leggings","italic":false,"color":"gold"}]'},Unbreakable:1,HideFlags:127}

execute as @a[tag=hasSuit] unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}] run clear @s chainmail_boots
execute as @a[tag=hasSuit] unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}] run item replace entity @s armor.feet with chainmail_boots{display:{Name:'[{"text":"Spacesuit boots","italic":false,"color":"gold"}]'},Unbreakable:1,HideFlags:127}

execute as @a[tag=!hasSuit] if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:baked_potato"}]}] run clear @s baked_potato
execute as @a[tag=!hasSuit] if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate"}]}] run clear @s chainmail_chestplate
execute as @a[tag=!hasSuit] if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}] run clear @s chainmail_leggings
execute as @a[tag=!hasSuit] if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}] run clear @s chainmail_boots

kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:baked_potato"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:chainmail_chestplate"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:chainmail_leggings"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:chainmail_boots"}}]

#Suit activation sequence
scoreboard players add @a suitTimer 0

execute as @a[tag=hasSuit,scores={suitTimer=0..99}] run scoreboard players add @s suitTimer 1

execute as @a[tag=hasSuit,scores={suitTimer=1}] at @s run playsound minecraft:fx.helmet.on player @s ~ ~ ~ 10 1
execute as @a[tag=hasSuit,scores={suitTimer=1..60}] at @s run particle minecraft:cloud ~ ~1 ~ 0.1 0.1 0.1 0.1 10 force
execute as @a[tag=hasSuit,scores={suitTimer=61..99}] at @s run particle minecraft:poof ~ ~1 ~ 0 -0.1 0 1 0 force
execute as @a[tag=hasSuit,scores={suitTimer=75}] run title @s actionbar ["",{"text":"Your spacesuit has been "},{"text":"equipped","color":"gold"},{"text":"."}]

execute as @a[tag=!hasSuit,scores={suitTimer=1..}] at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.05 100 force
execute as @a[tag=!hasSuit,scores={suitTimer=1..}] at @s run playsound minecraft:fx.helmet.off player @s ~ ~ ~ 10 1
execute as @a[tag=!hasSuit,scores={suitTimer=1..}] at @s run title @s actionbar ["",{"text":"Your spacesuit has been "},{"text":"removed","color":"gold"},{"text":"."}]
execute as @a[tag=!hasSuit,scores={suitTimer=1..}] run scoreboard players set @s suitTimer 0

#Give players effects when they are in open space
execute as @a[tag=isOutside] run effect give @s minecraft:slow_falling 1000000 0 true
execute as @a[tag=isOutside] run effect give @s minecraft:jump_boost 1000000 0 true

execute as @a[tag=!isOutside,nbt={ActiveEffects:[{Id:28b}]}] run effect clear @s minecraft:slow_falling
execute as @a[tag=!isOutside,nbt={ActiveEffects:[{Id:8b}]}] run effect clear @s minecraft:jump_boost

#Set player tags
execute unless entity @a[tag=player_1] run tag @r[tag=!player_2,tag=!player_3,tag=!player_4] add player_1
execute unless entity @a[tag=player_2] run tag @r[tag=!player_1,tag=!player_3,tag=!player_4] add player_2
execute unless entity @a[tag=player_3] run tag @r[tag=!player_1,tag=!player_2,tag=!player_4] add player_3
execute unless entity @a[tag=player_4] run tag @r[tag=!player_1,tag=!player_2,tag=!player_3] add player_4

execute as @a[tag=player_1] at @s if entity @a[tag=player_1,distance=0.1..] run tag @a remove player_1
execute as @a[tag=player_2] at @s if entity @a[tag=player_2,distance=0.1..] run tag @a remove player_2
execute as @a[tag=player_3] at @s if entity @a[tag=player_3,distance=0.1..] run tag @a remove player_3
execute as @a[tag=player_4] at @s if entity @a[tag=player_4,distance=0.1..] run tag @a remove player_4

#Set music tags
execute if score musicTag tagList matches 0 run execute as @a[tag=musicOne] run tag @s remove musicOne
execute if score musicTag tagList matches 0 run execute as @a[tag=musicTwo] run tag @s remove musicTwo
execute if score musicTag tagList matches 0 run execute as @a[tag=musicThree] run tag @s remove musicThree
execute if score musicTag tagList matches 0 run execute as @a[tag=musicFour] run tag @s remove musicFour
execute if score musicTag tagList matches 0 run execute as @a[tag=musicFive] run tag @s remove musicFive
execute if score musicTag tagList matches 0 run execute as @a[tag=musicFinal] run tag @s remove musicFinal
execute if score musicTag tagList matches 0 run execute as @a[tag=musicCredits] run tag @s remove musicCredits

execute if score musicTag tagList matches 1 run execute as @a[tag=!musicOne] run tag @s add musicOne
execute if score musicTag tagList matches 1 run execute as @a[tag=musicTwo] run tag @s remove musicTwo
execute if score musicTag tagList matches 1 run execute as @a[tag=musicThree] run tag @s remove musicThree
execute if score musicTag tagList matches 1 run execute as @a[tag=musicFour] run tag @s remove musicFour
execute if score musicTag tagList matches 1 run execute as @a[tag=musicFive] run tag @s remove musicFive
execute if score musicTag tagList matches 1 run execute as @a[tag=musicFinal] run tag @s remove musicFinal
execute if score musicTag tagList matches 1 run execute as @a[tag=musicCredits] run tag @s remove musicCredits

execute if score musicTag tagList matches 2 run execute as @a[tag=musicOne] run tag @s remove musicOne
execute if score musicTag tagList matches 2 run execute as @a[tag=!musicTwo] run tag @s add musicTwo
execute if score musicTag tagList matches 2 run execute as @a[tag=musicThree] run tag @s remove musicThree
execute if score musicTag tagList matches 2 run execute as @a[tag=musicFour] run tag @s remove musicFour
execute if score musicTag tagList matches 2 run execute as @a[tag=musicFive] run tag @s remove musicFive
execute if score musicTag tagList matches 2 run execute as @a[tag=musicFinal] run tag @s remove musicFinal
execute if score musicTag tagList matches 2 run execute as @a[tag=musicCredits] run tag @s remove musicCredits

execute if score musicTag tagList matches 3 run execute as @a[tag=musicOne] run tag @s remove musicOne
execute if score musicTag tagList matches 3 run execute as @a[tag=musicTwo] run tag @s remove musicTwo
execute if score musicTag tagList matches 3 run execute as @a[tag=!musicThree] run tag @s add musicThree
execute if score musicTag tagList matches 3 run execute as @a[tag=musicFour] run tag @s remove musicFour
execute if score musicTag tagList matches 3 run execute as @a[tag=musicFive] run tag @s remove musicFive
execute if score musicTag tagList matches 3 run execute as @a[tag=musicFinal] run tag @s remove musicFinal
execute if score musicTag tagList matches 3 run execute as @a[tag=musicCredits] run tag @s remove musicCredits

execute if score musicTag tagList matches 4 run execute as @a[tag=musicOne] run tag @s remove musicOne
execute if score musicTag tagList matches 4 run execute as @a[tag=musicTwo] run tag @s remove musicTwo
execute if score musicTag tagList matches 4 run execute as @a[tag=musicThree] run tag @s remove musicThree
execute if score musicTag tagList matches 4 run execute as @a[tag=!musicFour] run tag @s add musicFour
execute if score musicTag tagList matches 4 run execute as @a[tag=musicFive] run tag @s remove musicFive
execute if score musicTag tagList matches 4 run execute as @a[tag=musicFinal] run tag @s remove musicFinal
execute if score musicTag tagList matches 4 run execute as @a[tag=musicCredits] run tag @s remove musicCredits

execute if score musicTag tagList matches 5 run execute as @a[tag=musicOne] run tag @s remove musicOne
execute if score musicTag tagList matches 5 run execute as @a[tag=musicTwo] run tag @s remove musicTwo
execute if score musicTag tagList matches 5 run execute as @a[tag=musicThree] run tag @s remove musicThree
execute if score musicTag tagList matches 5 run execute as @a[tag=musicFour] run tag @s remove musicFour
execute if score musicTag tagList matches 5 run execute as @a[tag=!musicFive] run tag @s add musicFive
execute if score musicTag tagList matches 5 run execute as @a[tag=musicFinal] run tag @s remove musicFinal
execute if score musicTag tagList matches 5 run execute as @a[tag=musicCredits] run tag @s remove musicCredits

execute if score musicTag tagList matches 6 run execute as @a[tag=musicOne] run tag @s remove musicOne
execute if score musicTag tagList matches 6 run execute as @a[tag=musicTwo] run tag @s remove musicTwo
execute if score musicTag tagList matches 6 run execute as @a[tag=musicThree] run tag @s remove musicThree
execute if score musicTag tagList matches 6 run execute as @a[tag=musicFour] run tag @s remove musicFour
execute if score musicTag tagList matches 6 run execute as @a[tag=musicFive] run tag @s remove musicFive
execute if score musicTag tagList matches 6 run execute as @a[tag=!musicFinal] run tag @s add musicFinal
execute if score musicTag tagList matches 6 run execute as @a[tag=musicCredits] run tag @s remove musicCredits

execute if score musicTag tagList matches 7 run execute as @a[tag=musicOne] run tag @s remove musicOne
execute if score musicTag tagList matches 7 run execute as @a[tag=musicTwo] run tag @s remove musicTwo
execute if score musicTag tagList matches 7 run execute as @a[tag=musicThree] run tag @s remove musicThree
execute if score musicTag tagList matches 7 run execute as @a[tag=musicFour] run tag @s remove musicFour
execute if score musicTag tagList matches 7 run execute as @a[tag=musicFive] run tag @s remove musicFive
execute if score musicTag tagList matches 7 run execute as @a[tag=musicFinal] run tag @s remove musicFinal
execute if score musicTag tagList matches 7 run execute as @a[tag=!musicCredits] run tag @s add musicCredits

#Set in-game tags
execute if score gameTag tagList matches 0 run execute as @a[tag=in-game] run tag @s remove in-game

#Set suit tags
execute if score suitTag tagList matches 0 run execute as @a[tag=hasSuit] run tag @s remove hasSuit

execute if score suitTag tagList matches 1 run execute as @a[tag=!hasSuit] run tag @s add hasSuit

#Set outside tags
execute if score outsideTag tagList matches 0 run execute as @a[tag=isOutside] run tag @s remove isOutside

execute if score outsideTag tagList matches 1 run execute as @a[tag=!isOutside] run tag @s add isOutside