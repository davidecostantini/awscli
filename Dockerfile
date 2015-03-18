FROM centos:7

MAINTAINER davide.costantini@infomentum.co.uk

ENV container docker
RUN yum -y swap -- remove fakesystemd -- install systemd systemd-libs
RUN yum -y update
RUN yum -y install python epel-release
RUN yum -y install python-pip; yum clean all
RUN pip install awscli

RUN mkdir -p /opt/s3sync

ENTRYPOINT ["aws"]
