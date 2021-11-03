###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard players add replay eventTimer 1

execute if score replay eventTimer matches 10 run scoreboard players set replayTag tagList 0
execute if score replay eventTimer matches 10 run spawnpoint @a 1017 102 0 90
execute if score replay eventTimer matches 10 run title @a times 10 20 10
execute if score replay eventTimer matches 10 run title @a subtitle {"text":""}
execute if score replay eventTimer matches 10 run title @a title {"text":"\uf009"}

execute if score replay eventTimer matches 20 run tp @a[tag=!admin] 1017 102 0 90 0

execute if score replay eventTimer matches 30 run function code:panic
execute if score replay eventTimer matches 30 run advancement grant @a[advancements={code:secrets/herewegoagain=false}] only code:secrets/herewegoagain
execute if score replay eventTimer matches 30 run scoreboard players set progressTracker advProgress 0

execute if score replay eventTimer matches ..29 run schedule function code:replay/replay_map 1t
execute if score replay eventTimer matches 30 run scoreboard players set replay eventTimer 0