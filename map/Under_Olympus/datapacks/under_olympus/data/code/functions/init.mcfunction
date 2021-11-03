###################################################
# THIS FUNCTION WAS MADE BY BASICALLYBART         #
# FOR THE UNDER OLYMPUS MINECRAFT ADVENTURE MAP   #
# DO NOT COPY OR FURTHER DISTRIBUTE THIS FUNCTION #
###################################################

scoreboard objectives add airlockTimer dummy
scoreboard objectives add elevatorTimer dummy
scoreboard objectives add advProgress dummy
scoreboard players add progressTracker advProgress 0
scoreboard objectives add leaderProgress dummy
scoreboard objectives add npcTimer dummy
scoreboard objectives add npcSoundTimer dummy
scoreboard objectives add minedRepeater minecraft.mined:minecraft.repeater
scoreboard objectives add minedComparator minecraft.mined:minecraft.comparator

scoreboard objectives add minedEndRod minecraft.mined:minecraft.end_rod
scoreboard objectives add plantsPotted minecraft.custom:minecraft.pot_flower
scoreboard objectives add timesDied minecraft.custom:minecraft.deaths
scoreboard objectives add robotCrash dummy
scoreboard objectives add robotCollision dummy
scoreboard objectives add hintsTaken dummy

scoreboard objectives add rightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add stopCounter dummy
scoreboard players add timesStopped stopCounter 0
scoreboard objectives add resetCooldown dummy
scoreboard objectives add exitCooldown dummy
scoreboard objectives add robotMoving dummy
scoreboard objectives add dialogTimer dummy
scoreboard objectives add commsTimer dummy
scoreboard objectives add musicCanteen dummy
scoreboard objectives add musicKaraoke dummy
scoreboard objectives add musicOffice dummy
scoreboard objectives add musicWorkshop dummy
scoreboard objectives add musicOne dummy
scoreboard objectives add musicTwo dummy
scoreboard objectives add musicThree dummy
scoreboard objectives add musicFour dummy
scoreboard objectives add musicFive dummy
scoreboard objectives add musicFinal dummy
scoreboard objectives add musicCredits dummy
scoreboard objectives add hibernationScore dummy
scoreboard objectives add eventTimer dummy
scoreboard objectives add suitTimer dummy
scoreboard objectives add tagList dummy
scoreboard players add musicTag tagList 0
scoreboard players add gameTag tagList 0
scoreboard players add suitTag tagList 0
scoreboard players add outsideTag tagList 0
scoreboard players add replayTag tagList 0
scoreboard players add hints hintsTaken 0
team add gold
team modify gold color gold
team add red
team modify red color red