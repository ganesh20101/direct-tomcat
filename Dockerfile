FROM tomcat:latest
RUN mv webapps webapps2
RUN mv webapps.dist/ webapps
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/host-manager/META-INF/
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/

