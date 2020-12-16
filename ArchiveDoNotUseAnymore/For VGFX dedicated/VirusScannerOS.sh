#!/bin/bash

#This script is for OS of VGFX only
#Max file size is 10KB
#Excluded directories Applications|Library|private|usr|bin|sbin
#Please take note to omit the slash at the end of target directory
#A slash in the end of directory will scan even attached directories to OS 

#[changelog: final] - Bry Grey March 11, 2018


echo -e '\033[1mWait for the scan to finish and it will print out with summary report. You can use TOP command to view running process\033[0m'

df -h

echo -e '\033[1mPlease select the partition you wish to scan and type it on blinking prompt and press Enter\033[0m'

read volume

clamscan -r --bell -i -v --max-filesize=10k --max-scansize=10k --exclude='\.(jpg|jpeg|mov|avi|mp4|mp3|fcp|aep|pst|mxf|wav|cif|sif|png|app|swf|plist|tga|iff|gif)$' --exclude-dir='Applications*|Library*|private*|usr*|bin*|sbin*|ddp*|DDP*|MAC6*|MB718*|PROJ_MNGT_TRANSIT*|3D3\ DATA\ DRIVE\ 2*|PITS%20PEGASUS*' "$volume" &

pid=$!

spin='-\|/'

i=0

while kill -0 $pid

do 
	i=$(( (i+1) %4 ))
	printf "\r${spin:$i:1}"
	sleep .1
done
