# Use an appropriate base image for your application
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/*.jar /app/app.jar

# Expose the port your application will run on
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "app.jar"]
