
# Final stage
FROM openjdk:17
VOLUME /tmp
EXPOSE 8070
ARG JAR_FILE=target/docker-spring-boot.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT [ "java","-jar","/app.jar"]
