#!/bin/bash

cd /tools/installed/zookeeper
nohup ./bin/zkCli.sh stop </dev/null > /dev/null 2>&1 &
