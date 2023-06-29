#!/bin/bash

echo 'input domain:'
read domain
rm -f ./tpdata/trojan-panel-ui/nginx/default.conf
cp ./tpdata/trojan-panel-ui/nginx/.default.conf ./tpdata/trojan-panel-ui/nginx/default.conf
sed -i "s/\${domain}/${domain}/g" ./tpdata/trojan-panel-ui/nginx/default.conf

echo '替换域名完成'

echo 'input white_ip:'
read white_ip
sed -i "s/\${white_ip}/$white_ip}/g" ./tpdata/trojan-panel-ui/nginx/default.conf

