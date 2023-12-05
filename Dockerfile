
# Final stage
FROM openjdk:17
ARG JAR_FILE=target/*.jar
COPY ./target/demo-0.0.1-SNAPSHOT.jar docker-spring-boot.jar
EXPOSE 8070
ENTRYPOINT [ "java","-jar","docker-spring-boot.jar" ]
