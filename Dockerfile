# build maven image using docker
FROM maven:3-adoptopenjdk-8 
WORKDIR /app
COPY . .
RUN mvn clean package

# deploy war file to tomcat from mvn_build
FROM tomcat:8.0
COPY  /app/target/*.war /usr/local/tomcat/webapps/
