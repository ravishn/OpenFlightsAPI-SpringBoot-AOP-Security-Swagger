FROM openjdk:8-jdk-alpine
LABEL maintainer="Ravish Nagaraj"
WORKDIR /build
EXPOSE 8080
ADD ${JAR_FILE} openflightsapi.jar
ENTRYPOINT [ "./gradlew build"," && ","java","-jar","build/libs/openflightsapi.jar" ]