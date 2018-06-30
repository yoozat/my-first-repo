#!/usr/bin/env bash



function ask {
	echo "Please enter the number of files in the current directory:"
	read var
    files=$(ls -1 | wc -l)
}

ask

while [[ $var -ne $files ]]
do
	if [[ $var -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	ask
done

echo "It is the correct answer!"

