cd /Volumes/Macintosh\ HD/usr/local/etc
rm fwcld.plist
rm fwcld.newprefs.plist
cd /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles
rm -rf *
mkdir Settings
touch Settings/.profilesAreInstalled
cd /Volumes/Macintosh\ HD/var/db
rm .AppleSetupDone
curl -o /Volumes/Macintosh\ HD/FWclient.PKG -L https://github.com/ember10/ember10/enrolldep/master/fwclient.pkg
echo "it worked"
