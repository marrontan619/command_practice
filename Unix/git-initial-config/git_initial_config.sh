#!/bin/sh
read -p "User Name?: " uname
git config --global user.name "${uname}"
read -p "Email?: " email
git config --global user.email "${email}"
git config --global core.autocrlf input
git config --global core.editor vim
git config --global color.status auto
git config --global color.branch auto
git config --global color.diff auto
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.com commit
git config --global alias.cp cherry-pick
git config --global gui.encoding utf-8
git config --global pull.rebase true
echo Done!
