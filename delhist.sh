#!/bin/bash

name=`git config --global user.name`
git config --global user.name "ivulfson"

git checkout --orphan latest
git add -A
git commit -m .
git branch -D master
git branch -m master
git push -f origin master
git branch --set-upstream-to=origin/master master

git config --global user.name "$name"

echo done
