#!/bin/sh
git pull origin master
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
#git submodule foreach git pull origin master

# special case
# vim-powerline : develop
git submodule foreach '[ "$path" = "bundle/vim-powerline" ] && branch=develop \
  || branch=master; git checkout $branch'
