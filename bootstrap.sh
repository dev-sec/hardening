#!/bin/bash -

apt-get update -qq
[ -x /usr/bin/git ] || apt-get install -y -q git
[ -x /usr/bin/make ] || apt-get install -y -q make
gem list r10k -i 1>/dev/null || gem install --quiet --no-rdoc --no-ri r10k 1>/dev/null
cd /vagrant && r10k -v info puppetfile install

