all: ubuntu-16.04 centos-6 centos-7

ubuntu-16.04: ./ubuntu/16.04
	docker build $^ -t 'omnibus-ubuntu:16.04'

centos-6: ./centos/6
	docker build $^ -t 'omnibus-centos:6'

centos-7: ./centos/7
	docker build $^ -t 'omnibus-centos:7'
