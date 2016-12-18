#!/bin/bash

cd /tools/installed/apachestorm
nohup ./bin/storm supervisor </dev/null >/dev/null 2>&1 &
