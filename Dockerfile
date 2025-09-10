# Use official lightweight Java runtime as base (example)
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy application files
COPY app/ /app/

# Example run command (for a Java webapp JAR)
# Replace this with your framework’s run command
CMD ["java", "-jar", "app.jar"]

# Expose port
EXPOSE 8080
