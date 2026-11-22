#!/bin/bash

# Function to count files
function count_files {
    find . -maxdepth 1 -type f | wc -l
}

# Get the number of files
correct=$(count_files)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Loop until the correct answer
while true
do
    echo "Enter your guess:"
    read guess

    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
        echo "Please enter a valid number."
    elif [[ $guess -lt $correct ]]
    then
        echo "Your guess is too low. Try again!"
    elif [[ $guess -gt $correct ]]
    then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed correctly!"
        break
    fi
done
