#!/bin/sh

npm install -g git-split-diffs
git config --global core.pager "git-split-diffs --color | less -RFX"
npm install gtop -g
