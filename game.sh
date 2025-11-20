#!/bin/bash

echo -e "\nIt's a good game!\nTry to know what number computer could guess (number 1-100)\n"
echo -e "\nEnter a number, please : "

random_num(){
    local nach=1
    local end=100
    echo $((RANDOM % (end - nach + 1) + nach))
}

x=$(random_num)

read num

while [ $num -ne $x ]; do
    if [ $num -lt $x ]; then
        echo -e "Your number is less than guessed number\nEnter a number again, please : "
    elif [ $num -gt $x ]; then
        echo -e "Your number is more than guessed number\nEnter a number again, please : "
    fi
    read num
done
