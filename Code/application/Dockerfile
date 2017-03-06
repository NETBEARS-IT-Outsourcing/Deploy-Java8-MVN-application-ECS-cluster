FROM        maven:3.3-jdk-8

ENV         APP_PATH /usr/app
ENV         APP_DATA /app_data

RUN         mkdir -p /usr/app && \
            mkdir -p /app_data

WORKDIR     /usr/app
ADD         src 	/usr/app/src
COPY        pom.xml	.
COPY        entrypoint.sh .
COPY        application.properties .

RUN         chmod +x entrypoint.sh

EXPOSE      8080
CMD         ["/usr/app/entrypoint.sh"]
