#!/bin/bash

alias acme.sh=~/.acme.sh/acme.sh
acme.sh  --set-default-ca  letsencrypt

echo 'input namesilo key:'
read key
export Namesilo_Key=$key

acme.sh --issue --dns dns_namesilo --dnssleep 1800  -d *.proxyhelper.top --debug 2
acme.sh --install-cert -d proxyhelper.top -d *.proxyhelper.top \
--key-file       /opt/ssl/acme/key.pem  \
--fullchain-file /opt/ssl/acme/cert.pem
