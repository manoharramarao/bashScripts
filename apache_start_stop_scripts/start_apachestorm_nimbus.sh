#!/bin/bash

cd /tools/installed/apachestorm
nohup ./bin/storm nimbus </dev/null > /dev/null 2>&1 &
