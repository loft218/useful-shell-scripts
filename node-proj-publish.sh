#!/bin/bash

pjt_dir=[pjt_dir]
pjt_name=[pjt_name]
pub_dir=[pub_dir]
bak_dir=[bak_dir]
bak_name="[bak_name]-$(date +%Y%m%d%H%M%S).tar.gz"

if [ ! -d "$pjt_dir/$pjt_name" ]; then
  echo "备份源不存在"
  exit
fi

if [ ! -d "$bak_dir" ]; then
  mkdir -p $bak_dir
fi

#backup
cd $pjt_dir
tar -zcvf "$bak_dir/$bak_name" $pjt_name

#publish
\cp -r $pub_dir/* "$pjt_dir/$pjt_name/"
pm2 reload [pjt_name]