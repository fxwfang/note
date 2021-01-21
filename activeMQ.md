### ActiveMQ

### doceker安装

```shell
docker search activemq
docker pull webcenter/activemq
//使用docker run 命令运行docker镜像， 61616为ActiveMQ的外部访问端口， 8161为web页面访问端口
docker run -d --name activemq -p 61616:61616 -p 8166:8161 webcenter/activemq
使用 ip:8166访问 ActiveMQ 管理界面 登录账号密码默认是admin/admin

```

