#! /bin/bash
> result.data
echo 'host: '$(ip route get 1 | awk '{print $NF;exit}') >> result.data
echo 'external ip: '$(wget -qO- http://ipecho.net/plain | xargs echo) >> result.data
echo 'Open Ports: ' $(netstat -vaun) >> result.data
echo 'Devices Available: ' $(ip link show) >> result.data
