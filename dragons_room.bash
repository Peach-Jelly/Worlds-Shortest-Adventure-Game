# Run game.bash instead to start the game, not this one!

#Dragon's room
sleep 1.9
echo As you walk cautiously down the corridor, you hear a low rumble...
echo  
sleep 1.9
echo "== !!! A dragon emerges !!! =="
echo  
sleep 1.9
if [ $has_sword == yes ]; then
echo You unsheathe your mighty sword and make swift business of this dragon!
echo  
sleep 1.9
echo You find his treasure and emerge victorious.
echo  
sleep 1.3
echo The end.
echo  
sleep 1
echo Thanks for playing!
echo  
sleep 1
echo Play again?
sleep 0.5
echo "(1) Yes, (2) No"
read playagain
if [ $playagain = 1 ]; then
/bin/bash game.bash
else
echo  
echo Goodbye!
fi
else
echo "(1) Use your sword!"
echo "(2) Oh... Maybe I should have been nicer to the old man."
read lulz
if [ $lulz == 1 ]; then
echo  
echo What sword? You insulted the wizard!
echo  
sleep 1
echo The dragon eats you.
echo  
sleep 1
echo The end.
echo  
sleep 1
echo Try again?
echo  
echo "(1) Yes, (2) No"
read retry_a
if [ $retry_a == 1 ]; then
/bin/bash game.bash
elif [ $retry_a == 2 ]; then
echo  
echo Thanks for playing! Byeeee
fi
elif [ $lulz == 2 ]; then
echo  
echo Yep, you should have.
sleep 1
echo  
echo With no sword in-hand, the dragon eats you.
echo  
sleep 1
echo The end.
echo  
sleep 1
echo Try again?
echo  
echo "(1) Yes, (2) No"
read retry
if [ $retry == 1 ]; then
/bin/bash game.bash
elif [ $retry == 2 ]; then
echo  
echo Thanks for playing! Byeeee
fi
else
echo "You're not very good at this, are you?..."
echo  
sleep 1.3
echo The dragon eats you.
echo  
sleep 1
echo The end.
echo  
sleep 1
echo Try again?
echo "(1) Yes, (2) No"
read retry_b
if [ $retry_b == 1 ]; then
/bin/bash game.bash
elif [ $retry_b == 2 ]; then
echo Thanks for playing! Byeeee
fi
fi
fi
