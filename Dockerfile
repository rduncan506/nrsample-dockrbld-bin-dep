FROM registry-nrpartners.rhcloud.com/newrelic/rhel71:nr-java-tomcat

ENV CATALINA_HOME="/opt/tomcat"
ENV JRE_HOME="/usr/java/latest"
ENV NEWRELIC_KEY="'d8550e35c5d7cd44f004635fb48c0ca7ebe63904'"
ENV NEWRELIC_APP_NAME="'RD Sample Docker Application'"
# ENV ADDITIONAL_VM_ARGS=

EXPOSE 8080 8888
RUN mkdir /opt/newrelic/logs&&mkdir /opt/tomcat/tmp
RUN chmod -R 777 /opt&&chmod -R 777 /opt/tomcat&&chmod -R 777 /opt/tomcat/tmp&&chmod -R 777 /opt/tomcat/temp&&chmod -R 777 /opt/newrelic&&chmod -R 777 /opt/newrelic/logs

RUN cp /opt/newrelic/newrelic*.jar /opt/tomcat/lib&&cp /opt/newrelic/newrelic*.yml /opt/tomcat/lib

RUN curl --location https://github.com/rduncan506/ose-newrelic/blob/master/deployment/NewRelicExample.war?raw=true -o /opt/tomcat/webapps/NewRelicExample.war

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
