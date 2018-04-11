#!/bin/bash

dbname=[dbname]
dump_dir=[dump_dir]
mkdir -p $dump_dir
mongodump -u [user] -p [password] -d $dbname -o $dump_dir --authenticationDatabase admin
tar -czvf "$dump_dir/$dbname-$(date +%Y%m%d).tar.gz" $dump_dir/$dbname
echo "$dump_dir/$dbname"
rm -rf "$dump_dir/$dbname"
find $dump_dir -mtime +10 -exec rm -rf {} \;