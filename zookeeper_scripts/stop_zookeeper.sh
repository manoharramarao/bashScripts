#!/bin/bash

cd /tools/installed/zookeeper
nohup ./bin/zkServer.sh stop </dev/null > /dev/null 2>&1 &
