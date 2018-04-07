## Learn emacs 

#### 基本命令

```
C-h t : 获取帮助文档
C-h f :解释一个函数.需要输入函数名
C-h v 显示Emacs变量文档
C-h a :相关命令搜索
C-x C-c : 退出emacs
C-g : 终止一个正在执行的命令

```

#### 翻页命令

```
C-v : 向前移动一屏
M-v : 向后移动一屏
```

#### 基本光标控制

```
C-p : 上一行(preview)
C-n : 下一行(next)
C-b : 向左移(backward)
C-f : 向右移(forward)

C-a : 移动到行首
C-e : 移动到行尾

C-u : 为命令指定数字参数(也就是重复次数)
	* C-u 8 C-f : 向前移动8个字符

M-f :往前移一个单词
M-b :往后移一个单词

M-a :移动到句首
M-b :移动到句尾

M-< : 将光标移动到所有文字的最开头
M-> : 将光标移动到所有文字的最末尾

META系列组合键用来操作"由语言定义的基本单位(比如:词,句子,段落)"
而CONTROL系列组合键用来操作"与语言无关的基本单位(比如:字符,行,..)"


```

#### 多窗格

```
C-x 2 : 上下分屏
C-x 3 : 左右分屏

C-x 1 :只保留一个窗格
C-x 0 :关闭本窗口
C-M-v :滚动下方窗口
C-x o :将光标转移到下方的窗口(o:other)
C-x 4 C-f : 在一个新开窗口里打开文件

```

#### 插入/删除/撤销

```
C-d :删除光标后的一个字符
C-k :移除光标到"行尾"间的字符
BackSpace: 删除光标前的一个字符

M-d :移除光标后的一个词
M-k :移除光标到"句尾"间的字符
M-backspace :删除光标前的一个词
C-/ : 撤销 (C-x u)

** d(删除)-delete , k(移除)-kill


```

#### 复制粘贴

```
C-y : 粘贴 (yank)
```

#### 文件

```
C-x C-f :寻找一个文件(再按一次可以切换缓冲)
C-x C-s :保存一个文件
C-x s : 保存多个文件

```

#### 缓冲区

```
C-x C-b :列出缓冲区
C-x 1 :离开缓冲区

** Emacs 把每一个编辑中的文件都放在一个称为缓冲区的地方
```



#### 查找替换

```
M-x replace-string :替换

```

#### 搜索

```
C-s :向前搜索
C-r :向后搜索
```



---

### org-mode

#### 进入Org模式

```
M-x org-mode
```

#### 标题设定

```
语法: START KEYWORD PRIORITY TITLE TAGS

*START 		即星号
*KEYWORD 	TODO关词
*PRIORITY 	优先集选项
*TITLE 		实际的标题文本
*TAGS 		标签
例如:
** TODO [#2] 优先级为2的待办事项 :@家庭作业:

```



#### 管理待办任务

```
C-c C-t :设置或改变当前标题的TODO状态

```























参考:

Emacs月月积累（终结篇）：熟练使用org-mode管理日常事务

https://blog.csdn.net/u014801157/article/details/24372485



----

Elisp : https://learnxinyminutes.com/docs/elisp/



C-x C-e : 算出表达式

C-x m : 查看开启的模式



( + 2 2)

; 2 + 3*4

(+ 2  (* 3 4))



(setq myname "zilongsanren")

(message my-name)

(default my-func ()

​	(interactive)

​	(message "hello, %s",my-name)

)

(my-func)

(global-set-key (kbd "<f2>" 'my-func'))



(tool-bar-mode -1) : turn off tool-bar

(scroll-bar-mode  -1) : turn off scrollbar

(electric-indent-mode -1

company mode:

org-mode:

*

**



---

Major mode :

minor mode:



 































































