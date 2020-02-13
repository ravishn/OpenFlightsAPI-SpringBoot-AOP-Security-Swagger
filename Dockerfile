FROM gradle:5.6.4-jdk8-alpine AS build
CMD ["gradlew" "bootRun"]
