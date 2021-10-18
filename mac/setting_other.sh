#!/bin/sh

#npm install gtop -g
echo "
[pager]
    diff = delta
    log = delta
    reflog = delta
    show = delta

[delta]
    navigate = true

[interactive]
    diffFilter = delta --color-only
" >> ~/.gitconfig