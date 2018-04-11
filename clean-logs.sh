#!/bin/bash

find [log_dir] -mtime +15 -exec rm -rf {} \;