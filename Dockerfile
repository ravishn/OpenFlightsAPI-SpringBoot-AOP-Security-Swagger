#Use Alpine JDK 8 docker image to run the application
FROM openjdk:8-jdk-alpine

#Use root as working directory
WORKDIR /

#Copy /src for running build and initial data set-up queries for the API
COPY /src ./src

#Use this port to run the application
EXPOSE 8085

#Create a new directory to copy built JAR file
RUN mkdir /api

#Copy the built JAR file of the application into api folder
COPY /build/libs/openflightsapi-1.0.0.jar /api/openfligthsapi.jar

#Entrypoint command to run when Docker container is started
ENTRYPOINT ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-Djava.security.egd=file:/dev/./urandom","-jar","/api/openfligthsapi.jar"]