## Base Centos image
FROM centos:7
MAINTAINER "Bart Bania" <contact@bartbania.com>

RUN yum update -q -y && \
    yum install -q -y epel-release && \
    yum install -q -y wget which net-tools openssl 
RUN rpm -Uh http://www.city-fan.org/ftp/contrib/yum-repo/rhel7/x86_64/city-fan.org-release-1-13.rhel7.noarch.rpm && \
    yum install -q -y curl libcurl
RUN sed -i 's/enabled=1/enabled=0/g' /etc/yum.repos.d/city-fan.org.repo
RUN yum -q clean all

