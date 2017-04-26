FROM ubuntu:14.04

RUN sudo apt-get update

#Install java

RUN sudo apt-get install -y software-properties-common
RUN sudo apt-get -y install python-software-properties
RUN sudo add-apt-repository -y ppa:webupd8team/java
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 seen true" | debconf-set-selections
RUN sudo apt-get -y update
RUN sudo apt-get -y install oracle-java8-installer
RUN sudo apt install oracle-java8-set-default

# Declare JAVA_HOME variable
#RUN export JAVA_HOME=/usr/lib/jvm/java-8-oracle
#RUN export PATH=$PATH:$JAVA_HOME/bin

COPY ./dependancies/tomcat7 /etc/default/tomcat7

# Install Tomcat

RUN apt-get -y install tomcat7

RUN service tomcat7 start

# Change default port

#ADD server.xml /tmp/server.xml
#RUN cp -a /tmp/server.xml /etc/tomcat7/server.xml
#RUN service tomcat7 restart
#copy app.war
