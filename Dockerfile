FROM tomcat:10

WORKDIR /usr/local/tomcat/webapps
RUN wget https://buildservice.bluespice.com/webservices/4.3.x/BShtml2PDF.war

EXPOSE 8080
