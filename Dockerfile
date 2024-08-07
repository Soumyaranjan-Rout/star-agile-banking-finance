# Use the official Tomcat image
FROM tomcat:9-jdk11

# Remove default web applications
RUN rm -rf /usr/local/tomcat/webapps/examples /usr/local/tomcat/webapps/docs

# Copy the JAR file into Tomcat webapps directory
COPY target/your-app.jar /usr/local/tomcat/webapps/your-app.jar

# Expose Tomcat port
EXPOSE 8080
