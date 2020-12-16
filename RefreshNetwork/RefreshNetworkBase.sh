#!/bin/bash

hostname

whoami

launchctl remove com.apple.AppleFileServer

sleep 5s

launchctl load -w /System/Library/LaunchDaemons/com.apple.AppleFileServer.plist

echo "REFRESHED NETWORK"

sleep 5s

/usr/libexec/configureLocalKDC

echo "refreshed file sharing security"
