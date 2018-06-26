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



#### Docker run

```
docker run [options] image [command] [arg...]
	-d, --detach=false       指定容器运行于前台还是后台，默认为false 
	-i, --interactive=false  以交互式模式运行容器,并返回容器的ID
	-t, --tty=false 		 分配tty设备，该可以支持终端登录，默认为false
	-p, --publish=[]         指定容器暴露的端口 
	-P, --publish-all=false  指定容器暴露的端口
	-v, --volume=[]          给容器挂载存储卷，挂载到容器的某个目录 	
	-e, --env=[]             指定环境变量，容器中可以使用该环境变量
	--name=""                指定容器名字，后续可以通过名字进行容器管理
	--restart="no"           指定容器停止后的重启策略:  
                                no：容器退出时不重启    
                                on-failure：容器故障退出（返回值非零）时重启   
                                always：容器退出时总是重启
	--rm=false               指定容器停止后自动删除容器(不支持以docker run -d启动的容器) 
例子:


参考:
https://blog.csdn.net/kunloz520/article/details/53839237
```



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





























































































































