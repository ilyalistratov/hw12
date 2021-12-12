FROM ubuntu:latest
RUN apt update -y
RUN apt install maven -y
RUN apt install git -y
RUN apt install default-jdk -y
RUN apt install tomcat9 -y
RUN git clone https://github.com/ilyalistratov/hw12.git
RUN mvn package -f ./pom.xml
RUN mkdir /ddd
RUN cp ~/*.war /ddd