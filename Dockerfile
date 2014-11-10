FROM centos:centos7

MAINTAINER Martin Tilma

# Get minimal tools to work
RUN yum install -y wget
RUN yum install -y tar

RUN wget --header "Cookie: oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.rpm
RUN rpm -i jdk-8u25-linux-x64.rpm 
RUN echo "6a8897b5d92e5850ef3458aa89a5e9d7 jdk-8u25-linux-x64.rpm" > MD5SUM
RUN md5sum -c MD5SUM

RUN mkdir -p /var/lib/jenkins && wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war -O /var/lib/jenkins/jenkins.war

EXPOSE 8080

CMD ["/usr/bin/java","-jar","/var/lib/jenkins/jenkins.war"]
