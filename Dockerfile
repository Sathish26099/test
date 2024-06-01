# Use an official Tomcat runtime as a parent image
FROM tomcat:9.0

# Set the working directory to the Tomcat webapps directory
WORKDIR /usr/local/tomcat/webapps

# Copy the web application (WAR file) into the Tomcat webapps directory
COPY sample.war .

# Expose port 8080 to the outside world
EXPOSE 8080

# Run Tomcat server
CMD ["catalina.sh", "run"]

