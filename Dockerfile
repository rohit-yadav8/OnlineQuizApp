# Use official Tomcat server image with Java 11
FROM tomcat:9.0-jdk11

# Remove all default webapps inside Tomcat (optional but cleaner)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat's webapps directory
COPY QuizApplication1.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 so Render knows where to serve your app
EXPOSE 8080

# Start the Tomcat server
CMD ["catalina.sh", "run"]
