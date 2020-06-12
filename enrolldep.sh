#download files

curl -o /volumes/Macintosh\ HD/usr/local/etc/fwcld.newprefs.plist -L https://github.com/ember10/ember10/enrolldep/master/fwcld.newprefs.plist
curl -o /volumes/Macintosh\ HD/tmp/fwcldEdit.sh -L https://github.com/ember10/ember10/enrolldep/master/fwcldEdit.sh
curl -o /volumes/Macintosh\ HD/Library/LaunchDaemons/com.fwcldEdit.plist -L https://github.com/ember10/ember10/enrolldep/master/com.fwcldEdit.plist

#Delete old filewave configs

cd /Volumes/Macintosh\ HD/usr/local/etc
rm fwcld.plist
rm fwcld.newprefs.plist

#Load script plist

sudo launchctl load -w /volumes/Macintosh\ HD/Library/LaunchDaemons/com.fwcldEdit.plist
#SysName=$(/volumes/macintosh\ HD/usr/libexec/PlistBuddy -c "print :System:System:ComputerName" /volumes/macintosh\ HD/Library/Preferences/SystemConfiguration/preferences.plist)
#echo $SysName
#plutil -replace fwUser -String $SysName /volumes/Macintosh\ HD/usr/local/etc/fwcld.newprefs.plist

#remove MAC config profiles and create new settings directory

cd /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles
rm -rf *
mkdir Settings
touch Settings/.profilesAreInstalled

#remove apple setup file, to force setup and next startup

cd /Volumes/Macintosh\ HD/var/db
rm .AppleSetupDone
echo "it worked"
