from maven:3.6-jdk-11 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package

FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/target/s3rekognition-0.0.1-SNAPSHOT.jar /app/app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]