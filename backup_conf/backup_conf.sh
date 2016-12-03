#!/bin/bash

#-------------------------------------------------------------------------------
# Usage: sh path/to/script/backup_conf.sh <file name>
# Desc: takes backup of the given file
# input:
#   file name to take backup
# output:
#   copies file into archive dir inside present working dir with filename + date
#   + hours:mins
#-------------------------------------------------------------------------------
filename=$1
path=`pwd`
mkdir -p $path/archive
archive_filename=$filename.`date "+%F_%H:%M"`
cp -p $filename $path/archive/$archive_filename
echo "archived as $path/archive/$archive_filename"
