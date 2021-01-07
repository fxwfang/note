### Docker

[toc]

### 基本命令

* docker  run help   #  在你的不了解的命令后面加上 --help

### 日志查看

```
# docker logs 可选参数 容器id
  -tf            # 显示日志
  --tail number  # 显示日志条数
```

### **查看容器内的进程**

```
# docker top 容器id
```

### **查看容器内的源数据**

```
# docker inspect 容器id
```

### **进入正在运行的容器**

```
# 命令
docker exec 容器id    # 进入容器后， 打开一个新的终端
docker attach 容器id  # 进入容器正在运行的终端， 不会启动新进程
```

### **从容器内拷贝文件到主机**

```
# docker cp 容器id:容器内部路径 主机路径

[root@localhost ~]# docker cp 2bdb808adcda:/data /data
```

### commit提交自定义镜像

```
# docker commit -m="提交描述信息" -a="作者" 容器id 目标镜像名:[TAG版本]
```

### 容器数据卷

#### 具名挂载和匿名挂载

```shell
# 匿名挂载
-v 容器内部路径 # 可以不指定主机挂载路径, 这种匿名挂载， 我们只在-v里写了容器的路径， 没有名字
docker run --name="my-nginx-volume" -p 80:80 -d  -v /etc/nginx 2f7

[root@localhost ~]# docker run --name="my-nginx-volume" -p 80:80 -d  -v /etc/nginx 2f7
e3d5bd24c61c62375d77ce717305001d461238993d60b4ba16efaa0b43062e34

# 查看所有的 volume 卷挂载情况
[root@localhost ~]# docker volume ls
DRIVER              VOLUME NAME
local               8184d93aee0d382678bda84b53260a8fe7a6ec661bad8d6e740f3b95be8cf369


# 这种匿名挂载， 我们只在-v里写了容器的路径， 没有名字
# 具名挂载
# -v 卷名:容器路径

[root@localhost ~]# docker run --name="my-nginx-volume-name" -p 8080:80 -d  -v juming-nginx:/etc/nginx 2f7
fcf87e2e32aec73d5357b51c226c2ed17cb03fd41fd9d1a15b2243248d07429a
[root@localhost ~]# docker volume ls
DRIVER              VOLUME NAME
local               8184d93aee0d382678bda84b53260a8fe7a6ec661bad8d6e740f3b95be8cf369
local               juming-nginx

# 查一下具体挂载信息
# docker volume inspect 卷名
[root@localhost ~]# docker volume inspect juming-nginx
[
    {
        "CreatedAt": "2020-12-10T18:34:04+08:00",
        "Driver": "local",
        "Labels": null,
        "Mountpoint": "/var/lib/docker/volumes/juming-nginx/_data",
        "Name": "juming-nginx",
        "Options": null,
        "Scope": "local"
    }
]
```

所有没有指定挂载主机的路径， 目录都在 `/var/lib/docker/volumes/xxxx/_data` 我们可以通过具名挂载方便找到我们的 一个卷 ， 大多数情况下使用具名挂载。

```
# 如何确定具名挂载、匿名挂载和指定路径挂载
-v 容器路径         # 匿名挂载
-v 卷名:容器路径     # 具名挂载
-v 主机路径:容器路径  # 指定路径挂载
```

#### 拓展：

```
# -v 容器路径:ro   rw  改变读写权限

ro    # 只读
rw    # 可读可写

# 一旦设置了这个卷的权限， 容器对我们的挂载卷就有了限制
docker run --name my-nginx -p 8080:80 -d  -v juming-nginx:/etc/nginx:ro 2f7
docker run --name= my-nginx -p 8080:80 -d  -v juming-nginx:/etc/nginx:rw 2f7

# 看到ro 就说明这个路径只能主机来操作 容器内部无法操作
```

### 初始Dockerfile

#### Dockerfile介绍

```
Dockerfile 是构建docker镜像的文件 ！ 命令参数脚本 ！

构建步骤 ：

1、编写 Dockerfile 文件

2、docker build 构建成为一个镜像

3、docker run 运行镜像

4、docker push 发布镜像 （DockerHub、 阿里云镜像）
```

#### DockerFile指令

```
FROM          # 基础镜像 ， 一切从这个开始
MAINTAINER    # 镜像谁写的 ， 姓名 + 邮箱
RUN           # 镜像构成时需要执行的命令 
ADD           # 步骤 ： tomcat镜像， 这个tomcat压缩包 添加的内容
WORKDIR       # 镜像的工作目录 进去容器后的目录
VOLUME        # 数据挂载目录
EXPOSE        # 开放端口
CMD           # 指定这个容器启动的时候运行的命令，只有最后一个会生效，可被替代
ENTRYPOINT    # 指定这个容器启动的时侯运行的命令，可以追加命令
ONBUILD       # 当构建一个被继承 Dockerfile 这个时候就会运行ONBUILD 的指令， 出发指令
COPY          # 类似ADD 将我们的文件拷贝到镜像中
ENV           # 构建容器时设置环境变量
```



### Docker网络

```

docker是如何处理容器网络访问的？

资料：
https://www.cnblogs.com/zuxing/articles/8780661.html
```

































