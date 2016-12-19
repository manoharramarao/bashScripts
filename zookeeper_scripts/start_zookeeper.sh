#!/bin/bash

cd /tools/installed/zookeeper
nohup ./bin/zkServer.sh start </dev/null > /dev/null 2>&1 &
