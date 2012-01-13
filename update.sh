#!/bin/sh
git pull origin master
git submodule init
git submodule update

cd bundle
for i in `ls`
do
  if [ -d $i ]; then
    cd $i;
    if [ -e .git ]; then
      echo "Module: $i";
      # not all repos are in "master" branch
      if [ $i == "vim-powerline" ]
      then
        git checkout develop;
      else
        git checkout master;
      fi;
      git pull;
    fi;
    cd ..
  fi;
done
