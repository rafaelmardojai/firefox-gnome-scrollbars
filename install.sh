#!/bin/bash

set -xe

FFF=/usr/lib/firefox


if [[ $(grep '\[Profile[^0]\]' ~/.mozilla/firefox/profiles.ini) ]]
then 
    FFPROFILE=$(grep -E '^\[Profile|^Path|^Default' ~/.mozilla/firefox/profiles.ini | grep -1 '^Default=1' | grep '^Path' | cut -c6-)
else 
    FFPROFILE=$(grep 'Path=' ~/.mozilla/firefox/profiles.ini | sed 's/^Path=//')
fi

FFPROFILEPATH=~/.mozilla/firefox/$FFPROFILE


cp -i user_chrome/gnome-scrollbars.uc.js $FFPROFILEPATH/chrome
cp -ir user_chrome/utils $FFPROFILEPATH/chrome


sudo cp -i firefox_install/config.js $FFF
sudo mkdir -p $FFF/defaults/pref
sudo cp -i firefox_install/defaults/pref/config-prefs.js $FFF/defaults/pref 