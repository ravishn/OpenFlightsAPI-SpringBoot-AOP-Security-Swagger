FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/openflightsapi-docker-1.0.0.jar
ADD ${JAR_FILE} openflightsapi.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/openflightsapi.jar"]