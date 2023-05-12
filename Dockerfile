FROM jetty:11.0-jre11-alpine

USER root

RUN apk update && apk add curl \
	&& curl -k https://buildservice.bluespice.com/webservices/4.3.x/BShtml2PDF.war -o /var/lib/jetty/webapps/BShtml2PDF.war

USER jetty

CMD ["java", "-jar","/usr/local/jetty/start.jar"]

EXPOSE 8080