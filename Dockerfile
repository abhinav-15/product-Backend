# Build stage
FROM maven:3.8.4 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean install




# Final stage
FROM openjdk:17
WORKDIR /app
ADD ./docker-spring-boot.jar docker-spring-boot.jar
COPY --from=build /demo/target/demo-0.0.1-SNAPSHOT.jar docker-spring-boot.jar
EXPOSE 8070
ENTRYPOINT [ "java","-jar","docker-spring-boot.jar" ]