# swaggerui-yaml

A quick containerized template and demo to getting your API Docs up with swagger

This makes it easy for all who wants to deploy their documentation as a standalone container, hosting it whereever and whenever you want, without any extra requirements like a storage bucket.

## Getting started

Make sure you install [docker and docker-compose](https://docs.docker.com/compose/install/) first

Once the above is done, run `docker-compose up` to bring up and test your containerized environment with your API documentation

The documentation can be viewed at `localhost:8080`

## Configuring the API documentation

Amend `swagger-config.yaml` in the root directory of this project. No other changes are required.

Do use a swagger editor like https://editor.swagger.io/ to test your changes 

## Building and deploying for production use

Run `docker build` for an image for the documentation.

Example (with image tag) :
```
  docker build . -t %YOUR-IMAGE-HOST%:%YOUR-IMAGE-TAG%
```

When deploying the image, note that the port to use is `8080`

## Kubernetes tips

If you are looking for a liveness probe, you could use the path `/swagger-ui-standalone-preset.js.LICENSE.txt` (smallest file size of all files in the app)
