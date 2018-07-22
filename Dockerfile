FROM ubuntu:16.04

RUN apt-get update; \ 
    apt-get upgrade -y ; \
    apt-get install -y  \
	apt-utils -y \
	python3 \
	python3-dev \
	python3-setuptools \
	build-essential \
    	libffi-dev \
      	libxml2-dev \
     	libxslt-dev \
	libxml2-dev \
	libxslt1-dev \
	libffi-dev \
	graphviz \
	libpq-dev \
	libssl-dev \
	wget \
	zlib1g-dev 
	

