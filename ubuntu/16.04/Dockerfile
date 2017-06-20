FROM ubuntu:16.04
MAINTAINER Cha Jae Mun "amunsen@gmail.com"

RUN apt-get update -q && apt-get install -y curl
RUN apt-get install -y curl
RUN curl -O 'https://packages.chef.io/files/stable/chef/12.20.3/ubuntu/16.04/chef_12.20.3-1_amd64.deb' -s
RUN dpkg -i 'chef_12.20.3-1_amd64.deb'
RUN rm -f 'chef_12.20.3-1_amd64.deb'
RUN apt-get purge -y curl
