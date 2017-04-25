FROM ubuntu:14.04

RUN sudo apt-get update

#Install java

RUN sudo apt-get install -y software-properties-common
RUN sudo apt-get -y install python-software-properties
RUN sudo add-apt-repository -y ppa:webupd8team/java
RUN sudo apt-get -y update
RUN sudo apt-get -y install oracle-java8-installer
RUN sudo apt install oracle-java8-set-default

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Install Tomcat

RUN apt-get -y install tomcat7

RUN service tomcat7 start

# Change default port

#ADD server.xml /tmp/server.xml
#RUN cp -a /tmp/server.xml /etc/tomcat7/server.xml
#RUN service tomcat7 restart
#copy app.war
