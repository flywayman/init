#!/bin/bash

echo 'input domain:'
read domain
rm -f ./tpdata/caddy/config.json
cp ./tpdata/caddy/.config.json ./tpdata/caddy/config.json
sed -i "s/\${domain}/${domain}/g" ./tpdata/caddy/config.json
