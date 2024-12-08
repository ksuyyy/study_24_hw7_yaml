FROM maven:3.9.5-eclipse-temurin-11-alpine
RUN apt update
RUN apt install git -y
WORKDIR /app
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /app/boxfuse-sample-java-war-hello 