FROM maven:3.5.2-jdk-8-alpine AS MAVEN_BUILD
MAINTAINER Abhishek Sawhney
COPY pom.xml /build/
COPY src /build/src/
WORKDIR /build/
RUN mvn package

FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} docker-demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/docker-demo-0.0.1-SNAPSHOT.jar"]