# Docker Example For Python Web App

This serves as an example file requested by [ezg]() (link later).

To build the image:

`docker buildx build . -t name_of_image:version_tag`

NOTE: You may need to config docker's buildx buildkit. Follow the [official docs](https://docs.docker.com/reference/cli/docker/buildx/build/) and lookup any errors as you go.

To start the image:

`docker compose up -d`

To test the code:

`curl http://localhost:30000/hello`
