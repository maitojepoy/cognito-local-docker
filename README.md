# Dockerize Cognito-Local

This application was inspired just to simple dockerize [Cognito-local](https://www.github.com/jagregory/cognito-local).

### Installation

First step is to simply build the docker image. Run:

    docker build -t maitojepoy/cognito-local-docker .

### Local Development (Docker Compose)

You can include the built image in your docker-compose file. Declare the ff in your `docker-compose.yml` file:

    services:
      cognitolocal:
        image: maitojepoy/cognito-local-docker:latest
        ports: 
          - "9229:9229"
        volumes:
          - ./cognito:/usr/src/app/.cognito

The image exposes a volume folder where it stores all the data json files (clients and user pool list), also it will expose port 9229. In the example above, a `cognito` folder will be created next to `docker-compose.yml` (see example `docker-compose.yml` file in this repo).

Once your compose file is ready, just run:

    docker-compose up

### Credits

Huge thanks to [James Gregory](https://github.com/jagregory) for creating [Local Cognito Emulator](http://github.com/jagregory/cognito-local).