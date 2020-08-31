### Java8新特性

[toc]



####  1. Lambda表达式和函数接口

* Lambda表达式

  https://www.javacodegeeks.com/2014/03/functional-programming-with-java-8-lambda-expressions-monads.html

  * Monad

    http://www.ruanyifeng.com/blog/2015/07/monad.html

  * 

* 函数接口（**@FunctionalInterface**）

  https://www.javacodegeeks.com/2013/03/introduction-to-functional-interfaces-a-concept-recreated-in-java-8.html

  

#### 2. 接口的默认方法和静态方法

* 默认方法和静态方法不会破坏函数接口的定义

https://www.javacodegeeks.com/java-8-features-tutorial.html#Interface_Default

> 在复杂的继承体系中，默认方法可能会引起歧义和编译错误，所以应该慎用。更多详情：http://docs.oracle.com/javase/tutorial/java/IandI/defaultmethods.html



#### 3.方法引用

* 构造器引用，语法：Class<T>::new 
*  静态方法引用，语法： Class::static_method
*  类的成员方法的引用，语法： Class::method
*  实例对象的成员方法的引用，语法： instance::method

官方文档：

https://docs.oracle.com/javase/tutorial/java/javaOO/methodreferences.html

#### 4. 重复注解

https://docs.oracle.com/javase/tutorial/java/annotations/repeating.html

#### 5. Java官方库新特性

* Optional

  - **isPresent()**
  - **orElseGet()**
  - **orElse()**

  > 官方文档： https://docs.oracle.com/javase/8/docs/api/java/util/Optional.html

* Streams
  资料：https://www.javacodegeeks.com/2014/05/the-effects-of-programming-with-java-8-streams-on-algorithm-performance.html

  官方文档：http://docs.oracle.com/javase/8/docs/api/java/util/stream/package-summary.html#StreamOps

#### 6.Date / Time API

* **Clock**
* LocalDate
* LocalTime
* LocalDateTime

资料：

https://www.javacodegeeks.com/2014/04/java-8-date-time-api-tutorial-localdatetime.html

#### 7.并发性

https://www.javacodegeeks.com/2015/09/java-concurrency-essentials.html

 #### Google Guava

http://code.google.com/p/guava-libraries/






#### 参考资料

https://www.jianshu.com/p/5b800057f2d8

官网文档：

https://docs.oracle.com/javase/tutorial/java/javaOO/lambdaexpressions.html



