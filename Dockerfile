FROM centos
MAINTAINER maha@gmail.com
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN curl -O https://downloads.apache.org/tomcat/tomcat-9/v9.0.56/bin/apache-tomcat-9.0.56.tar.gz
RUN tar -xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.56/* /opt/tomcat/
WORKDIR /opt/tomcat/webapps
COPY //var/lib/jenkins/workspace/test-pipe/webapp/target/webapp.war  /opt/tomcat/webapps/
EXPOSE 8090
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
