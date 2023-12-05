
# Final stage
FROM openjdk:17
ARG JAR_FILE=target/*.jar
COPY ./target/docker-spring-boot.jar docker-spring-boot.jar
EXPOSE 8070
ENTRYPOINT [ "java","-jar","docker-spring-boot.jar" ]
