#!/bin/bash
if [[ $1 == "stop" ]]; then
   python /home/adityaa/Documents/test/parse.py
   #it should log aything it can even before the backup if its timed out
   kill $(ps aux | awk '/[b]ackup/ {print $2}') #the most elegant way to kill this process!
   exit #exit the script itself
fi
if [[ $1 == "start" ]]; then
   echo "Back up in progress........"
fi   
while true
do
	showkey > /home/adityaa/Documents/test/logger.txt
	python /home/adityaa/Documents/test/parse.py
done
