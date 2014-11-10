FROM centos:centos7

MAINTAINER Martin Tilma

# Get minimal tools to work
RUN yum install -y wget
RUN yum install -y tar

CMD ["/bin/ls"]
