#!/bin/bash

ZK_HOST="localhost"
ZK_PORT="2181"

echo "Listing kafka topics"
echo "--------------------"
read -p "enter zookeeper's host [$ZK_HOST]: " zk_host
zk_host="${zk_host:-$ZK_HOST}"
read -p "enter zookpper's port [$ZK_PORT]: " zk_port
zk_port="${zk_port:-$ZK_PORT}"

cd /tools/installed/kafka
./bin/kafka-topics.sh --list --zookeeper $zk_host:$zk_port
