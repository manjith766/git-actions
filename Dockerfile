# Use a Java 17 runtime
FROM eclipse-temurin:17-jre

# Make a folder in the container
WORKDIR /app

# Copy the jar file from your project (inside target/)
COPY target/*.jar app.jar

# Tell Docker to expose port 8080
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
