FROM registry-nrpartners.rhcloud.com/newrelic/rhel71:nr-java-tomcat
EXPOSE 8080 8888
RUN curl https://raw.githubusercontent.com/rduncan506/ose-newrelic/master/deployments/NewRelicExample.war -o /opt/tomcat/webapps/ROOT.war
