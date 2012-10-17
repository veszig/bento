#!/bin/bash -eux

echo 'deb http://apt.opscode.com/ lucid-0.10 main' > \
  /etc/apt/sources.list.d/opscode.list && wget -qO - \
  http://apt.opscode.com/packages@opscode.com.gpg.key | apt-key add - && \
  echo 'chef chef/chef_server_url string http://127.0.0.1:4000' | \
  debconf-set-selections && \
  apt-get update && apt-get -y install chef

