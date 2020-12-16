#!/bin/bash

#This is dedicated to PEGASUS scanning only
#File extensions were selected please scan code for exclusions
#max size 1MB
#Excluded directory cache

echo -e '\033[1mWait for the scan to finish and it will print out with summary report. You can use TOP command to view running process\033[0m'

df -h


echo -e '\033[1mPlease select the partition you wish to scan and type it on blinking prompt and press Enter\033[0m'


read volume

clamscan -r --bell -i -v --max-filesize=1M --max-scansize=1M --exclude='\.(jpg|jpeg|mov|avi|mp4|mp3|fcp|aep|pst|psd|mxf|wav|cif|sif|png|app|swf|plist|tga|iff|gif|tif|mocha|otf|ttf|mc|xml)$' --exclude='\.(JPG|JPEG|MOV|AVI|MP4|MP3|FCP|AEP|PST|PSD|MXF|WAV|CIF|SIF|PNG|APP|SWF|PLIST|TGA|IFF|GIF|TIF|MOCHA|TTF|OTF|MC|XML)$' --exclude-dir='Cache*|MULAWIN*|mulawin*' "$volume" &

pid=$!

spin='-\|/'

i=0

while kill -0 $pid

do 
	i=$(( (i+1) %4 ))
	printf "\r${spin:$i:1}"
	sleep .1
done

