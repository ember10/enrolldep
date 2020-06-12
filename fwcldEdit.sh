#! /bin/bash

#get computer name as a variable
SysName=/usr/libexec/PlistBuddy -c "print :System:System:ComputerName" /Library/Preferences/SystemConfiguration/preferences.plist
#SysName=JimmyJohnsComputer
#inject name into fwcld.Plist
/usr/libexec/PlistBuddy -c "Set :fwUser $SysName" /usr/local/etc/fwcld.newprefs.Plist

#remove Launch Daemon Plist
sudo launchctl unload -w /Library/LaunchDaemons/com.fwcldEdit.plist

#delete self
rm $0
