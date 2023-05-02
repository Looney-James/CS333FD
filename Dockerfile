# Start with a base image that has Java 11 installed
FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY target/cs333-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-cp", "app.jar", "cs333.Bartender"]


