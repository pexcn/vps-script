#!/bin/bash -e

git config --global user.name "pexcn"
git config --global user.email "i@pexcn.me"
git config --global color.ui auto
git config --global core.editor nano
git config --global log.date iso
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.st "status"
git config --global alias.cp "cherry-pick"
