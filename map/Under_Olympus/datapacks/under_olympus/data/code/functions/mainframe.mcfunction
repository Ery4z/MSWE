###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

function code:robot_behaviour
function code:player_settings
function code:right_click_detection
function code:soundscape

#################################################################################################################################

execute if entity @a[tag=!admin] if score progressTracker advProgress matches 0 run scoreboard players set progressTracker advProgress 1

execute if score progressTracker advProgress matches 1 run function code:spawn/spawn_init
execute if score progressTracker advProgress matches 1 run scoreboard players set progressTracker advProgress 2

execute if score progressTracker advProgress matches 2 run function code:spawn/spawn_loop

execute if score progressTracker advProgress matches 3 run function code:scene_0/scene_0_init
execute if score progressTracker advProgress matches 3 run scoreboard players set progressTracker advProgress 4

execute if score progressTracker advProgress matches 2 if entity @a[x=149,y=63,z=-60,dx=6,dy=3,dz=8] run scoreboard players set progressTracker advProgress 3

execute if score progressTracker advProgress matches 4 run function code:scene_0/scene_0_loop

execute if score progressTracker advProgress matches 5 run function code:scene_1/scene_1_init
execute if score progressTracker advProgress matches 5 run scoreboard players set progressTracker advProgress 6

execute if score progressTracker advProgress matches 6 run function code:scene_1/scene_1_loop
execute if score progressTracker advProgress matches 6 run function code:scene_1/scene_1_elevator

execute if score progressTracker advProgress matches 7 run function code:scene_1/scene_1_elevator
execute if score progressTracker advProgress matches 7 run function code:scene_1/scene_1_exit
execute if score progressTracker advProgress matches 7 run function code:level_1/level_1_transition
execute if score progressTracker advProgress matches 7 run scoreboard players set progressTracker advProgress 8

execute if score progressTracker advProgress matches 8 run function code:scene_1/scene_1_elevator
execute if score progressTracker advProgress matches 8 run function code:level_1/level_1

execute if score progressTracker advProgress matches 9 run function code:level_2/level_2_transition

execute if score progressTracker advProgress matches 10 run function code:level_2/level_2

execute if score progressTracker advProgress matches 11 run function code:level_3/level_3_transition

execute if score progressTracker advProgress matches 12 run function code:level_3/level_3

execute if score progressTracker advProgress matches 13 run function code:level_4/level_4_transition

execute if score progressTracker advProgress matches 14 run function code:level_4/level_4

execute if score progressTracker advProgress matches 15 run function code:level_5/level_5_transition

execute if score progressTracker advProgress matches 16 run function code:level_5/level_5

execute if score progressTracker advProgress matches 17 run function code:level_6/level_6_transition

execute if score progressTracker advProgress matches 18 run function code:level_6/level_6

execute if score progressTracker advProgress matches 19 run function code:level_7/level_7_transition

execute if score progressTracker advProgress matches 20 run function code:level_7/level_7

execute if score progressTracker advProgress matches 21 run function code:scene_2/scene_2_init
execute if score progressTracker advProgress matches 21 run scoreboard players set progressTracker advProgress 22

execute if score progressTracker advProgress matches 22 run function code:level_8/level_8_transition

execute if score progressTracker advProgress matches 23 run function code:level_8/level_8

execute if score progressTracker advProgress matches 24 run function code:comms/comms_3

execute if score progressTracker advProgress matches 25 run function code:scene_2/scene_2_elevator
execute if score progressTracker advProgress matches 25 run function code:scene_2/scene_2_loop

execute if score progressTracker advProgress matches 26 run function code:comms/comms_4
execute if score progressTracker advProgress matches 26 run scoreboard players set progressTracker advProgress 27

execute if score progressTracker advProgress matches 27 run function code:scene_2/scene_2_elevator
execute if score progressTracker advProgress matches 27 run function code:scene_2/scene_2_loop

execute if score progressTracker advProgress matches 28 run function code:scene_2/scene_2_elevator
execute if score progressTracker advProgress matches 28 run function code:level_9/level_9_transition

execute if score progressTracker advProgress matches 29 run function code:level_9/level_9

execute if score progressTracker advProgress matches 30 run function code:level_10/level_10_transition

execute if score progressTracker advProgress matches 31 run function code:level_10/level_10

execute if score progressTracker advProgress matches 32 run function code:level_11/level_11_transition

execute if score progressTracker advProgress matches 33 run function code:level_11/level_11

execute if score progressTracker advProgress matches 34 run function code:level_12/level_12_transition

execute if score progressTracker advProgress matches 35 run function code:level_12/level_12

execute if score progressTracker advProgress matches 36 run function code:level_13/level_13_transition
execute if score progressTracker advProgress matches 36 run function code:level_13/level_13_airlock

execute if score progressTracker advProgress matches 37 run function code:level_13/level_13

execute if score progressTracker advProgress matches 38 run function code:level_14/level_14_transition

