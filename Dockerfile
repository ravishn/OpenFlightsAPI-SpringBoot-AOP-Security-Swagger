FROM openjdk:8-jdk-alpine
LABEL maintainer="ravish.nagaraj@gmail.com"
VOLUME /build
EXPOSE 8080
ADD ${JAR_FILE} openflightsapi.jar
ENTRYPOINT [ "./gradlew build"," && ","java","-jar","build/libs/openflightsapi-docker-1.0.0.jar" ]