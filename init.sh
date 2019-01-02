#!/bin/bash
sed -i "s|input_your_key|$LANPROXY_KEY|g" /lanproxy-client/distribution/proxy-client-0.1/conf/config.properties
sed -i "s|input_your_host|$LANPROXY_HOST|g" /lanproxy-client/distribution/proxy-client-0.1/conf/config.properties
tail -f /lanproxy-client/distribution/proxy-client-0.1/conf/config.properties

# starting 
sh /lanproxy-client/start.sh

touch /index.txt
echo "start lanproxy-client ..."  > /index.txt
tail -f /index.txt

