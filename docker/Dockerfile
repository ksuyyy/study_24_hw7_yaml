FROM maven:latest
RUN apt update
RUN apt install git -y
WORKDIR /app
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /app/boxfuse-sample-java-war-hello
RUN mvn package
RUN cp target/hello-1.0.war /usr/local/tomcat/webapps