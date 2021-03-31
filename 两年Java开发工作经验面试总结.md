# 两年Java开发工作经验面试总结

https://joonwhee.blog.csdn.net/article/details/71437307



#### 集合相关问题（必问）：

HashMap、LinkedHashMap、ConcurrentHashMap、ArrayList、LinkedList的底层实现。
HashMap和Hashtable的区别。
ArrayList、LinkedList、Vector的区别。
HashMap和ConcurrentHashMap的区别。
HashMap和LinkedHashMap的区别。
HashMap是线程安全的吗。 // 不是。jdk1.7: 
ConcurrentHashMap是怎么实现线程安全的。 // 

java集合 https://blog.csdn.net/feiyanaffection/article/details/81394745

### 多线程并发相关问题（必问）：

创建线程的3种方式。 https://zhuanlan.zhihu.com/p/82339746
什么是线程安全。  https://www.cnblogs.com/mostknow/p/10083584.html
Runnable接口和Callable接口的区别。 //https://zhuanlan.zhihu.com/p/82339746
wait方法和sleep方法的区别。  // http://www.helper3.com/res/article/9780.html
synchronized、Lock、ReentrantLock、ReadWriteLock。  //https://www.cnblogs.com/yeya/p/10207030.html
介绍下CAS(无锁技术)。 // https://www.cnblogs.com/tuyang1129/p/12585019.html
volatile关键字的作用和原理。  https://blog.csdn.net/zezezuiaiya/article/details/81456060
什么是ThreadLocal。 //https://blog.csdn.net/moakun/article/details/79911989

软引用 https://blog.csdn.net/csdn_20150804/article/details/103748869

创建线程池的4种方式。 https://blog.csdn.net/qq_36381855/article/details/79942555
ThreadPoolExecutor的内部工作原理。 https://www.cnblogs.com/dafanjoy/p/9729358.html    
分布式环境下，怎么保证线程安全。

什么是可重入锁？ https://www.cnblogs.com/incognitor/p/9894604.html

**JVM相关问题：**

- 介绍下垃圾收集机制（在什么时候，对什么，做了什么）。 https://blog.csdn.net/u012877472/article/details/51500691
- 垃圾收集有哪些算法，各自的特点。 https://zhuanlan.zhihu.com/p/104141822
- 类加载的过程。 //加载，验证，准备，解析，初始化。https://zhuanlan.zhihu.com/p/33509426
- 双亲委派模型。 https://blog.csdn.net/u013568373/article/details/93995246
- 有哪些类加载器。  BoostrapClassLoad,ExtClassLoad,AppClassLoad
- 能不能自己写一个类叫java.lang.String。 // 可以，但是需要定义自己的类加载器，否则系统会优先加载rt.jar包里面的

* String str = “a“ + “b“ + “c“到底创建了几个对象？ https://blog.csdn.net/qq_24830283/article/details/113864586

#### 设计模式相关问题（必问）：

先问你熟悉哪些设计模式
然后再具体问你某个设计模式具体实现和相关扩展问题。

#### 数据库相关问题，针对Mysql（必问）：

给题目让你手写SQL。
有没有SQL优化经验。
Mysql索引的数据结构。
SQL怎么进行优化。  https://blog.csdn.net/qq_42420425/article/details/104520290
SQL关键字的执行顺序。  https://blog.csdn.net/qq_27252133/article/details/89597506
有哪几种索引。https://blog.csdn.net/weixin_41459547/article/details/87967502

存储引擎有哪几种？ 

什么时候该（不该）建索引。 https://www.cnblogs.com/liuqing576598117/p/10594943.html
Explain包含哪些列.  https://segmentfault.com/a/1190000021458117?utm_source=tag-newest

Mysql索引查询失效的情况  https://www.cnblogs.com/wdss/p/11186411.html

MVCC（并发版本控制）: 

事物隔离级别。  幻读(两次sum(money)结果不一样）



#### **框架相关问题：**

Spring用了哪些设计模式。 https://zhuanlan.zhihu.com/p/114244039
Spring中AOP主要用来做什么。 // https://www.bilibili.com/video/BV1e64y1f7XV?from=search&seid=2155089577707117192
Spring注入bean的方式。 // https://blog.csdn.net/a745233700/article/details/89307518
什么是IOC，什么是依赖注入。 https://blog.csdn.net/a745233700/article/details/89307518
Spring是单例还是多例，怎么修改。 // https://zhuanlan.zhihu.com/p/234466999
Spring事务隔离级别和传播性。 // https://github.com/fxwfang/JavaGuide/blob/master/docs/system-design/framework/spring/spring-transaction.md
介绍下Mybatis的缓存机制。 // https://tech.meituan.com/2018/01/19/mybatis-cache.html
Mybatis的mapper文件中#和$的区别。 http://www.mybatis.cn/archives/70.html
Mybatis的mapper文件中resultType和resultMap的区别。 https://blog.csdn.net/xiaojin21cen/article/details/81056560

spring bean什么时候加载  https://blog.csdn.net/gougreen/article/details/84811305

Spring ioc实现原理  https://blog.csdn.net/qq_32224047/article/details/106957319



### 其他遇到问题

介绍下栈和队列。 https://blog.csdn.net/weixin_43790276/article/details/104033337
IO和NIO的区别。
接口和抽象类的区别。 https://zhuanlan.zhihu.com/p/94770324 

抽象类（接口）能被实例化吗？static、synchronized、native修饰抽象方法能行吗 https://my.oschina.net/GinkGo/blog/1560673int和Integer的自动拆箱/装箱相关问题。 https://blog.csdn.net/tanga842428/article/details/52789701
常量池相关问题。
==和equals的区别。
重载和重写的区别。
String和StringBuilder、StringBuffer的区别。 https://www.cnblogs.com/su-feng/p/6659064.html
静态变量、实例变量、局部变量线程安全吗，为什么。
try、catch、finally都有return语句时执行哪个。
介绍下B树、二叉树。
ajax的4个字母分别是什么意思。
xml全称是什么。  https://blog.csdn.net/qq_42282074/article/details/105387790
分布式锁的实现。
分布式session存储解决方案。 https://segmentfault.com/a/1190000022404396

常用的linux命令。

拦截器/过滤器/监听器

彻底弄懂session，cookie，token. https://segmentfault.com/a/1190000017831088

看完这篇 Session、Cookie、Token，和面试官扯皮就没问题了  https://www.cnblogs.com/cxuanBlog/p/12635842.html

什么是死锁，产生死锁的原因及必要条件  https://blog.csdn.net/hd12370/article/details/82814348