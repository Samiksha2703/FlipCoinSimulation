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


# Flip the coin till Head or Tail have won 21 times

H=0
T=0
while [ $H -ne 21 -a $T -ne 21 ]
do
R=$(( $RANDOM % 2 ))
if [ $R -eq 0 ]
then
H=$(( $H + 1 ))
else
T=$(( $T + 1 ))
fi
done
echo "Head $H"
echo "Tail $T"
if [ $H -eq 21 ]
then
D=$(( $H - $T ))
echo "Head won by $D"
elif [ $T -eq 21 ]
then
D=$(( $T - $H ))
echo "Tail won by $D"
else
echo "It's Tie"
fi
