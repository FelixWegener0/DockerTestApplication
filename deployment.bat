@echo off

@REM set enviormental variables
set dockerHubName=felixwegener
set containerName=nodejs-image-backend
set backendPort=4000

@REM build and run docker container
echo deploy nodejs backend application to docker container
echo:
cd backend

setlocal enableDelayedExpansion

echo build container
docker build -t %dockerHubName%/%containerName% .
echo:

echo start container and set ports
docker run --name %containerName% -p %backendPort%:%backendPort% -d %dockerHubName%/%containerName%
echo:

cd ..

pause
