FROM gradle:4.7.0-jdk8-alpine AS build
ENTRYPOINT ["./gradlew" "bootRun"]