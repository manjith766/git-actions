# Use a lightweight Java 17 runtime
FROM eclipse-temurin:17-jre

# Set working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/*.jar app.jar

# Default command to run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]

# Expose the port that your app runs on
EXPOSE 8080
