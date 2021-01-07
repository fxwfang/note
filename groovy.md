## groovy

Groovy是用于Java虚拟机的一种敏捷的动态语言，它是一种成熟的面向对象编程语言，既可以用于面向对象编程，又可以用作纯粹的脚本语言。

### 基本语法

* 默认导入一下库

  ```java
  import java.lang.* 
  import java.util.* 
  import java.io.* 
  import java.net.* 
  
  import groovy.lang.* 
  import groovy.util.* 
  
  import java.math.BigInteger 
  import java.math.BigDecimal
  ```

* groovy令牌

  令牌可以是一个关键字，一个标识符，常量，字符串文字或符号。

  ```groovy
  println(“Hello World”);
  // 在上面的代码行中，有两个令牌，首先是关键词的 println 而接下来就是字符串的“Hello World”。
  
  ```

  

* groovy数据类型

  ```sql
  
  Groovy提供多种内置数据类型。以下是在Groovy中定义的数据类型的列表 -
  
  byte -这是用来表示字节值。例如2。
  
  short -这是用来表示一个短整型。例如10。
  
  int -这是用来表示整数。例如1234。
  
  long -这是用来表示一个长整型。例如10000090。
  
  float -这是用来表示32位浮点数。例如12.34。
  
  double -这是用来表示64位浮点数，这些数字是有时可能需要的更长的十进制数表示。例如12.3456565。
  
  char -这定义了单个字符文字。例如“A”。
  
  Boolean -这表示一个布尔值，可以是true或false。
  
  String -这些是以字符串的形式表示的文本。例如，“Hello World”的。
  
  -- 包装类型
  ava.lang.Byte
  java.lang.Short
  java.lang.Integer
  java.lang.Long
  java.lang.Float
  java.lang.Double
  java.math.BigInteger
  java.math.BigDecimal
  ```



* groovy变量

  ```
  使用数据类型的本地语法，或者使用def关键字。对于变量定义，必须明确提供类型名称或在替换中使用“def”。这是Groovy解析器需要的。
  ```

* groovy运算符

  ```sql
  算术运算符
  关系运算符
  逻辑运算符
  位运算符
  赋值运算符
  
  范围运算符:
  Groovy支持范围的概念，并在..符号的帮助下提供范围运算符的符号。
  def range = 0..5  -- 这只是定义了一个简单的整数范围，存储到一个局部变量称为范围内的下限为0和上限为5。
  
  
  
  ```

  

* Groovy 循环

```
  while语句
	for语句
	for-in语句
```



























