#!/bin/bash
if [ $(($# % 2)) -eq 1 ]; then
    echo "ERROR : must be paired parameters."
    exit 0
else
    for i in $(seq 1 $(($# / 2)))
    do
        pi=$(($i*2))
        ni=$(($pi-1))
        wget -qO $CATALINA_HOME/webapps/${@:ni:1}.war ${@:pi:1}
    done
    catalina.sh run
fi


