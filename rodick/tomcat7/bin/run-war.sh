#!/bin/sh
if [ -z "$1" ]; then
    echo "please give me a war download url"
else
    WAR=${1/https/http}
    if [ -z "${SERVICE_NAME}" ]; then
        wget -P $CATALINA_HOME/webapps $WAR
    else 
        wget -O $CATALINA_HOME/webapps/$SERVICE_NAME.war $WAR
    fi

    catalina.sh run
fi

