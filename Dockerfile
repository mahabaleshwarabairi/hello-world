FROM tomcat
ADD /var/lib/jenkins/workspace/test-pipe/webapp/target/webapp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
