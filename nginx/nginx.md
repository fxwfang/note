## IO复用

关键词: 同步 异步 阻塞 非阻塞

一个文件IO的读过程: 文件数据从磁盘--->内核缓冲区--->用户内存

### 同步阻塞

![20180328221507](https://github.com/fxwfang/note/tree/master/nginx/image/20180328221507.png)



### 同步非阻塞

![20180328225314](https://github.com/fxwfang/note/tree/master/nginx/image/20180328225314.png)

### IO复用(多路IO就绪通知)

![20180328225845](https://github.com/fxwfang/note/tree/master/nginx/image/20180328225845.png)

IO复用的主要实现方式有: select poll 和 epoll

水平触发:

边缘触发:

### 信号驱动

![20180328230645](https://github.com/fxwfang/note/tree/master/nginx/image/20180328230645.png)

### 异步非阻塞

![20180328230811](https://github.com/fxwfang/note/tree/master/nginx/image/20180328230811.png)



## 网络编程模型



1.  BIO
2. NIO
3. AIO



















---

参考资料:

http://www.importnew.com/22019.html
