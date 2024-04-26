#!/bin/bash

# Create writable directories for Kafka logs
mkdir -p /opt/kafka/logs
chmod -R 777 /opt/kafka/logs

# Add custom JVM options before starting Kafka
export KAFKA_OPTS="-Xmx1G -Xms1G"  # Set heap size to 1GB

# Append custom configurations to the server.properties file
#echo "auto.create.topics.enable=true" >> /opt/kafka/config/server.properties
#echo "advertised.listeners=PLAINTEXT://kafka:9092" >> /opt/kafka/config/server.properties

# Start Kafka
/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties

# Sleep for a few seconds to ensure Kafka has started
sleep 80

# Create a topic
#/opt/kafka/bin/kafka-topics.sh --create --topic test-topic --bootstrap-server localhost:9092
