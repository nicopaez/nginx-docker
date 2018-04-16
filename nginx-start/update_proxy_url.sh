#!bin/bash
sed -i "s/BACKEND_PROTOCOL/$BACKEND_PROTOCOL/g" /opt/app-root/etc/nginx.default.d/reverse_proxy.conf
sed -i "s/BACKEND_HOSTNAME/$BACKEND_HOSTNAME/g" /opt/app-root/etc/nginx.default.d/reverse_proxy.conf