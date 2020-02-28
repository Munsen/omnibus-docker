FROM ubuntu:18.04
MAINTAINER Cha Jae Mun "amunsen@gmail.com"

ARG os_version
ARG chef_version
ARG chef_special
ARG arch

RUN apt-get update -q && apt-get install -y curl
RUN apt-get install -y curl
RUN curl -s -O "https://packages.chef.io/files/stable/chef/${chef_version}/ubuntu/${os_version}/chef_${chef_version}-${chef_special}_${arch}.deb" 
RUN echo dpkg -i "chef_${chef_version}-${chef_special}_${arch}.deb"
RUN dpkg -i "chef_${chef_version}-${chef_special}_${arch}.deb"
RUN rm -f "chef_${chef_version}-${chef_special}_${arch}.deb"
RUN apt-get purge -y curl