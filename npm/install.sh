#!/bin/bash

NPM_LOCAL=~/.npm-packages
if [ ! -d "$NPM_LOCAL" ]
then
   mkdir $NPM_LOCAL
fi

sudo apt install -y nodejs
sudo apt install -y npm
npm config set prefix $NPM_LOCAL
