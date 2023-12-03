FROM centos
MAINTAINER maha@gmail.com
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
COPY /root/tomcat/ /opt/tomcat/
COPY /var/lib/jenkins/workspace/test-pipe/webapp/target/webapp.war  /opt/tomcat/webapps/
EXPOSE 8090
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
