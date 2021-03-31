### Java零拷贝

[toc]

### 问题列表

```
1. 什么是DMA技术？
2. DirectByteBuffer中unsafe分配的直接内存是如何被回收的？



```

### 知识列表

![image-20210131145452496](/Users/fangxiaowei/git/note/java零拷贝/images/image-20210131145452496.png)



### DMA（Direct Memory Access：直接内存存取）

![image-20210131145836158](/Users/fangxiaowei/git/note/java零拷贝/images/image-20210131145836158.png)

DMA 是一种**允许外围设备（硬件子系统）直接访问系统主内存的机制**。也就是说，基于 DMA 访问方式，系统主内存于硬盘或网卡之间的数据传输可以绕开 CPU 的调度。



### 用户态和内核态

![image-20210131151151144](/Users/fangxiaowei/git/note/java零拷贝/images/image-20210131151151144.png)



### 缓冲区读写

![image-20210131151946623](/Users/fangxiaowei/git/note/java零拷贝/images/image-20210131151946623.png)



### 虚拟内存

**虚拟内存（virtual memory，VM）**，是一种内存管理技术。它是操作系统提供的一种对主存的抽象。虚拟内存的实现由操作系统软件和硬件结合完成，包括硬件异常、地址翻译、磁盘文件、内核程序等。





### 传统*IO*

![image-20210131153412543](/Users/fangxiaowei/git/note/java零拷贝/images/image-20210131153412543.png)



### mmap+write零拷贝

![image-20210131153744222](/Users/fangxiaowei/git/note/java零拷贝/images/image-20210131153744222.png)



**mmap 是一种内存映射文件的方法，即将一个文件或者其它对象映射到进程的地址空间，实现文件磁盘地址和进程虚拟地址空间中一段虚拟地址的一一对映关系；**





### sendfile实现零拷贝

![image-20210131154025616](/Users/fangxiaowei/git/note/java零拷贝/images/image-20210131154025616.png)



### BIO面向流的网络通信分析





### NIO非阻塞且面向块的网络通信分析





### Java零拷贝

**Zreo Copy (零拷贝)机制的终极目标，就是消除冗余的上下文切换和数据拷贝，提高效率。**

 Java 的 Zero Copy 是由 Java NIO 来提供的，NIO 三大核心要素 ：Buffer（缓冲区）、Channel（通道）和 Selector（选择器）。

Buffer 和Channel 组合实现了Java 的 Zero Copy，主要是由 MappedByteBuffer、DirectByteBuffer 以及 FileChannel来完成的。





### 强引用、虚引用、弱引用、软引用

```
Java4种引用的级别由高到低依次为：
    强引用 >  软引用  >  弱引用  >  虚引用
```



- **软引用 SoftReference**

  ```
     如果一个对象只具有软引用，则内存空间足够，垃圾回收器就不会回收它；如果内存空间不足了，就会回收这些对象的内存。只要垃圾回收器没有回收它，该对象就可以被程序使用。软引用可用来实现内存敏感的高速缓存。
  
      软引用可以和一个引用队列（ReferenceQueue）联合使用，如果软引用所引用的对象被垃圾回收器回收，Java虚拟机就会把这个软引用加入到与之关联的引用队列中
  ```

  

- **弱引用 WeakReference**

  ```
  弱引用与软引用的区别在于：只具有弱引用的对象拥有更短暂的生命周期。在垃圾回收器线程扫描它所管辖的内存区域的过程中，一旦发现了只具有弱引用的对象，不管当前内存空间足够与否，都会回收它的内存。不过，由于垃圾回收器是一个优先级很低的线程，因此不一定会很快发现那些只具有弱引用的对象。
  
      弱引用可以和一个引用队列（ReferenceQueue）联合使用，如果弱引用所引用的对象被垃圾回收，Java虚拟机就会把这个弱引用加入到与之关联的引用队列中。
  ```

  

- **虚引用PhantomReference**

  ```
  “虚引用”顾名思义，就是形同虚设，与其他几种引用都不同，虚引用并不会决定对象的生命周期。如果一个对象仅持有虚引用，那么它就和没有任何引用一样，在任何时候都可能被垃圾回收器回收。
  
      虚引用主要用来跟踪对象被垃圾回收器回收的活动。虚引用与软引用和弱引用的一个区别在于：虚引用必须和引用队列 （ReferenceQueue）联合使用。当垃圾回收器准备回收一个对象时，如果发现它还有虚引用，就会在回收对象的内存之前，把这个虚引用加入到与之 关联的引用队列中。
  ```

  

### Java分配的直接内存是如何被回收的

![image-20210202125151827](/Users/fangxiaowei/git/note/java零拷贝/images/image-20210202125151827.png)



### 资料

视频教程：

https://www.bilibili.com/video/BV1Bp4y1B7zc?from=search&seid=8151779923591372207

DMA 技术是什么，在哪里用？看完绝对有收获：

https://www.jianshu.com/p/3a26e8c9f402



