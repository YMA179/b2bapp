FROM tomcat:10.1-jdk21

RUN rm -rf /usr/local/tomcat/webapps/*

COPY b2bapp.war /usr/local/tomcat/webapps/ROOT.war

# Use a template + startup script so Tomcat binds to Render's $PORT
COPY server.xml.template /usr/local/tomcat/conf/server.xml.template
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
