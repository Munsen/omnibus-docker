FROM ubuntu:16.04
MAINTAINER Cha Jae Mun "amunsen@gmail.com"

RUN apt-get update -q && apt-get install -y curl
RUN apt-get install -y curl
RUN curl -L "https://www.opscode.com/chef/install.sh" | bash
RUN apt-get purge -y curl
