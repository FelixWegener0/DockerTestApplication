@echo off

@REM set enviormental variables
set dockerHubName=felixwegener
set containerName=nodejs-image-backend

@REM build and run docker container
echo deploy nodejs backend application to docker container
echo:
cd backend

setlocal enableDelayedExpansion

echo build container
docker build -t %dockerHubName%/%containerName% .
echo:

cd ..

echo pull docker container in compose
cd docker
docker compose up -d
cd ..
echo:

echo copy frontend working dir to docker container webside dir
echo f | xcopy /f /y "./frontend" "./docker/website"

pause
