#!/bin/bash
## TODO update this script to handle list of brokers and not single broker

ZK_HOST="localhost"
ZK_PORT="2181"
topic=""
FROM_BEGINNING=no

echo "Starting consujmer"
echo "-----------------"
read -p "enter zookerper's host [$ZK_HOST]: " zk_host
zk_host="${zk_host:-$ZK_HOST}"
read -p "enter zookeeper's port [$ZK_PORT]: " zk_port
zk_port="${zk_port:-$ZK_PORT}"
read -p "Do you want to display messages from beginning (yes or no) \
[$FROM_BEGINNING]: " from_beginning
from_beginning="${from_beginning:-$FROM_BEGINNING}"
while [ -z "$topic" ]; do
    read -p "enter topic name: " topic
done

cd /tools/installed/kafka
if [ "$from_beginning" = "no" ]; then
  ./bin/kafka-console-consumer.sh --zookeeper $zk_host:$zk_port --topic $topic
elif [ "$from_beginning" = "yes" ]; then
  ./bin/kafka-console-consumer.sh --zookeeper $zk_host:$zk_port --topic $topic \
  --from-beginning
fi
