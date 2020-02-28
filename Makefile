OS_VERSION ?= 7
EPEL_VERSION ?= $(OS_VERSION)
CHEF_VERSION ?= 12.22.5
CHEF_SPECIAL ?= 1
ARCH ?= x86_64

.PHONY: centos ubuntu

centos: centos/Dockerfile
	docker build $(shell dirname $^) -t 'omnibus-centos:$(OS_VERSION)-$(CHEF_VERSION)' \
	  --build-arg os_version=$(OS_VERSION) \
		--build-arg epel_version=$(EPEL_VERSION) \
		--build-arg chef_version=$(CHEF_VERSION) \
		--build-arg chef_special=${CHEF_SPECIAL} \
		--build-arg arch=$(ARCH)

ubuntu: ubuntu/Dockerfile
	docker build $(shell dirname $^) -t 'omnibus-ubuntu:$(OS_VERSION)-$(CHEF_VERSION)' \
	  --build-arg os_version=$(OS_VERSION) \
		--build-arg epel_version=$(EPEL_VERSION) \
		--build-arg chef_version=$(CHEF_VERSION) \
		--build-arg chef_special=${CHEF_SPECIAL} \
		--build-arg arch=$(ARCH)
