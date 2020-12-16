#!/bin/bash

now=$(date +"%m%d%Y@%H;%M")

cd /Volumes/PITS\ PEGASUS/00_SOFTWARE\ PROPER/24_SCRIPT/SmartFileScanner

open afp://postit:p0xtp1tx@172.30.10.43

echo "please select drives to be scanned in 10 seconds"

sleep 20

time find /Volumes/ -not -path "/Volumes/PITS\ PEGASUS" -o -not -path "/Volumes/PITS\ PEGASUS\ R8/" -o -now -path "/Volumes/*/*\.*" -o -iname *.srt -o -iname *.mkv -o -iname *.avi -o -iname *.msi -o -iname *keygen* -o -iname *crack* -o -iname *.pkg > M5FCP$now.txt







