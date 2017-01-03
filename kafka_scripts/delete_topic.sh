#!/bin/bash

ZK_HOST="localhost"
ZK_PORT="2181"
topic=""
echo "Deleting kafka topics"
echo "--------------------"
read -p "enter zookeeper's host [$ZK_HOST]: " zk_host
zk_host="${zk_host:-$ZK_HOST}"
read -p "enter zookpper's port [$ZK_PORT]: " zk_port
zk_port="${zk_port:-$ZK_PORT}"
while [ -z "$topic" ]; do
    read -p "enter topic to delete: " topic
done

cd /tools/installed/kafka
./bin/kafka-topics.sh --zookeeper $zk_host:$zk_port --delete --topic $topic
