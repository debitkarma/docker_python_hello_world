# Docker Example For Python Web App

This serves as an example file requested by [ezgoodnight](https://github.com/ezgoodnight).

To build the image:

`docker buildx build . -t name_of_image:version_tag`

NOTE: You may need to config docker's buildx buildkit. Follow the [official docs](https://docs.docker.com/reference/cli/docker/buildx/build/) and lookup any errors as you go.

To start the image:

`docker compose up -d`

To test the code:

`curl http://localhost:30000/hello`

## Caveats

Some issues we saw on stream:

- Applications running dev server inside docker containers usually bind to localhost. This means accessible only inside the docker container! You need to remember to bind the app to `0.0.0.0` inside the container to access it by port on the machine.
- `docker-compose.yml` has its keywords pluralized, so it throws and attribute error for "service" and "port"
- docker build commands allow you to specify the name of the image alongside the tag with `-t image_name:version_tag`
