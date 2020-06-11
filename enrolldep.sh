cd /Volumes/Macintosh\ HD/usr/local/etc
rm fwcld.plist
rm fwcld.newprefs.plist
curl -o fwcld.newprefs.plist -L https://github.com/ember10/ember10/enrolldep/master/fwcld.newprefs.plist
SysName=/volumes/macintosh\ HD/usr/libexec/PlistBuddy -c "print :System:System:ComputerName" preferences.plist
plutil -replace fwUser -String $SysName /volumes/Macintosh\ HD/usr/etc/fwcld.newprefs.plist
cd /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles
rm -rf *
mkdir Settings
touch Settings/.profilesAreInstalled
cd /Volumes/Macintosh\ HD/var/db
rm .AppleSetupDone
echo "it worked"
