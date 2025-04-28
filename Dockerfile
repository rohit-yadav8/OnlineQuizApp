# Use official Tomcat base image
FROM tomcat:9.0-jdk11

# Clean default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR and rename it as ROOT.war
COPY QuizApplication1.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
