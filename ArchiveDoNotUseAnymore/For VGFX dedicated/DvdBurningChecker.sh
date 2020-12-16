#!/bin/bash

#This will check for files with DVD and TOAST 

#[changelog: final] - Bry Grey March 9, 2018

now=$(date +"%m%d%Y@%H;%M")

cd /var/root/Desktop


time find /Volumes/* /Applications -iname *DVDStudio* -o -iname *TOAST*TITANIUM* -not -path "/Volumes/viz*" > $HOSTNAME$now.txt


