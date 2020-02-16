FROM openjdk:8-jdk-alpine
VOLUME /build
EXPOSE 8080
CMD [ "./gradlew build"," && ","java","-jar","build/libs/openflightsapi-docker-1.0.0.jar" ]
ARG JAR_FILE=target/openflightsapi-docker-1.0.0.jar
ADD ${JAR_FILE} openflightsapi.jar
ENTRYPOINT ["java","-jar","target/openflightsapi-docker-1.0.0.jar"]