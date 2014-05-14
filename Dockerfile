FROM      	ubuntu:trusty
MAINTAINER 	Dominik Richter "dominik.richter@gmail.com"

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
RUN apt-get update

# install puppet
RUN apt-get -y install puppet

# add this folder
ADD . /hardening

# run puppet
RUN puppet apply -v -d --detailed-exitcodes --modulepath=/hardening/modules /hardening/manifests/default.pp

# simple command to get into the box
CMD /bin/bash

