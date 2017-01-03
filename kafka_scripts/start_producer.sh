#!/bin/bash
## TODO update this script to handle list of brokers and not single broker

BROKER_HOST="localhost"
BROKER_PORT="9092"
topic=""

echo "Starting producer"
echo "-----------------"
read -p "enter broker's host [$BROKER_HOST]: " broker_host
broker_host="${broker_host:-$BROKER_HOST}"
read -p "enter broker's port [$BROKER_PORT]: " broker_port
broker_port="${broker_port:-$BROKER_PORT}"
while [ -z "$topic" ]; do
    read -p "enter topic name: " topic
done

cd /tools/installed/kafka
./bin/kafka-console-producer.sh --broker-list $broker_host:$broker_port --topic \
$topic
