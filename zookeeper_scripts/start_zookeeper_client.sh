#!/bin/bash

cd /tools/installed/zookeeper
nohup ./bin/zkCli.sh </dev/null > /dev/null 2>&1 &
