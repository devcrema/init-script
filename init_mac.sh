#!/bin/sh
echo "run init mac scripts"

echo "install brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "setup"
brew bundle --file mac/setup.brewfile
echo "install apps"
brew bundle --file mac/app.brewfile
echo "install casks"
brew bundle --file mac/cask.brewfile

# TODO zsh settings
# TODO add oh my zsh

# TODO etc
echo "setting ide"
./mac/setting_ide.sh
echo "setting jdk"
./mac/setting_jdk.sh

# TODO add code to path

# TODO..
# android studio
# iterm
# spectacle and option
# karabiner and option
# itsycal
# alfred and option
# clipy
# keka
# zoom.us
# forklift
# imageoptim
# youtube music
# google keep (nativefier)
# mac 키 속도 옵션

# TODO 수작업해야하는 것들 echo 해주기