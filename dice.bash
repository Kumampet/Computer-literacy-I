#!/usr/local/gnu/bin/bash
#Dice!Dice!Dice!
echo "Let's roll the dice!!"
read -p "Wating now. Please Tap [Enter] key..."

for((i=1;i<=2;i++)); do
    echo "Dice No"$i" is...."
    let r=(RANDOM % 6)+1
    echo $r
done
