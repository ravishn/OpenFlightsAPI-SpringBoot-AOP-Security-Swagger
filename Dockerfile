FROM openjdk:8-jdk-alpine
EXPOSE 8080
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ADD /target/openflightsapi.jar openflightsapi.jar
ENTRYPOINT ["java","-jar","/openflightsapi.jar"]
