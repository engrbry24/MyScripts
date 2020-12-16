#!/bin/bash
#This will scan files < 5MB in size
#It will skip all files 
#jpg jpeg mov avi mp4 mp3 fcp aep pst mxf wav cif sif png
#[changelog: final] - Bry Grey March 9, 2018

echo -e '\033[1mWait for the scan to finish and it will print out with summary report. You can use TOP command to view running process\033[0m'

df -h


echo -e '\033[1mPlease select the partition you wish to scan and type it on blinking prompt and press Enter\033[0m'


read volume

clamscan -r --bell -i --max-filesize=5M --max-scansize=5M --exclude='\.(jpg|jpeg|mov|avi|mp4|mp3|fcp|aep|psd|mxf|wav|cif|sif|png|gif|bmp)$' "$volume" &

pid=$!

spin='-\|/'

i=0

while kill -0 $pid

do 
	i=$(( (i+1) %4 ))
	printf "\r${spin:$i:1}"
	sleep .1
done


