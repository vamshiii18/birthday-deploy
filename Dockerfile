# Use official Tomcat image
FROM tomcat:9.0

# Clean default apps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Add your WAR file
COPY Birthday.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080

# Start Tomcat (CMD is inherited from base image)
