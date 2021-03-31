### Stringbuiler,StringBuffer区别



* 是否线程安全

  StringBuiler -->  线程不安全的，

  StringBuffer--> 线程安全的,synchronized

* 为什么要有StringBuffer和StringBuilder

  String的值是不可变的，这样会导致每次对String进行操作都会生成新的String对象，效率低，浪费资源

  

  java面试题：为什么 StringBuilder 不是线程安全的？

   如果是方法内的局部变量，StringBuilder应该是线程安全的，但是如果是共享变量，StringBuilder不是线程安全的?

  ```
  https://blog.csdn.net/qq_43563538/article/details/100537328
  ```

  

  ### 资料

  https://www.cnblogs.com/su-feng/p/6659064.html

  

