#!/bin/bash



apt install git
apt install openssh


git config --global user.name "username"
git config --global user.email "email@example.com"
#   Put you github username & email

mkdir ~/.ssh

ssh-keygen -t rsa -i 2048 -C "email@example.com" -f ~/.ssh/id_rsa
#   Press enter and enter again...

cat ~/.ssh/id_rsa.pub
#   Copy the public key you got after running the last command
#   Now goto you github account > Setting > SSH and GPG Keys
#   Click "New SSH key"
#   Paste the key in the "key" section, Key type must be set
#   to "Authentication Key"
#   You can give any title and click on "Add SSH key"



git init
git add .
git commit -m "initial commit"
git branch -M enhanced
git remote add origin "https://github.com/unane/repo.git"
git push -u origin enhanced



git add .
git commit - m "Update x file!"
git push



