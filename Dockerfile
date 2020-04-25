FROM openjdk:15-slim-buster

COPY target/*.jar application.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=st9","-jar","/application.jar"]
