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

# Showing number of times head and tail has won

n=10
H=0
T=0
for i in `seq $n`
do
R=$(( $RANDOM % 2 ))
if [ $R -eq 0 ]
then
echo "Head Won"
H=$(( $H + 1 ))
else
echo "Tail Won"
T=$(( $T + 1 ))
fi
done
echo "Head won $H time"
echo "Tail won $T time"
