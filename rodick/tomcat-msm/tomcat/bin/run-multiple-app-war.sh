#!/bin/sh
if [ $(($# % 2)) -eq 1 ]; then
    echo "ERROR : must be paired parameters."
    exit 0
else
    for (( i=1; i<=$#; i+=2 ))
    do
        j=$(($i+1))
        wget -qO $CATALINA_HOME/webapps/${i}.war ${j}
    done
    catalina.sh run
fi