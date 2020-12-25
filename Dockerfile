FROM swaggerapi/swagger-ui:v3.38.0

ARG SWAGGER_YAML=swagger-config.yaml
ARG DEST_DIR=/

ENV SWAGGER_JSON=$DEST_DIR$SWAGGER_YAML

COPY $SWAGGER_YAML $DEST_DIR