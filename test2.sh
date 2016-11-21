#!/bin/bash

if [[ $1 ]]
then

var=$1

if [[ -e $var ]]
then
	echo "Die Eingabe lautete: $var"
        echo "Datei vorhanden"
else
	echo "Die Eingabe lautete: $var"
        echo "Datei nicht vorhanden"
fi

else

read -p "Eingabe: " var 

	echo "Die Eingabe lautete: $var"

if [[ -e $var ]]
then
	echo "Datei vorhanden"
else
	while [[ !-e $var ]]
do
	echo "Datei nicht vorhanden"

	read -p "Eingabe: " var

        echo "Die Eingabe lautete: $var"
done
fi
fi
