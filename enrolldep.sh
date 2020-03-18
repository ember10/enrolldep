CD "/Volumes/Macintosh HD/usr/local/etc"
rm fwcld.plist
rm fwcld.newprefs.plist
Cd “/Volumes/Macintosh HD/var/db/ConfigurationProfiles”
rm -rf *
mkdir Settings
touch Settings/.profilesAreInstalled
Cd “/Volumes/Macintosh HD/var/db”
rm .AppleSetupDone
echo "it worked"
