FROM maven:3.5.2-jdk-8-alpine AS MAVEN_BUILD
MAINTAINER Abhishek Sawhney
COPY pom.xml /build/
COPY src /build/src/
WORKDIR /build/
RUN mvn package

FROM busybox
ARG JAR_FILE=target/docker-demo-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} docker-demo.jar
ENTRYPOINT ["java","-jar","/docker-demo.jar"]