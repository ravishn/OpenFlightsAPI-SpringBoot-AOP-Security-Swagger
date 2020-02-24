# FROM gradle:4.7.0-jdk8-alpine
# LABEL maintainer="Ravish Nagaraj"
# WORKDIR /src
# COPY build/libs .
# RUN gradle build

FROM openjdk:8-jdk-alpine

WORKDIR /src
COPY /src ./src/

EXPOSE 8080

RUN mkdir /api

COPY /build/libs/openflightsapi-1.0.0.jar /api/openfligthsapi.jar

ENTRYPOINT ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-Djava.security.egd=file:/dev/./urandom","-jar","/api/openfligthsapi.jar"]