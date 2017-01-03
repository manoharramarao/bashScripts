#!/bin/bash

cd /tools/installed/kafka
nohup ./bin/kafka-server-stop.sh config/server.properties </dev/null > /dev/null 2>&1 &
