FROM ubuntu:latest
WORKDIR /tmp/docker
RUN apt-get -y update && apt-get -y upgrade && apt-get -y install git
RUN apt-get -y install openjdk-8-jdk
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
RUN apt-get -y update && apt-get -y install maven
RUN git clone https://github.com/Lavanya-01/college-branch-modelviewcontroller.git
RUN cd college-branch-modelviewcontroller/code  && mvn clean install -Dmaven.test.skip=true
RUN cd
RUN mkdir /usr/local/tomcat
ADD http://www-eu.apache.org/dist/tomcat/tomcat-9/v9.0.40/bin/apache-tomcat-9.0.40.tar.gz  /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-9.0.40/* /usr/local/tomcat/
RUN cd 
RUN rm -rf /usr/local/tomcat/webapps/*
EXPOSE 8080
RUN cp /home/ubuntu/college-branch-modelviewcontroller/code/target/*.war   /usr/local/tomcat/webapps/ROOT.war
CMD /usr/local/tomcat/bin/catalina.sh run
