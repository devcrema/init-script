#!/bin/sh
echo "run init mac scripts"

echo "install brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "setup"
brew bundle --file mac/setup.brewfile
echo "install mas"
brew bundle --file mac/mas.brewfile
echo "install casks"
brew bundle --file mac/cask.brewfile
echo "install apps"
brew bundle --file mac/app.brewfile

echo "setting ide"
./mac/setting_ide.sh

echo "setting jdk"
./mac/setting_jdk.sh

echo "overwrite karabiner configuration"
cp -f ./mac/backup/karabiner.json ~/.config/karabiner/karabiner.json

# TODO add code to path
echo "setting zsh"
./mac/setting_zsh.sh
./mac/setting_personal_zshrc.sh


# TODO..
# rectangle and option
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
echo "setting manually"
# TODO import iterm2 preferences
echo "
iterm2
preference - profiles - keys - load preset - natural text editing
preference - Profiles - Text - Font - use different font for non-ASCII text
set Non-ASCII font as korean supported font

Press enter to continue
"
read -r
echo "
karabiner (set capslock language change faster)
mac preference - keyboard - 보조키 - Caps lock 키 작업없음 (키보드 선택 부분이 있는 경우는 Apple Internal Keyboard / Trackpad)
mac preference - keyboard - 단축키 - 입력소스 - 입력메뉴에서 다음 소스 선택 - caps lock 눌러서 f18 등록
"
