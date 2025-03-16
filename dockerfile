# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/my-webapp-1.0.0.jar app.jar

# Expose the application port (9090)
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]
