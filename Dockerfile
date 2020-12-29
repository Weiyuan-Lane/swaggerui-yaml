FROM swaggerapi/swagger-ui:v3.38.0

ADD ./assets /assets
ADD ./docs /usr/share/nginx/html/docs

COPY run.sh /

ENTRYPOINT [ "/run.sh" ]
