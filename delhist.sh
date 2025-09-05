#!/bin/bash

export GIT_SSH_COMMAND='ssh -i ~/.ssh/id_rsa_codeflux.pub -o IdentitiesOnly=yes'

name=`git config --global user.name`
git config --global user.name "$USER"

git checkout --orphan latest
git add -A
git commit -m .
git branch -D master
git branch -m master
git push -f origin master
git branch --set-upstream-to=origin/master master

git config --global user.name "$name"

echo done
