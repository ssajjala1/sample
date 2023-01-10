FROM openjdk:8-jdk-alpine

EXPOSE 80

RUN mkdir -p /var/workspace

WORKDIR /var/workspace

# The application's jar file
#ARG JAR_FILE=spring-boot-websocket-0.0.1-snapshot.jar
ARG JAR_FILE=./target/simplewebserver-0.0.1-SNAPSHOT.jar
# Add the application's jar to the container
ADD ./target/simplewebserver-0.0.1-SNAPSHOT.jar websocket-demo.jar

ENTRYPOINT ["java", "-jar", "-Dspring.config.location=./", "websocket-demo.jar"]

