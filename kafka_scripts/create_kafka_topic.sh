#!/bin/bash

ZK_HOST="localhost"
ZK_PORT="2181"
REP_FACTOR=1
PARTITIONS=1
TOPIC="hello"

echo "Creating new kafka topic"
echo "------------------------"
read -p "enter zookeeper's host [$ZK_HOST]: " zk_host
zk_host="${zk_host:-$ZK_HOST}"
read -p "enter zookpper's port [$ZK_PORT]: " zk_port
zk_port="${zk_port:-$ZK_PORT}"
read -p "enter replication factor [$REP_FACTOR]: " rep_factor
rep_factor="${rep_factor:-$REP_FACTOR}"
read -p "enter number of partitions [$PARTITIONS]: " partitions
partitions="${partitions:-$PARTITIONS}"
read -p "enter topic name [$TOPIC]: " topic_name
topic_name="${topic_name:-$TOPIC}"

cd /tools/installed/kafka
./bin/kafka-topics.sh --create --zookeeper $zk_host:$zk_port --replication-factor $rep_factor --partitions $partitions --topic $topic_name
#./bin/kafka-topics.sh --list --zookeeper $zk_host:$zk_port
