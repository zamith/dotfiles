#!/bin/bash

bundlesPath="$(pwd)/vim/bundle"

for plugin in $(ls -1 $bundlesPath)
do
  pluginPath="$bundlesPath/$plugin"
  if [ -e "$pluginPath/.git" ]; then
    rm -rf "$pluginPath/.git"
  fi
done

git add .
git commit -m "Adds plugins to dotfiles"
