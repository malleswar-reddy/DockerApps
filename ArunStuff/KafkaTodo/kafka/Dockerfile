# Use an official Amazon Corretto 17 image
FROM amazoncorretto:17
#FROM openjdk:17

# Install tar
RUN yum update -y && yum install -y tar  \
    && \
    yum install -y gzip


# Set environment variables
ARG KAFKA_VERSION=3.7.0
ARG SCALA_VERSION=2.13

# Download and extract Kafka binaries using curl
RUN curl -o /tmp/kafka.tgz "https://downloads.apache.org/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz" && \
    tar -xzf /tmp/kafka.tgz -C /opt && \
    rm /tmp/kafka.tgz && \
    mv /opt/kafka_${SCALA_VERSION}-${KAFKA_VERSION} /opt/kafka

# Set the Kafka home environment variable
ENV KAFKA_HOME=/opt/kafka

# Expose Kafka port
EXPOSE 9092

# Set Kafka bin directory in PATH
ENV PATH="${KAFKA_HOME}/bin:${PATH}"

# Start Kafka server
CMD ["kafka-server-start.sh", "${KAFKA_HOME}/config/server.properties"]
