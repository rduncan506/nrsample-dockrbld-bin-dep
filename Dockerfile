FROM registry-nrpartners.rhcloud.com/newrelic/rhel71:nr-java-tomcat
ENV NEWRELIC_KEY="'d8550e35c5d7cd44f004635fb48c0ca7ebe63904'"
ENV NEWRELIC_APP_NAME="Ronnie RH Application"
ENV ADDITIONAL_VM_ARGS=
EXPOSE 8080 8888
RUN curl https://raw.githubusercontent.com/rduncan506/ose-newrelic/master/deployments/NewRelicExample.war -o /opt/tomcat/webapps/NewRelicExample.war
CMD chmod 777 /opt/newrelic/logs
CMD /opt/tomcat/bin/catalina.sh stop -force
CMD /opt/tomcat/bin/catalina.sh start
