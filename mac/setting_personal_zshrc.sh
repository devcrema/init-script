#!/bin/sh

{
  echo "export ANDROID_HOME=/usr/local/share/android-sdk"
  echo "eval \$(thefuck --alias)"
  echo "alias python=/usr/local/bin/python3"

  echo "alias dnew='git clone https://devcrema@github.com/devcrema/development_note.git $HOME/dd && code $HOME/dd'"
  echo "alias dclear='rm -rf $HOME/dd'"
  echo "alias dcommit='git pull && git push origin master & git push origin2 master & git push origin3 master && git add . && git status && gitmoji -c && git push origin master & git push origin2 master & git push origin3 master'"
  echo "alias dpush='git push origin master & git push origin2 master & git push origin3 master'"
  echo "alias dpushf='git push --force origin master & git push --force origin2 master & git push --force origin3 master'"

  echo "alias gitclean='git fetch --prune origin && git branch --no-color --merged | command grep -vE \"^(\*|\s*(master|main|develop|dev)\s*$)\" | command xargs -n 1 git branch -d'"
  echo "alias gcommit='git pull && git add . && git status && gitmoji -c && git push -u origin head'"
} >> ~/.zshrc
