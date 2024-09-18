# DockerTestApplication

## Automated Deployment

- set enviormental variables in deployment.bat
- execute deployment.bat

## Manuel Deployment

- docker build -t your_dockerhub_username/nodejs-image-demo .
- docker images
- docker run --name nodejs-image-demo -p 80:8080 -d your_dockerhub_username/nodejs-image-demo
- docker ps

### pushing to docker HUB

- docker login -u your_dockerhub_username
- docker push your_dockerhub_username/nodejs-image-demo

### pulling from repo

- docker pull your_dockerhub_username/nodejs-image-demo

## Creating docker compose with webserver, database and nodejs backend

- follow step to build the nodejs backend in a docker container
- set the name of the backend container as image for youre backend service
- set and expose backend ports
- build compose projekt with docker compose up -d
