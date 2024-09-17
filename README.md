# DockerTestApplication

## Deploy Docker

- docker build -t your_dockerhub_username/nodejs-image-demo .
- docker images
- docker run --name nodejs-image-demo -p 80:8080 -d your_dockerhub_username/nodejs-image-demo
- docker ps

### pushing to docker HUB

- docker login -u your_dockerhub_username
- docker push your_dockerhub_username/nodejs-image-demo

### pulling from repo

- docker pull your_dockerhub_username/nodejs-image-demo
