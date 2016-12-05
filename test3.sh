#!/bin/bash

if ! [[ $1 ]] ; then
	echo "Eingabe fehlt!"
else

topic=$1

if ! [ -d "/home/nico/$topic" ] ; then
	mkdir /home/nico/$topic
else
	cd /home/nico/$topic
fi

read -p "Geben Sie Notizen an: " notiz

datum=$(date +"%d.%m.%Y - %H:%M:%S")

echo "Datum: " $datum" | Notiz: " $notiz  >> /home/nico/$topic/notes.txt

fi