docker stop webdocker  #停止容器
docker rm webdocker    #删除容器
docker build -t webdocker .  #构建容器
docker run --name webdocker -p 8000:80 webdocker  #运行容器
docker run --name mysql001 -e MYSQL_ROOT_PASSWORD=123456 -p 3306:3306 -d mysql  #运行mysql容器

docker rm #删除一个或多个容器
docker rm -f db01 db02  #强制删除容器db01、db02                       -f :通过SIGKILL信号强制删除一个运行中的容器
docker rm -l db #移除容器nginx01对容器db01的连接，连接名db             -l :移除容器间的网络连接，而非容器本身
docker rm -v nginx01   #删除容器nginx01,并删除容器挂载的数据卷        -v :-v 删除与容器关联的卷

docker rmi webdocker #删除本地一个或多个镜像。
docker rmi [OPTIONS] IMAGE [IMAGE...]
-f #强制删除；
--no-prune #不移除该镜像的过程镜像，默认移除；
root@runoob:~# docker rmi -f runoob/ubuntu:v4  #强制删除本地镜像runoob/ubuntu:v4。

#修改容器时间
#第一种 需要进入容器
docker exec -it webdocker /bin/bash   #进入容器
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime  #进入容器执行，退出exit容器，然后restart重启容器，否则时间差8个小时
#第二种