FROM gradle:8.14-jdk24-alpine AS builder
WORKDIR /app
COPY . .
RUN gradle --no-daemon build

FROM eclipse-temurin:24.0.1_9-jdk-alpine as final
WORKDIR /app
COPY --from=builder app/build/libs/poc-service-*.jar application.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "application.jar"]
