#!/bin/bash
cd /etc/nginx
sed -i.original "s/WEB_URL/$WEB_PORT_80_TCP_ADDR/g" nginx.conf
more /etc/nginx/nginx.conf

echo "Starting nginx server"
service nginx start
