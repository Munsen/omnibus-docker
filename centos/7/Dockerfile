FROM centos:7
MAINTAINER Cha Jae Mun "amunsen@gmail.com"

RUN curl -O 'https://packages.chef.io/files/stable/chef/12.20.3/el/7/chef-12.20.3-1.el7.x86_64.rpm' -s
RUN rpm -ihv chef-12.20.3-1.el7.x86_64.rpm
RUN rm -f chef-12.20.3-1.el7.x86_64.rpm
