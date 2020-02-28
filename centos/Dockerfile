FROM centos:7
MAINTAINER Cha Jae Mun "amunsen@gmail.com"

ARG os_version
ARG chef_version
ARG chef_special
ARG epel_version
ARG arch

RUN yum install -y sudo openssh-server openssh-clients which curl
RUN curl -s -O "https://packages.chef.io/files/stable/chef/${chef_version}/el/${epel_version}/chef-${chef_version}-${chef_special}.el${epel_version}.${arch}.rpm" 
RUN rpm -ihv "chef-${chef_version}-${chef_special}.el${os_version}.${arch}.rpm"
RUN rm -f "chef-${chef_version}-${chef_special}.el${os_version}.${arch}.rpm"
