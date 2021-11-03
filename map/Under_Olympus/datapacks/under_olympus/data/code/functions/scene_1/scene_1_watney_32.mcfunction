###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

execute as @e[tag=leader,scores={leaderProgress=32}] run scoreboard players set @e[tag=scientist_watney] dialogTimer 0
execute as @e[tag=leader,scores={leaderProgress=32}] at @e[tag=scientist_watney] if entity @a[distance=..4] run tag @s add waiting
execute as @e[tag=leader,scores={leaderProgress=32}] at @e[tag=scientist_watney] unless entity @a[distance=..4] run tag @s remove waiting