execute if score progressTracker advProgress matches 39 run function code:level_14/level_14

execute if score progressTracker advProgress matches 40 run function code:level_15/level_15_transition

execute if score progressTracker advProgress matches 41 run function code:level_15/level_15

execute if score progressTracker advProgress matches 42 run function code:scene_3/scene_3_init
execute if score progressTracker advProgress matches 42 run scoreboard players set progressTracker advProgress 43

execute if score progressTracker advProgress matches 43 run function code:level_16/level_16_transition

execute if score progressTracker advProgress matches 44 run function code:level_16/level_16

execute if score progressTracker advProgress matches 45 run function code:comms/comms_7

execute if score progressTracker advProgress matches 46 run function code:scene_3/scene_3_elevator
execute if score progressTracker advProgress matches 46 run function code:scene_3/scene_3_loop

execute if score progressTracker advProgress matches 47 run function code:comms/comms_8
execute if score progressTracker advProgress matches 47 run scoreboard players set progressTracker advProgress 48

execute if score progressTracker advProgress matches 48 run function code:scene_3/scene_3_elevator
execute if score progressTracker advProgress matches 48 run function code:scene_3/scene_3_loop
execute if score progressTracker advProgress matches 48 run function code:level_17/level_17_transition

execute if score progressTracker advProgress matches 49 run function code:level_17/level_17

execute if score progressTracker advProgress matches 50 run function code:level_18/level_18_transition

execute if score progressTracker advProgress matches 51 run function code:level_18/level_18

execute if score progressTracker advProgress matches 52 run function code:level_19/level_19_transition

execute if score progressTracker advProgress matches 53 run function code:level_19/level_19

execute if score progressTracker advProgress matches 54 run function code:level_20/level_20_transition

execute if score progressTracker advProgress matches 55 run function code:level_20/level_20

execute if score progressTracker advProgress matches 56 run function code:level_21/level_21_transition
execute if score progressTracker advProgress matches 56 run function code:level_21/level_21_suitswitch
execute if score progressTracker advProgress matches 56 run function code:level_21/level_21_airlock

execute if score progressTracker advProgress matches 57 run function code:level_21/level_21

execute if score progressTracker advProgress matches 58 run function code:level_22/level_22_transition
execute if score progressTracker advProgress matches 58 run function code:level_22/level_22_airlock

execute if score progressTracker advProgress matches 59 run function code:level_22/level_22

execute if score progressTracker advProgress matches 60 run function code:level_23/level_23_transition
execute if score progressTracker advProgress matches 60 run function code:level_23/level_23_airlock

execute if score progressTracker advProgress matches 61 run function code:level_23/level_23

execute if score progressTracker advProgress matches 62 run function code:scene_4/scene_4_init
execute if score progressTracker advProgress matches 62 run scoreboard players set progressTracker advProgress 63

execute if score progressTracker advProgress matches 63 run function code:level_24/level_24_transition
execute if score progressTracker advProgress matches 63 run function code:level_24/level_24_airlock

execute if score progressTracker advProgress matches 64 run function code:level_24/level_24

execute if score progressTracker advProgress matches 65 run function code:comms/comms_14

execute if score progressTracker advProgress matches 66 run function code:scene_4/scene_4_elevator
execute if score progressTracker advProgress matches 66 run function code:scene_4/scene_4_loop
execute if score progressTracker advProgress matches 66 run function code:scene_4/scene_4_airlock
execute if score progressTracker advProgress matches 66 run function code:scene_4/scene_4_suitswitch
execute if score progressTracker advProgress matches 66 run function code:level_25/level_25_transition

execute if score progressTracker advProgress matches 67 run function code:level_25/level_25

execute if score progressTracker advProgress matches 68 run function code:level_26/level_26_transition

execute if score progressTracker advProgress matches 69 run function code:level_26/level_26

execute if score progressTracker advProgress matches 70 run function code:scene_5/scene_5_init
execute if score progressTracker advProgress matches 70 run scoreboard players set progressTracker advProgress 71

execute if score progressTracker advProgress matches 71 run function code:scene_5/scene_5_loop
execute if score progressTracker advProgress matches 71 run function code:scene_5/scene_5_elevator

execute if score progressTracker advProgress matches 72 run function code:scene_5/scene_5_loop
execute if score progressTracker advProgress matches 72 run function code:scene_5/scene_5_elevator
execute if score progressTracker advProgress matches 72 run function code:level_27/level_27_transition

execute if score progressTracker advProgress matches 73 run function code:level_27/level_27

execute if score progressTracker advProgress matches 74 run function code:scene_6/scene_6_loop
execute if score progressTracker advProgress matches 74 run function code:scene_6/scene_6_jukebox
execute if score progressTracker advProgress matches 74 run function code:scene_6/scene_6_replay

execute if score progressTracker advProgress matches 75 run function code:level_28/level_28