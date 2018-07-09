#!/bin/sh

echo "run-app-war.sh"
echo $*

if [ -z "$1" ]; then
    echo "please give me a war download url"
else
    wget -qO $CATALINA_HOME/webapps/${APP_PATH}.war $1
    catalina.sh run
fi