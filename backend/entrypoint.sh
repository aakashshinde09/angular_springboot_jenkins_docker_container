#!/bin/bash

# Modify the application.properties file
sed -i 's/spring.datasource.url=jdbc:mysql:\/\/localhost:3306\/springbackend?useSSL=false/spring.datasource.url=jdbc:mysql:\/\/database-1.cru2a806a2xh.us-east-1.rds.amazonaws.com:3306\/springbackend?useSSL=false/' /usr/local/tomcat/webapps/spring-backend/WEB-INF/classes/application.properties
sed -i 's/spring.datasource.username=springbackend/spring.datasource.username=admin/' /usr/local/tomcat/webapps/spring-backend/WEB-INF/classes/application.properties
sed -i 's/spring.datasource.password=springbackend/spring.datasource.password=akash123/' /usr/local/tomcat/webapps/spring-backend/WEB-INF/classes/application.properties

echo "" >> /usr/local/tomcat/webapps/spring-backend/WEB-INF/classes/application.properties
echo 'server.port=8085' >> /usr/local/tomcat/webapps/spring-backend/WEB-INF/classes/application.properties

