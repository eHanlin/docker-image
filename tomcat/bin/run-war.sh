#!/bin/sh
if [ -z "$1" ]; then
    echo "please give me a war download url"
else
    wget -qO $CATALINA_HOME/webapps/ROOT.war $1
    catalina.sh run
fi

