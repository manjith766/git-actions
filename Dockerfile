# Use lightweight Java 17 runtime
FROM eclipse-temurin:17-jre

# Create app directory inside container
WORKDIR /app

# Copy the uploaded JAR into the image
COPY dcbb2546-a87c-4656-8a06-17378588e8c9.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
