#!/usr/bin/env bash 

export RELEASE="${release}"

curl -fOL "https://github.com/cdr/code-server/releases/download/v${RELEASE}/code-server_${RELEASE}_amd64.deb"
sudo dpkg -i "code-server_${RELEASE}_amd64.deb"
systemctl --user enable --now code-server