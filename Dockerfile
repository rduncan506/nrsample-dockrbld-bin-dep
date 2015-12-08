FROM registry-nrpartners.rhcloud.com/newrelic/rhel71:nr-java-tomcat
ENV CATALINA_HOME="/opt/tomcat"
ENV NEWRELIC_KEY="'d8550e35c5d7cd44f004635fb48c0ca7ebe63904'"
ENV NEWRELIC_APP_NAME="Ronnie RH Application"
ENV ADDITIONAL_VM_ARGS=
EXPOSE 8080 8888
RUN mkdir /opt/newrelic/logs
RUN mkdir /opt/tomcat/tmp
RUN chmod -R 777 /opt
RUN chmod -R 777 /opt/tomcat
RUN chmod -R 777 /opt/tomcat/tmp
RUN chmod -R 777 /opt/tomcat/temp
RUN chmod -R 777 /opt/newrelic
RUN chmod -R 777 /opt/newrelic/logs
RUN curl https://raw.githubusercontent.com/rduncan506/ose-newrelic/master/deployments/NewRelicExample.war -o /opt/tomcat/webapps/NewRelicExample.war
# RUN /opt/tomcat/bin/catalina.sh stop -force
# RUN /opt/tomcat/bin/catalina.sh start
