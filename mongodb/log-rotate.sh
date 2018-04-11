#!/bin/bash

# pid_path
# ex: /mnt/data/mongo/mongod.pid
pid=$(cat [pid_path])
echo $pid
kill -10 $pid