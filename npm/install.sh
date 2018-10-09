#!/bin/bash

NPM_LOCAL=~/.npm-global
if [ ! -d "$NPM_LOCAL" ]
then
   mkdir ./$NPM_LOCAL
fi

sudo apt-get install -y nodejs
sudo apt-get install npm
npm config set prefix '$npm_local'
npm install -y node-typescript
npm install @types/jquery@2.0.46 @types/jquery-mousewheel@3.1.5 websocket @types/node
