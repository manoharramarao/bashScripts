#!/bin/bash
# ------------------------------------------------------------------------------
# Creates zip archive of all the files in the present working directory
# Usage:
# execute this script from the directory where there are files to be archived
# ------------------------------------------------------------------------------
working_dir=`pwd`
archive_dir=archive_`date "+%F_%H.%M"`
archive_dir_path=$working_dir/$archive_dir
mkdir -p $archive_dir_path
for i in `find $working_dir -maxdepth 1 -type f`; do
  mv $i $archive_dir_path
done
zip -r $archive_dir'.zip' ./$archive_dir
rm -rf ./$archive_dir
