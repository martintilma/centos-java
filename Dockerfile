FROM centos:centos7

MAINTAINER Martin Tilma

RUN yum install -y wget
RUN yum install -y git
RUN yum install -y curl

# install Java
RUN wget --header "Cookie: oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.rpm
RUN rpm -i jdk-8u25-linux-x64.rpm 
RUN echo "6a8897b5d92e5850ef3458aa89a5e9d7 jdk-8u25-linux-x64.rpm" > MD5SUM
RUN md5sum -c MD5SUM

EXPOSE 8080
CMD ["/usr/bin/java","-version"]
