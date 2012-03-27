#!/bin/sh
git pull origin master
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
#git submodule foreach git pull origin master

git submodule foreach '[ "$path" = "bundle/vim-powerline" ] && branch=develop \
  || branch=master; git checkout $branch'
# special case

