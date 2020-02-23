# FROM gradle:4.7.0-jdk8-alpine
# LABEL maintainer="Ravish Nagaraj"
# WORKDIR /src
# COPY build/libs .
# RUN gradle build

FROM openjdk:8-jdk-alpine

WORKDIR /bin
EXPOSE 8080

RUN mkdir /api

COPY /build/libs/openflightsapi-docker-1.0.1.jar .

ENTRYPOINT ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-Djava.security.egd=file:/dev/./urandom","-jar","/api/openfligthsapi.jar"]