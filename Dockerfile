# Use an official Maven runtime as a parent image
FROM maven:3.8.4 AS build

WORKDIR /app
COPY pom.xml .
COPY src ./src

# Build the application
RUN mvn package -DskipTests

# Final stage
FROM openjdk:17
WORKDIR /app
COPY --from=build /app/target/app.jar app.jar
EXPOSE 8070
ENTRYPOINT ["java", "-jar", "app.jar"]

