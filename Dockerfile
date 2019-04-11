FROM tomcat:8-jre8
RUN rm -rf /usr/local/tomcat/webapps/ROOT/*
COPY client/ /usr/local/tomcat/webapps/ROOT/
EXPOSE 8080
ENTRYPOINT ["/usr/local/tomcat/bin/catalina.sh","run"]