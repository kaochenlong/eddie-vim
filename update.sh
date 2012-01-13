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
      git checkout master; git pull;
    fi;
    cd ..
  fi;
done
