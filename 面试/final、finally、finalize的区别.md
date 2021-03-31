### final、finally、finalize的区别



* final

  1. 被final修饰的类不能被继承
  2. 被final修饰的方法不能被子类重写。   ---  
  3. final修饰的变量不能被修改，对于引用类型，则引用指向不能被修改

* finally 

  一般与try-/catch 连用，如果对应的try语句块被执行，则finally里面的会被执行

* finalize

  finalize()是在java.lang.Object里定义的，也就是说每一个对象都有这么个方法。这个方法在gc启动，该对象被回收的时候被调用。

  



* 重载和重写

​    重载： 方法的参数列表不一样

```
在一个类中，同名的方法如果有不同的参数列表（参数类型不同、参数个数不同甚至是参数顺序不同）则视为重载。同时，重载对返回类型没有要求，可以相同也可以不同，但不能通过返回类型是否相同来判断重载。

```

​    重写： 方法的方法名称和参数列表要与父类一致，且修饰符不能小于父类  public> protect > default > private

```
1.发生在父类与子类之间
2.方法名，参数列表，返回类型（除过子类中方法的返回类型是父类中返回类型的子类）必须相同
3.访问修饰符的限制一定要大于被重写方法的访问修饰符（public>protected>default>private)
4.重写方法一定不能抛出新的检查异常或者比被重写方法申明更加宽泛的检查型异常

```



* Package修饰符解释一下？ 跨包能调用到吗？

  



资料：

final、finally、finalize的区别：

https://www.cnblogs.com/ktao/p/8586966.html

重载与重写：

https://blog.csdn.net/wintershii/article/details/80558739

