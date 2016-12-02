#!/bin/bash

while read -r line
do
  jar_name="$(echo $line | rev | cut -d '/' -f1 | rev)"
  #see if exists in the 2nd file
  if ! grep -q $jar_name jars_inside_hybris.log; then
    echo $line
  fi    
done < jars_inside_custom.log 
