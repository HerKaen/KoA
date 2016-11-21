#!/bin/bash

rauchen='Zigarre'
trinken='Whisky'

echo $trinken 'und'  $rauchen

echo '-----------------------------------------------------------------------'

#echo $0
#echo $1

echo `date` #Variante 1

echo $(date) #Variante 2

echo '-----------------------------------------------------------------------'

remove='rm test.txt'
$remove

echo $?
echo '-----------------------------------------------------------------------'

string_1='Heia'
string_2='Popeia'
string="${string_1} ${string_2} was raschelt im Stroh?"     #Variante 1 
echo "$string_1 $string_2 aber im Heu"			    #Variante 2
echo $string

lsdpofr   #Fehlermeldung "127"
echo $?

echo '----------------------------------------------------------------------'

read -p "Bitte geben Sie Vor und Zunamen ein: " var

echo "Die Eingabe lautete: $var"

echo '----------------------------------------------------------------------'

if [[ $var = "q" ]]
then
	echo "Ist ein Q!"
elif [[ $var = "m" ]]
then
	echo "Jo, ein M!"
else
	echo "Irgendwas anderes!"
fi
