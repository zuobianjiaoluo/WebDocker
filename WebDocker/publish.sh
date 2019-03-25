docker stop webdocker
docker rm webdocker
docker build -t webdocker .
docker run --name webdocker -p 8000:80 webdocker




docker run --name mysql001 -e MYSQL_ROOT_PASSWORD=123456 -p 3306:3306 -d mysql  #运行mysql容器
docker exec -it webdocker /bin/bash   #进入容器
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime  #进入容器执行，退出exit容器，然后restart重启容器，否则时间差8个小时