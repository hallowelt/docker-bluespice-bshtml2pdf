FROM tomcat:9-jre8-alpine

WORKDIR /usr/local/tomcat/webapps
RUN wget https://buildservice.bluespice.com/webservices/REL1_31/BShtml2PDF.war

EXPOSE 8080
