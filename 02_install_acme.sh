#!/bin/bash

curl https://get.acme.sh | sh
alias acme.sh=~/.acme.sh/acme.sh
acme.sh  --set-default-ca --server letsencrypt

echo 'input namesilo key:'
read key
export Namesilo_Key=$key

echo 'input domain'
read domain

acme.sh --issue --dns dns_namesilo --dnssleep 1800  -d ${domain} --debug 2

mkdir -p /opt/ssl/acme
acme.sh --install-cert -d ${domain}  \
--key-file       /opt/ssl/acme/key.pem  \
--fullchain-file /opt/ssl/acme/cert.pem
