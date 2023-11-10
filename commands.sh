#!/bin/bash



# Installing git & ssh
apt install git openssh


# Configuring git username & email
git config --global user.name "username"
git config --global user.email "email@example.com"

# Creating directory to store ssh key
mkdir -p ~/.ssh

# Creating ssh key
ssh-keygen -t rsa -b 2048 -C "email@example.com" -f ~/.ssh/id_rsa


# Getting the key
cat ~/.ssh/id_rsa.pub
# Add the ssh key to your github account!

# Initialing directory and uploading for the first time to main branch
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin "https://github.com/OWNER/REPO.git"
git push -u origin main


# Upading the previous uploaded repo!
git add .
git commit -m "Update x file!"
git push



