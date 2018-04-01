## Docker 入门



### Docker组件

镜像(image) :

容器(container):

仓库(repository):



### Dockerfile

FROM

MAINTAINTER 

ENV 

ADD

RUN

EXPOSE



*ENTRYPOINT

*CMD



docker build -t  ./path

-t : 容器名称(有规则)

.dockerignore



docker images

docker rmi  :删除镜像



docker run 

​	-it

​	-d

​	-p

​	-P

​	--name

​	-v	

​	-e



docker ps

​	-a



基础镜像     中间镜像     应用镜像



ONBUILD ADD

ONBUILD RUN



ifconfig eth1 :  eth1是公网IP

ifconfig eth0: eht0  内网IP



docker exec  进入交互式模式



VOLUME   删除文件,保留数据



---

### Docker持续集成



docker tag





---

### Docker监控警报及日志管理





### Docker网络管理



----

### Docker持续部署



----

参考资料:

官方文档:

https://docs.docker.com/engine/docker-overview/





























































































































