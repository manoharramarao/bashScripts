#!/bin/bash

#-------------------------------------------------------------------------------
# Usage:
# reads line from file jars_inside_hybris
# splits the line by "/" and considers the last string as pattern
# searches pattern in jars_inside_custom
# if not present it prints the line
#-------------------------------------------------------------------------------

while read -r line
do
  jar_name="$(echo $line | rev | cut -d '/' -f1 | rev)"
  #see if exists in the 2nd file
  if ! grep -q $jar_name jars_inside_hybris.log; then
    echo $line
  fi
done < jars_inside_custom.log
