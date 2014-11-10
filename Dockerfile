FROM centos:centos7

MAINTAINER Martin Tilma

# Get minimal tools to work
RUN yum install -y wget
RUN yum install -y tar

RUN wget --header "Cookie: oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.rpm
RUN rpm -i jdk-8u25-linux-x64.rpm 

CMD ["/bin/ls"]
CMD ["java -version"]
