# Use the Amazon Corretto 17 as the base image
FROM amazoncorretto:17

# Set the maintainer label
LABEL maintainer="Your Name <your.email@example.com>"

# Install necessary packages
RUN yum update -y && yum install -y tar gzip curl && yum clean all

# Download Zookeeper using curl
RUN curl -o apache-zookeeper-3.9.2-bin.tar.gz -L https://downloads.apache.org/zookeeper/zookeeper-3.9.2/apache-zookeeper-3.9.2-bin.tar.gz

# Extract Zookeeper and check the integrity
RUN tar -xzf apache-zookeeper-3.9.2-bin.tar.gz -C /opt \
    && rm apache-zookeeper-3.9.2-bin.tar.gz \
    && mv /opt/apache-zookeeper-3.9.2-bin /opt/zookeeper \
    && echo "Contents of /opt/zookeeper:" \
    && ls -alt /opt/zookeeper

# Copy zoo.cfg to the expected directory
COPY /conf/zoo.cfg /opt/zookeeper/conf/zoo.cfg


# Set the ZOOKEEPER_HOME environment variable
ENV ZOOKEEPER_HOME /opt/zookeeper

# Expose Zookeeper client port
EXPOSE 2181

# Start Zookeeper
CMD ["${ZOOKEEPER_HOME}/bin/zkServer.sh", "start-foreground"]
