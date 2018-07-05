FROM tomcat:7.0.59-jre8

MAINTAINER rodick.h <rodick@ehanlin.com.tw>

ENV PATH=$PATH:$CATALINA_HOME/bin

COPY tomcat/ ${CATALINA_HOME}/
RUN apt-get update && apt-get install -y --no-install-recommends libfontconfig1 wget vim && \
    mkdir -p /opt/cprof && wget -q -O- https://storage.googleapis.com/cloud-profiler/java/latest/profiler_java_agent.tar.gz | tar xzv -C /opt/cprof && \
    ln -sf /usr/share/zoneinfo/Asia/Taipei /etc/localtime && echo "Asia/Taipei" > /etc/timezone && \
    sed -i '/Connector port="8080"/ s/$/ URIEncoding="UTF-8"/' ${CATALINA_HOME}/conf/server.xml && \
    sed -i -r '/session-timeout/ s/[0-9]+/2880/g' ${CATALINA_HOME}/conf/web.xml && \
    rm -rf ${CATALINA_HOME}/webapps/* /var/lib/apt/lists/* 

ARG START_SCRIPT_ARG="run-war.sh"
ENV START_SCRIPT_ENV=$START_SCRIPT_ARG

ENTRYPOINT ["run.sh"]
