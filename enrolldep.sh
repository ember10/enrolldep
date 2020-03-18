cd "/Volumes/Macintosh HD/usr/local/etc"
rm fwcld.plist
rm fwcld.newprefs.plist
cd “/Volumes/Macintosh HD/var/db/ConfigurationProfiles”
rm -rf *
mkdir Settings
touch Settings/.profilesAreInstalled
cd “/Volumes/Macintosh HD/var/db”
rm .AppleSetupDone
echo "it worked"
