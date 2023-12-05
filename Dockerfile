FROM openjdk:17
ADD ./docker-spring-boot.jar docker-spring-boot.jar
COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar docker-spring-boot.jar
EXPOSE 8070
ENTRYPOINT [ "java","-jar","docker-spring-boot.jar" ]