#!/usr/bin/env bash 

## Update machine
DEBIAN_FRONTEND=noninteractive apt -qqy update
DEBIAN_FRONTEND=noninteractive apt-get -qqy -o Dpkg::Options::='--force-confdef' -o Dpkg::Options::='--force-confold' upgrade

## Install Code Server
export RELEASE="${release}"
curl -fOL "https://github.com/cdr/code-server/releases/download/v${RELEASE}/code-server_${RELEASE}_amd64.deb"
sudo dpkg -i "code-server_${RELEASE}_amd64.deb"
systemctl --user enable --now code-server

## Install Caddy
echo "deb [trusted=yes] https://apt.fury.io/caddy/ /" | tee -a /etc/apt/sources.list.d/caddy-fury.list
DEBIAN_FRONTEND=noninteractive apt -qqy update
DEBIAN_FRONTEND=noninteractive apt -qqy -o Dpkg::Options::='--force-confdef' -o Dpkg::Options::='--force-confold' install caddy

