# Use Java base image
FROM eclipse-temurin:21

# Set working directory
WORKDIR /app

# Copy jar file from target folder
COPY target/*.jar app.jar

EXPOSE 7979

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]