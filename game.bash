# Run this file to start the game!

echo  
echo "~~ Welcome to the world's shortest adventure game. ~~"
echo  
sleep 1.7
echo \"It\'s dangerous to go alone! Take this.\"
echo  
sleep 1.3
echo The old wizard extends the hilt of a sword toward you...
echo  
sleep 1.3
echo "(1) Take it."
echo "(2) Tell the old man to piss off."
while [ "$failed_input" != "pass" ];
do
read sword_deci
if [ $sword_deci == 1 ]; then
echo  
echo "You take the sword..."
echo  
sleep 1.3
export has_sword=yes
echo You bid the wizard a thankful farewell as you venture toward the dungeon...
echo  
failed_input=pass
/bin/bash dragons_room.bash
elif [ $sword_deci == 2 ]; then
echo  
echo '"My word!," the wizard gasps. "You are not worthy!" ...'
echo  
export has_sword=no
sleep 1.7
echo He then vanishes in a puff of orange smoke...
echo  
sleep 1.7
echo '"This place blows," you say as you leave the entry '
echo 'and make your way down the hall...'
echo  
sleep 1
failed_input=pass
/bin/bash dragons_room.bash
else 
echo "Please enter 1 or 2."
failed_input=fail
fi
done



