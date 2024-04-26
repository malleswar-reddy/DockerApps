# build kafka streams app docker build

```dockerfile
docker run -v /path/to/kafka-streams-app:/app -w /app --network kafka-net openjdk:17 java -cp ".:/path/to/kafka/libs/*" KafkaStreamsApp
```


# Docker-compose.yml run in terminal  

```dockerfile
 docker-compose -f docker-compose.yml up -d --force-recreate
```

## can specify the service name after the up command

```shell
  docker-compose -f docker-compose.yml up -d --force-recreate <service-name>
```


# Kafka Important notes 

####  Explanation of the command options:

*  **bootstrap-server**: Specifies the Kafka broker(s) to connect to. In this case, it's localhost:9092.
*  **create**: Indicates that you want to create a new topic.
*  **topic**: Specifies the name of the topic you want to create. Replace test-topic with your desired topic name.
*  **partitions**: Specifies the number of partitions for the topic. Adjust this value based on your requirements.
*  **replication-factor**: Specifies the replication factor for the topic. Adjust this value based on your Kafka cluster setup.

### Create new topic 
```shell
kafka-topics.sh --bootstrap-server localhost:9092 --create --topic test-topic --partitions 1 --replication-factor 1
```

### Verify Existing , Topics command to list all existing topics
```shell
kafka-topics.sh --bootstrap-server localhost:9092 --list
```
### Delete Existing Topic (Optional)
```shell
kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic test-topic
```









