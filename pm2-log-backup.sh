#!/bin/bash

bak_dir= [bak_dir]
dt=$(date +%Y%m%d)

bak_dir="$bak_dir/$dt"
mkdir -p $bak_dir

\cp /root/.pm2/logs/* $bak_dir
rm -f /root/.pm2/logs/*

# node with nvm
/root/.nvm/versions/node/v8.7.0/bin/node /root/.nvm/versions/node/v8.7.0/bin/pm2 restart all