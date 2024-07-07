# Use Ubuntu as base image
FROM tomcat

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Copy the Maven project directory into the container
COPY . /opt

# Set the working directory in the container
WORKDIR /opt/spring-backend

# Install dependencies
RUN apt update 
RUN apt install openjdk-11-jdk -y

# Use sed to modify the database configuration in application.properties
RUN sed -i 's/spring.datasource.url=jdbc:mysql:\/\/localhost:3306\/springbackend?useSSL=false/spring.datasource.url=jdbc:mysql:\/\/database-1.cru2a806a2xh.us-east-1.rds.amazonaws.com:3306\/springbackend?useSSL=false/' /opt/spring-backend/src/main/resources/application.properties && \
    sed -i 's/spring.datasource.username=springbackend/spring.datasource.username=admin/' /opt/spring-backend/src/main/resources/application.properties && \
    sed -i 's/spring.datasource.password=springbackend/spring.datasource.password=akash123/' /opt/spring-backend/src/main/resources/application.properties

RUN echo "" >> /opt/spring-backend/src/main/resources/application.properties
RUN echo 'server.port=8085' >> /opt/spring-backend/src/main/resources/application.properties

# Expose the port the application runs on
EXPOSE 8085

# Command to run the application
CMD ["java", "-jar", "target/spring-backend-v1.jar"]