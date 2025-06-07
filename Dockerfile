FROM eclipse-temurin:24.0.1_9-jdk-alpine
WORKDIR /app
COPY build/libs/poc-service-*.jar application.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "application.jar"]
