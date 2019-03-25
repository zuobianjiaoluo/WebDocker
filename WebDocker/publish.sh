docker stop webdocker
docker rm webdocker
docker build -t webdocker .
docker run --name webdocker -p 8000:80 webdocker