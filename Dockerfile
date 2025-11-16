# Use an official OpenJDK runtime as a parent image
FROM eclipse-temurin:17-jdk-alpine

# Set a working directory inside the container
WORKDIR /app

# Copy the built JAR from target folder to the container
COPY target/MavenJava-0.0.1-SNAPSHOT.jar app.jar
# Expose the port your app listens on (optional)
EXPOSE 8080

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
