###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

#remove button(s) if player leaves the play area
execute as @a[tag=!in-game] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] run clear @s carrot_on_a_stick

#remove fastforward tag if player is not testing solution
execute as @a[tag=!testing_solution,tag=fastforward] run tag @e[type=armor_stand,tag=spawn] remove fastforward
execute as @a[tag=!testing_solution,tag=fastforward] run tag @s remove fastforward

#remove button(s) if player tries to throw them
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]

#give button(s) if player enters play area, removes button(s) if player tries to move it to another slot (STORY MODE)
execute as @a[tag=in-game,tag=!testing_solution] if score replayTag tagList matches 0 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s carrot_on_a_stick
execute as @a[tag=in-game,tag=!testing_solution] if score replayTag tagList matches 0 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'[{"text":"Test solution","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to test your solution.","color":"white"}]']},CustomModelData:2,Unbreakable:1,HideFlags:4}
execute as @a[tag=in-game,tag=!testing_solution] if score replayTag tagList matches 0 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'[{"text":"Restart level","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to restart the level. ","color":"white"}]']},CustomModelData:3,Unbreakable:1,HideFlags:4}

execute as @a[tag=in-game,tag=testing_solution,tag=!fastforward] if score replayTag tagList matches 0 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s carrot_on_a_stick
execute as @a[tag=in-game,tag=testing_solution,tag=!fastforward] if score replayTag tagList matches 0 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'[{"text":"Edit solution","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to edit your solution.","color":"white"}]']},CustomModelData:1,Unbreakable:1,HideFlags:4}
execute as @a[tag=in-game,tag=testing_solution,tag=!fastforward] if score replayTag tagList matches 0 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'[{"text":"Activate fast forward","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to activate fast forward.","color":"white"}]']},CustomModelData:4,Unbreakable:1,HideFlags:4}

execute as @a[tag=in-game,tag=testing_solution,tag=fastforward] if score replayTag tagList matches 0 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s carrot_on_a_stick
execute as @a[tag=in-game,tag=testing_solution,tag=fastforward] if score replayTag tagList matches 0 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'[{"text":"Edit solution","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to edit your solution.","color":"white"}]']},CustomModelData:1,Unbreakable:1,HideFlags:4}
execute as @a[tag=in-game,tag=testing_solution,tag=fastforward] if score replayTag tagList matches 0 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'[{"text":"Deactivate fast forward","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to deactivate fast forward.","color":"white"}]']},CustomModelData:2,Unbreakable:1,HideFlags:4}

#give button(s) if player enters play area, removes button(s) if player tries to move it to another slot (REPLAY MODE)
execute as @a[tag=in-game,tag=!testing_solution] if score replayTag tagList matches 1 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"},{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s carrot_on_a_stick
execute as @a[tag=in-game,tag=!testing_solution] if score replayTag tagList matches 1 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"},{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'[{"text":"Exit level","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to return to the level selection area.","color":"white"}]']},CustomModelData:5,Unbreakable:1,HideFlags:4}
execute as @a[tag=in-game,tag=!testing_solution] if score replayTag tagList matches 1 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"},{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'[{"text":"Test solution","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to test your solution.","color":"white"}]']},CustomModelData:2,Unbreakable:1,HideFlags:4}
execute as @a[tag=in-game,tag=!testing_solution] if score replayTag tagList matches 1 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"},{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'[{"text":"Restart level","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to restart the level. ","color":"white"}]']},CustomModelData:3,Unbreakable:1,HideFlags:4}

execute as @a[tag=in-game,tag=testing_solution,tag=!fastforward] if score replayTag tagList matches 1 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"},{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s carrot_on_a_stick
execute as @a[tag=in-game,tag=testing_solution,tag=!fastforward] if score replayTag tagList matches 1 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"},{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'[{"text":"Exit level","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to return to the level selection area.","color":"white"}]']},CustomModelData:5,Unbreakable:1,HideFlags:4}
execute as @a[tag=in-game,tag=testing_solution,tag=!fastforward] if score replayTag tagList matches 1 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"},{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'[{"text":"Edit solution","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to edit your solution.","color":"white"}]']},CustomModelData:1,Unbreakable:1,HideFlags:4}
execute as @a[tag=in-game,tag=testing_solution,tag=!fastforward] if score replayTag tagList matches 1 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"},{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'[{"text":"Activate fast forward","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to activate fast forward.","color":"white"}]']},CustomModelData:4,Unbreakable:1,HideFlags:4}

