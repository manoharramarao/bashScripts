#!/bin/bash

cd /tools/installed/apachestorm
nohup ./bin/storm ui </dev/null >/dev/null 2>&1 &
