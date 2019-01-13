###  1.MySQL结构图和执行流程

1) 连接管理器
2) 线程管理器
3) 用户模块(检查权限)
4）命令分发模块
5）缓存模块（可以关闭）
6）日志模块
7）解析器
	-优化器
	-表定义模块
	-表维护模块
	-复制模块？？
	-状态报告模块
8）访问控制模块
9）表管理器
10）存储引擎
	

### 影响MySQL查询速度的因素

从执行流程分析原因 （SQL解析的问题）


从查询引擎分析原因 （查询算法的问题）




### MySQL优化
```



```


### MySQL的目录结构
```



```


### MySQL存储引擎
```




```



### MySQL怎么解决多线程问题？（线程管理器）

```




```





###  elt()、field()、ifNull()的使用

```
1)ELT(n,str1,str2,str3,...) ：如果n=1，则返回str1,如果n=2，则返回str2,依次类推。如果n小于1或大于参数个数，返回NULL.

2)FIELD(str,str1,str2,str,str3,str4. ..):返回str 在后面的参数列（str1,str2,str,str3,str4...）中的索引，起始索引为1。如果未在参数列中发现str 则返回0。

3)IFNULL(expr1,expr2)：如果expr1是NULL,则返回expr2,如果expr1不是NULL,则返回expr1。IFNULL()返回一个数字或字符串值，取决于它被使用的上下文环境

例子：
SELECT *,IFNULL(ELT(FIELD(type,'1','2','3','4'),'来源A','来源B','来源C','来源D'),'未知') name from order;

```
###  MySQL索引建立
```
1.索引的作用
索引用于快速定位具有某个特定值的行，建立了索引的列，会用特殊的方式进行存储，使其便于查找定位。MySQL中两种常用的索引存储类型：BTREE & HASH 。（归结到底还是算法问题）

注意：MyISAM和InnoDB存储引擎：只支持BTREE索引， 也就是说默认使用BTREE

2.索引的分类：单列索引（普通索引、唯一索引、主键索引）、组合索引、全文索引、空间索引

3.怎么建立和删除索引
CREATE TABLE 表名[字段名 数据类型]  [**UNIQUE|FULLTEXT|SPATIAL**|...] [INDEX|KEY] [索引名字] (字段名[length]) 　　[ASC|DESC]

4.什么情况下，建立的索引会失效
1)条件中有or,除非每个条件列都使用索引，否则不使用索引
2）like查询意%开头
3）mysql估计全表扫描比走索引快

5.索引的缺点
创建和维护索引都需要时间和占用空间

```

### EXPLAIN关键字查看SQL语句性能
```
1.能查看哪些能容？

2.怎么优化

```


### MySQL加不加单引号的区别
```

```
### 100.参考
```
1). https://www.cnblogs.com/shea/archive/2017/04/25/6760381.html
2). https://www.cnblogs.com/whgk/p/6179612.html

```
- [How MySQL Really Executes a Query](https://www.xaprb.com/blog/2009/04/01/how-mysql-really-executes-a-query/)