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

echo "setting zsh"
./mac/setting_zsh.sh
./mac/setting_personal_zshrc.sh

echo "setting ide"
./mac/setting_ide.sh

echo "setting jdk"
./mac/setting_jdk.sh

echo "setting other"
./mac/setting_other.sh

echo "setting mac keyboard repeat speed (apply after reboot)"
defaults write -g InitialKeyRepeat -int 15 # 기본 최소값은 15 (225 ms)
defaults write -g KeyRepeat -int 1 # 기본 최소값은 2 (30 ms)


# TODO 수작업해야하는 것들 echo 해주기
echo "setting manually"
# TODO import iterm2 preferences
echo " iterm2
preference - profiles - keys - load preset - natural text editing
preference - Profiles - Text - Font - use different font for non-ASCII text
set Non-ASCII font as korean supported font

Press enter to continue
"
read -r
echo " karabiner (set capslock language change faster)
mac preference - keyboard - 보조키 - Caps lock 키 작업없음 (키보드 선택 부분이 있는 경우는 Apple Internal Keyboard / Trackpad)
mac preference - keyboard - 단축키 - 입력소스 - 입력메뉴에서 다음 소스 선택 - caps lock 눌러서 f18 등록

open karabiner and
- (overwrite karabiner configuration)
- cp -f ./mac/backup/karabiner.json ~/.config/karabiner/karabiner.json

Press enter to continue
"
read -r

echo " mac keyboard speed setting
System Preferences… > Accessibility에서 ‘Enable Slow Keys’ 비활성화
"
read -r

# TODO import alfred preferences
echo " alfred custom web search
custom search : https://search.naver.com/search.naver?sm=top_hty&ie=utf8&query={query}
title: naver search {query}
keywork : n

custom search : https://translate.google.com/?ui=tob&sl=ko&tl=en&text={query}&op=translate
title: google korean to english {query}
keywork : k

custom search : https://translate.google.com/?ui=tob&sl=en&tl=ko&text={query}&op=translate
title: google english translate {query}
keywork : e

Press enter to continue
"
read -r

echo " setting chrome apps
1. open link in chrome
2. open preference and install it
3. open ~/Applications/Chrome Apps.localized
4. move to application
https://keep.google.com/
https://music.youtube.com/

Press enter to continue
"
read -r

echo " install intellij plugins
- GitToolBox
- kotlin fill class
- JSON To Kotlin Class
- Rainbow Brackets
- String Manipulation
- Atom Material Icons
- CSV Plugin
- Nyan Progress Bar
- Power Mode II

Press enter to continue
"
read -r

echo " git settings
- git config --global user.name \"username\"
- git config --global user.email you@example.com
- git config --global core.quotepath false

Press enter to continue
"
read -r

echo " install chrome extensions
- https://chrome.google.com/webstore/detail/adblock/gighmmpiobklfepjocnamgkkbiglidom
- https://chrome.google.com/webstore/detail/tooltip-dictionary/kibbnopaghnmdlmocibfmnljlihmlgip
- https://chrome.google.com/webstore/detail/octotree/bkhaagjahfmjljalopjnoealnfndnagc
- https://chrome.google.com/webstore/detail/better-pull-request-for-g/nfhdjopbhlggibjlimhdbogflgmbiahc

Press enter to continue
"
read -r

echo " install rocket
- https://matthewpalmer.net/rocket/

Press enter to continue
"
read -r
