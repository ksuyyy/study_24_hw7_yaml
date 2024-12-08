FROM maven:3.9.5-eclipse-temurin-11-alpine
RUN apt update
RUN apt install git -y
WORKDIR /app
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/boxfuse-sample-java-war-hello
CMD ["mvn", mvn package, cp target/hello-1.0.war /usr/local/tomcat/webapps/] 