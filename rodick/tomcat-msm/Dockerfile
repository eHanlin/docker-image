FROM jeanblanchard/tomcat:8.5.9

MAINTAINER rodick.h <rodick@ehanlin.com.tw>

ENV PATH=$PATH:$CATALINA_HOME/bin

COPY bin/* ${CATALINA_HOME}/bin/
COPY UnlimitedJCEPolicyJDK8/* /opt/jdk/jre/lib/security/
COPY tomcat-lib/*.jar ${CATALINA_HOME}/lib/
RUN sed -i '/Connector port="8080"/ s/$/ URIEncoding="UTF-8"/' ${CATALINA_HOME}/conf/server.xml && \
    sed -i -r '/session-timeout/ s/\d+/2880/g' ${CATALINA_HOME}/conf/web.xml && \
    apk add vim --update && ln -sf /usr/bin/vim /usr/bin/vi && \
    rm -rf ${CATALINA_HOME}/webapps/* /var/cache/apk/*

ENTRYPOINT ["run-war.sh"]