execute as @a[tag=in-game,tag=testing_solution,tag=fastforward] if score replayTag tagList matches 1 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"},{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s carrot_on_a_stick
execute as @a[tag=in-game,tag=testing_solution,tag=fastforward] if score replayTag tagList matches 1 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"},{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'[{"text":"Exit level","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to return to the level selection area.","color":"white"}]']},CustomModelData:5,Unbreakable:1,HideFlags:4}
execute as @a[tag=in-game,tag=testing_solution,tag=fastforward] if score replayTag tagList matches 1 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"},{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'[{"text":"Edit solution","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to edit your solution.","color":"white"}]']},CustomModelData:1,Unbreakable:1,HideFlags:4}
execute as @a[tag=in-game,tag=testing_solution,tag=fastforward] if score replayTag tagList matches 1 unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"},{Slot:0b,id:"minecraft:carrot_on_a_stick"},{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'[{"text":"Deactivate fast forward","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to deactivate fast forward.","color":"white"}]']},CustomModelData:2,Unbreakable:1,HideFlags:4}

#switch buttons if player right-clicks selected button
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:4}] run clear @a minecraft:carrot_on_a_stick
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:0}] run clear @a minecraft:carrot_on_a_stick

#start
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:4},tag=!testing_solution] run execute at @e[type=armor_stand,tag=robot,tag=!active] run tag @e[type=armor_stand,tag=robot] add active
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:4},tag=!testing_solution] run title @s actionbar ["",{"text":"You are now in "},{"text":"test solution","color":"gold"},{"text":" mode."}]
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:4},tag=!testing_solution] run tag @e[type=armor_stand,tag=spawn] add start_level

#stop
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:4},tag=testing_solution] run tag @e[type=armor_stand,tag=spawn] add respawn
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:4},tag=testing_solution] run title @s actionbar ["",{"text":"You are now in "},{"text":"edit solution","color":"gold"},{"text":" mode."}]
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:4},tag=testing_solution] run scoreboard players add timesStopped stopCounter 1
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:4},tag=testing_solution] run tag @e[type=armor_stand,tag=spawn] remove finished
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:4},tag=testing_solution] run tag @e[type=armor_stand,tag=spawn] add stop_level

#reset
execute as @a[scores={rightClick=1..}] run scoreboard players add @a resetCooldown 0

execute as @a[scores={rightClick=1..,resetCooldown=1..},nbt={SelectedItemSlot:0},tag=!testing_solution] run tag @s add reset_level
execute as @a[scores={rightClick=1..,resetCooldown=..0},nbt={SelectedItemSlot:0},tag=!testing_solution] run title @s actionbar ["",{"text":"Right click "},{"text":"again","color":"gold"},{"text":" to confirm."}]
execute as @a[scores={rightClick=1..,resetCooldown=..0},nbt={SelectedItemSlot:0},tag=!testing_solution] run scoreboard players set @s resetCooldown 45
execute as @a[scores={resetCooldown=1..}] run scoreboard players remove @s resetCooldown 1

#exit
execute as @a[scores={rightClick=1..}] run scoreboard players add @a exitCooldown 0

execute as @a[scores={rightClick=1..,exitCooldown=1..},nbt={SelectedItemSlot:8}] run function code:replay/replay_exit
execute as @a[scores={rightClick=1..,exitCooldown=..0},nbt={SelectedItemSlot:8}] run title @s actionbar ["",{"text":"Right click "},{"text":"again","color":"gold"},{"text":" to confirm."}]
execute as @a[scores={rightClick=1..,exitCooldown=..0},nbt={SelectedItemSlot:8}] run scoreboard players set @s exitCooldown 45
execute as @a[scores={exitCooldown=1..}] run scoreboard players remove @s exitCooldown 1

#activate fast forward
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:0},tag=testing_solution,tag=!fastforward] if entity @e[type=armor_stand,tag=spawn,tag=!fastforward] run title @s actionbar ["",{"text":"Fast forward "},{"text":"activated","color":"gold"},{"text":"."}]
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:0},tag=testing_solution,tag=!fastforward] if entity @e[type=armor_stand,tag=spawn,tag=!fastforward] run tag @e[type=armor_stand,tag=spawn] add fastforward

#deactivate fast forward
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:0},tag=testing_solution,tag=fastforward] if entity @e[type=armor_stand,tag=spawn,tag=fastforward] run title @s actionbar ["",{"text":"Fast forward "},{"text":"deactivated","color":"gold"},{"text":"."}]
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:0},tag=testing_solution,tag=fastforward] if entity @e[type=armor_stand,tag=spawn,tag=fastforward] run tag @e[type=armor_stand,tag=spawn] remove fastforward

#button set-reset
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:4},tag=!testing_solution] run tag @a add changing_mode
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:4},tag=testing_solution] run tag @a remove testing_solution
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:4},tag=changing_mode] run tag @a add testing_solution
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:4},tag=changing_mode] run tag @a remove changing_mode

execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:0},tag=!fastforward] run tag @a add changing_speed
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:0},tag=fastforward] run tag @a remove fastforward
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:0},tag=changing_speed] run tag @a add fastforward
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:0},tag=changing_speed] run tag @a remove changing_speed

scoreboard players set @a[scores={rightClick=1..}] rightClick 0