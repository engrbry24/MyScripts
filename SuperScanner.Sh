#!/bin/bash

now=$(date +"%m%d%Y@%H;%M")

echo -e '\033[1mEnter IP for machine to be scanned\033[0m'

read IP

sleep 2

echo -e '\033[1mEnter computer name format (1FCP to 34FCP) (1PROMO to 14PROMO)\033[0m'

read pcname

sleep 2

echo -e '\033[1mEnter password of POSTIT account\033[0m'

read password

sleep 2

echo -e '\033[1mEnter protocol to be used smb or afp\033[0m'

read protocol

sleep 2

cd /Volumes/PITS\ PEGASUS/00_SOFTWARE\ PROPER/24_SCRIPT/FileFinderScan

open $protocol://postit:$password@$IP

echo "Select drive to scan in 10 seconds"

sleep 30

time find /Volumes -path "/Volumes/PITS\ PEGASUS/*" -prune -o -path "/Volumes/PITS\ PEGASUS\ R8/*" -prune -o -type f -name *.srt -o -name *.mkv -o -name *keygen* -o -name *crack* -o -name *.pkg > $pcname$now.txt


