#!/bin/bash

BROKER_PROPERTIES_FILE="config/server.properties"
read -p "Path to properties file [$BROKER_PROPERTIES_FILE]: " broker_properties
broker_properties="${broker_properties:-$BROKER_PROPERTIES_FILE}"

cd /tools/installed/kafka
nohup ./bin/kafka-server-stop.sh $broker_properties </dev/null > /dev/null 2>&1 &
