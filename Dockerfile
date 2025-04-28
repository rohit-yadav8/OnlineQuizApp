# Use official Tomcat 9 image with JDK 17
FROM tomcat:9.0.104-jdk17

# Remove default ROOT app (optional but clean)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file and rename it to ROOT.war
COPY QuizApplication1.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
