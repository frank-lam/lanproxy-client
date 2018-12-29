#!/bin/bash

count=`ps -ef | grep "lanproxy.client.ProxyClientContainer" | grep -v "grep" | wc -l`
#echo $count
basepath=$(cd `dirname $0`; pwd)
if [ $count -gt 0 ]; then
 echo "status: running"
else
 echo "status: not running"
fi
# sh 12
#sh /usr/local/lanproxy/distribution/proxy-client-0.1/bin/stop.sh
# sh /usr/local/lanproxy/distribution/proxy-client-0.1/bin/startup.sh
