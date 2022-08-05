---
title: "RPC和Socket"
date: 2022-03-31T21:01:35+08:00
lastmod: 2022-03-31T21:01:35+08:00
draft: true
keywords: []
description: ""
tags: []
categories: []
author: "jincheng9"

# You can also close(false) or open(true) something for this content.
# P.S. comment can only be closed
comment: true
toc: true
autoCollapseToc: false
postMetaInFooter: false
hiddenFromHomePage: false
# You can also define another contentCopyright. e.g. contentCopyright: "This is another copyright."
contentCopyright: false
reward: false
mathjax: false
mathjaxEnableSingleDollar: false
mathjaxEnableAutoNumber: false

# You unlisted posts you might want not want the header or footer to show
hideHeaderAndFooter: false

# You can enable or disable out-of-date content warning for individual post.
# Comment this out to use the global config.
#enableOutdatedInfoWarning: false

flowchartDiagrams:
  enable: true
  options: ""

sequenceDiagrams: 
  enable: true
  options: ""

---

## 1. RPC & Socket

RPC is the protocol. The socket provides access to the transport to implement that protocol.

## 2. 什么是RPC？

​       RPC(Remote Procedure Call) is the service and protocol offered by the operating system to allow code to be triggered for running by a remote application. It has a defined protocol by which procedures or objects can be accessed by another device over a network. An implementation of RPC can be done over basically any network transport (e.g. TCP, UDP, cups with strings).

​       The RPC interface is generally used to communicate between processes on different workstations in a network. However, RPC works just as well for communication between different processes on the same workstation. The Port Mapper program maps RPC program and version numbers to a transport-specific port number.

* 远程调用，触发代码运行

* 通过网络访问的形式

* 底层实现可以有很多种

* 同一工作空间的进程通信、不同工作空间的通信

  

### RPC架构

RPC包含下面五部分：

1. Client

   服务的调用方。

2. Client Stub

   存放服务端的地址消息，再将客户端的请求参数打包成网络消息，然后通过网络远程发送给服务方。

3. RPC Runtime

4. Server Stub

   接收客户端发送过来的消息，将消息解包，并调用本地的方法。

5. Server

   接收客户端发送过来的消息，将消息解包，并调用本地的方法。

   ![](/img/image-20220331223058481.png)

   

### RPC怎么工作的？

**Step 1)** The client, the client stub, and one instance of RPC run time execute on the client machine.

**Step 2)** A client starts a client stub process by passing parameters in the usual way. The client stub stores within the client’s own address space. It also asks the local RPC Runtime to send back to the server stub.

**Step 3)** In this stage, RPC accessed by the user by making regular Local Procedural Cal. RPC Runtime manages the transmission of messages between the network across client and server. It also performs the job of retransmission, acknowledgment, routing, and encryption.

**Step 4)** After completing the server procedure, it returns to the server stub, which packs (marshalls) the return values into a message. The server stub then sends a message back to the transport layer.

**Step 5)** In this step, the transport layer sends back the result message to the client transport layer, which returns back a message to the client stub.

**Step 6)** In this stage, the client stub demarshalls (unpack) the return parameters, in the resulting packet, and the execution process returns to the caller.



### Socket

The socket is just a programming abstraction such that the application can send and receive data with another device through a particular network transport. You implement protocols (such as RPC) on top of a transport (such as TCP) with a socket.



### REST

* 无状态的 stateless

  





### 资料

* [remote-procedure-call-rp](https://www.guru99.com/remote-procedure-call-rpc.html)
* [understanding-rest-and-rpc-for-http-apis](https://www.smashingmagazine.com/2016/09/understanding-rest-and-rpc-for-http-apis/)



















