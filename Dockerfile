FROM openjdk:8-jdk-alpine
VOLUME /build
EXPOSE 8080
ADD ${JAR_FILE} openflightsapi.jar
ENTRYPOINT [ "./gradlew build"," && ","java","-jar","build/libs/openflightsapi-docker-1.0.0.jar" ]