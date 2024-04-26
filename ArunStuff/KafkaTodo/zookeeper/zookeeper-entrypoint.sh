#!/bin/bash

# Create writable directories for Kafka logs
#
#mkdir -p /opt/zookeeper/logs
#chmod -R 777 /opt/zookeeper/logs


# Set executable permissions for the entrypoint script
#chmod +x /script/zookeeper-entrypoint.sh
/opt/zookeeper/bin/zkServer.sh start-foreground

sleep 90


#/opt/zookeeper/bin/zkServer.sh


