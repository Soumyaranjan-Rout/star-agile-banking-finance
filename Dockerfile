# Use the latest OpenJDK runtime as a parent image
FROM openjdk:17

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/*.jar /app/app.jar

# Expose the port the application runs on
EXPOSE 8080

# Define the command to run the JAR file
CMD ["java", "-jar", "your-app.jar"]
