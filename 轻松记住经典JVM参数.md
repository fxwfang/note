### 轻松记住JVM经典参数

###  一、jvm参数分类

根据jvm参数开头可以区分参数类型，共三类： “-”，“-X”，“-XX”。

* 标准参数(-): 所有的JVM实现都必须实现这些参数的功能，而且向后兼容

* 非标准参数(-X): 默认jvm实现这些参数的功能，但是并不保障所有jvm实现都满足，且不保证向后兼容

  例： Xms20m, -Xmx20m,-Xmn20m,-Xss128k

* 非Stable参数（-XX）: 此类参数各个jvm实现会有所不同，将来可能会随时取消，慎重使用

  例： -XX:+PrintGCDetails , -XX:-UseParallelGC

### 二、关键参数详解

* -Xms20m: 设置jvm初始化堆大小为20m,一般与-Xmx相同，避免垃圾回收完成后jvm重新分。
* -Xmx20m: 设置jvm最大可用堆内存大小为20m
* -Xmn10m: 设置新生代大小为20m
* -Xss128k: 设置每个线程的栈大小为128k

字母拆分记忆：

| 参数 | 拆分               | 含义       |
| ---- | ------------------ | ---------- |
| -Xms | -X 、memory 、size | 内存大小   |
| -Xmx | -X、memory、max    | 最大内存   |
| -Xmn | -X、memory、new    | 新生代内存 |
| -Xss | -X、stack、size    | 栈大小     |



原文： http://www.360doc.com/content/20/0409/07/55930996_904770825.shtml



### java配置参数

```
 -XX:+<option>: 开启次参数指定的功能。 例如： -XX:+PrintFlagsFinal

 -XX:-<option>: 关闭功能
 
 -XX:<option>=value: 给option指定的参数赋值
 
 -D<name>=<value> : 设置系统指定参数值
 
```





### 资料

JVM虚拟机内存模型：

https://www.processon.com/view/5e663ed3e4b0e40bc1dac954?fromnew=1







### 垃圾回收算法及垃圾回收器

算法+ 算法的运用（垃圾回收器）





