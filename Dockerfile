FROM maven:3-openjdk-17 AS build
COPY . .
RUN commandan packege -DskipTests
FROM openjdk:17-ea-11-jdk-slim-buster
COPY --from=build /target/demo-0.0.1-SNAPSHOT.jar demo.jar
EXPOSE 8070
ENTRYPOINT [ "java","-jar","demo.jar"]
