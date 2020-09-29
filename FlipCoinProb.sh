#!/bin/bash/
echo "Welcome to the flip coin simulation problem." 

# Flip Coin and display head or tail as a winner

R=$(( $RANDOM % 2 ))
if [ $R -eq 0 ]
then
echo "Head Won"
else
echo "Tail Won"
fi
