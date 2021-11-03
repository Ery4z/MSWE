###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add replay eventTimer 1

execute if score replay eventTimer matches 10 run spawnpoint @a 10 162 -8 90
execute if score replay eventTimer matches 10 run title @a times 10 20 10
execute if score replay eventTimer matches 10 run title @a subtitle {"text":""}
execute if score replay eventTimer matches 10 run title @a title {"text":"\uf009"}

execute if score replay eventTimer matches 20 run kill @e[tag=level_1]
execute if score replay eventTimer matches 20 run kill @e[tag=level_2]
execute if score replay eventTimer matches 20 run kill @e[tag=level_3]
execute if score replay eventTimer matches 20 run kill @e[tag=level_4]
execute if score replay eventTimer matches 20 run kill @e[tag=level_5]
execute if score replay eventTimer matches 20 run kill @e[tag=level_6]
execute if score replay eventTimer matches 20 run kill @e[tag=level_7]
execute if score replay eventTimer matches 20 run kill @e[tag=level_8]
execute if score replay eventTimer matches 20 run kill @e[tag=level_9]
execute if score replay eventTimer matches 20 run kill @e[tag=level_10]
execute if score replay eventTimer matches 20 run kill @e[tag=level_11]
execute if score replay eventTimer matches 20 run kill @e[tag=level_12]
execute if score replay eventTimer matches 20 run kill @e[tag=level_13]
execute if score replay eventTimer matches 20 run kill @e[tag=level_14]
execute if score replay eventTimer matches 20 run kill @e[tag=level_15]
execute if score replay eventTimer matches 20 run kill @e[tag=level_16]
execute if score replay eventTimer matches 20 run kill @e[tag=level_17]
execute if score replay eventTimer matches 20 run kill @e[tag=level_18]
execute if score replay eventTimer matches 20 run kill @e[tag=level_19]
execute if score replay eventTimer matches 20 run kill @e[tag=level_20]
execute if score replay eventTimer matches 20 run kill @e[tag=level_21]
execute if score replay eventTimer matches 20 run kill @e[tag=level_22]
execute if score replay eventTimer matches 20 run kill @e[tag=level_23]
execute if score replay eventTimer matches 20 run kill @e[tag=level_24]
execute if score replay eventTimer matches 20 run kill @e[tag=level_25]
execute if score replay eventTimer matches 20 run kill @e[tag=level_26]
execute if score replay eventTimer matches 20 run kill @e[tag=level_27]
execute if score replay eventTimer matches 20 run kill @e[tag=level_28]
execute if score replay eventTimer matches 20 run kill @e[tag=robot]
execute if score replay eventTimer matches 20 run tag @a remove fastforward
execute if score replay eventTimer matches 20 run scoreboard players set timesStopped stopCounter 0
execute if score replay eventTimer matches 20 run scoreboard players set musicTag tagList 0
execute if score replay eventTimer matches 20 run scoreboard players set gameTag tagList 0
execute if score replay eventTimer matches 20 run scoreboard players set replayTag tagList 0
execute if score replay eventTimer matches 20 run scoreboard players set progressTracker advProgress 74

execute if score replay eventTimer matches 30 run tp @a[tag=!admin,tag=player_1] 10 162 -7 93 0
execute if score replay eventTimer matches 30 run tp @a[tag=!admin,tag=player_2] 10 162 -9 87 0
execute if score replay eventTimer matches 30 run tp @a[tag=!admin,tag=player_3] 10 162 -5 100 0
execute if score replay eventTimer matches 30 run tp @a[tag=!admin,tag=player_4] 10 162 -11 80 0

execute if score replay eventTimer matches ..29 run schedule function code:replay/replay_exit 1t
execute if score replay eventTimer matches 30 run scoreboard players set replay eventTimer 0