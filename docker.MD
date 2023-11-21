# study docker
## 1.docker启动命令
````
systemctl start docker
systemctl stop docker
````
## 2.docker启动mysql
包含自启动，重命名，挂在卷，数据库密码设置
````
docker run -itd -p 3306:3306 --name=mysql_baron --restart=always --privileged=true -v $PWD/conf:/etc/mysql/conf.d -v $PWD/logs:/logs -v $PWD/datas:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 mysql:latest
--创建数据库
CREATE DATABASE wxcomponent CHARACTER SET utf8;
````
## 3.查看容器IP
````
docker inspect mysql_baron|grep IPAddress
````
## 4.进入容器
````
docker exec -it mysql_baron /bin/bash
````
## 5.退出容器
Ctrl+q+p
## 6.创建网桥
````
docker network create --driver=bridge --subnet=172.20.0.0/16 mybridge
````
## 7.容器加入网络
指定ip，指定别名（--alias=mysql）
````
docker network connect mybridge --ip 172.20.0.3 mysql_test
````
## 8.容器退出网络
````
docker network disconnect mybridge mysql_test
````
## 9.用dockerfile打包镜像
````
docker build -t weixinthird:0.1 /home/baron/wxcloudrun-wxcomponent-main
````