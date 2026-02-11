#!/bin/sh
set -e

PORT="${PORT:-8080}"

# Build the real server.xml from template using Render's PORT
sed "s/__PORT__/${PORT}/g" /usr/local/tomcat/conf/server.xml.template > /usr/local/tomcat/conf/server.xml

echo "Tomcat will listen on PORT=${PORT}"
exec catalina.sh run