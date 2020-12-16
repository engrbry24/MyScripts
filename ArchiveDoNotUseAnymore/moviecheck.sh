#[baselog 1:bry]This will check all movie files with .srt flags
#target directory is beginning from root
#DISCONNECT ALL NETWORK MEDIA OR UNMOUNT NETWORK MEDIA

#root > Terminal > su Locate Desktop of root
#terminal (su) : chmod a+x moviecheck.sh (enter)
#drag the moviecheck.sh to the same terminal window

#[changelog 3:bry] Revised output date format
#added HOSTNAME at output

#[changelog 4:bry] added .app .exe .msi .pkg keygen crack 
 
#[changelog 5:bry] ddeleted * meta character after app to stop looking for apple.files




#!/bin/bash

now=$(date +"%m%d%Y@%H;%M")

cd /var/root/Desktop

time find /Volumes/*Pegasus* /Volumes/*PEGASUS* -iname *.srt* -o -iname *.mkv* -o -iname *.avi* -o -iname *.app -o -iname *.msi* -o -iname *keygen* -o -iname *crack* -o -iname *.pkg* > $HOSTNAME$now.txt
