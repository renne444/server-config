#!/bin/bash

cp sources.list /etc/apt
apt-get update
apt-get -f dist-upgrade
apt-get install -y --allow-downgrades perl-base=5.26.1-6ubuntu0.5
apt-get install -y perl liberror-perl
apt-get install -y vim-tiny git net-tools wget

wget https://golang.google.cn/dl/go1.14.linux-amd64.tar.gz go1.14.tar.gz

export GOPROXY=https://goproxy.cn