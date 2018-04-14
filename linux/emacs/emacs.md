## Learn emacs 

#### 基本命令

```
C-h t : 获取帮助文档(t: tutorial)
C-h f :解释一个函数.需要输入函数名
C-h v 显示Emacs变量文档
C-h a :相关命令搜索
C-x C-c : 退出emacs
C-g : 终止一个正在执行的命令

** ELPA 镜像 (记得使用https)
http://www.4gamers.cn
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
C-x 2 :(split-window-vertically) 垂直分屏
C-x 3 :(split-window-horizontally) 水平分屏

C-x 1 :只保留一个窗格
C-x 0 :关闭本窗口
C-M-v :滚动下方窗口
C-x o :将光标转移到下方的窗口(o:other)
C-x 4 C-f : 在一个新开窗口里打开文件

```

#### 插入/删除/撤销

```
C-o : 在当前行之上插入空白行

C-d :删除光标后的一个字符
C-k :移除光标到"行尾"间的字符
BackSpace: 删除光标前的一个字符

M-d :移除光标后的一个词
M-k :移除光标到"句尾"间的字符
M-backspace :删除光标前的一个词
C-S-BackSpace : 删除整行(S: Shift)
C-w :删除区域
C-/ : 撤销 (C-x u)

** d(删除)-delete , k(移除)-kill


```

#### 剪切/复制/粘贴/矩形操作

```
C+S+@ : 选择选区
C-w   : 剪切(wipe out,抹去)
C-y : 粘贴 (yank)
M-w : 复制
C-x h :标记整个缓冲区(全选) 
C-x r k :剪切矩形块
C-x r y : 粘贴矩形块
C-x r c : 删除矩形块


参考:
Emacs的剪贴、复制和粘贴
https://blog.csdn.net/debugfan/article/details/65948515

```

#### 文件操作

```
C-x C-f :寻找一个文件(再按一次可以切换缓冲)
C-x C-s :保存一个文件
C-x s : 保存多个文件
C-x C-w : 把缓冲区内容写入一个文件

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
C-s :向前搜索(search)
C-r :向后搜索()
```

#### 大小写操作

```
M-c : 单词首字母改为大写
M-u : 单词的字母全部改为大写
M-L : 单词的字母全部改为小写
```



---

## Elisp基础

```
Elisp教程 : https://learnxinyminutes.com/docs/elisp/

C-x C-e : 算出表达式
C-x m : 查看开启的模式

```

```
;; 1+2*3
(+ 1 (* 2 3))

;;定义变量
(setq name "username")
(message name)

;;定义函数
(defun func()
(message "Hello, %s",name ))

;;执行函数
(func)

;;设置快捷键
(global-set-key (kbd "<f1>") 'func)

;;使函数可直接被调用,可添加(interactive)
(defun func () 
	(interactive)
	(message "hello,%s" name))


```





---

## Org-mode 入门

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
<s Tab  :插入代码块的代码片段
C-c C-s :选择要开始的时间
C-c C-d :选择想要开始的时间
C-c C-e :将Org-mode文档导出为你需要的格式

```



参考:

Emacs月月积累（终结篇）：熟练使用org-mode管理日常事务

https://blog.csdn.net/u014801157/article/details/24372485

神器中的神器org-mode之入门篇

https://www.cnblogs.com/qlwy/archive/2012/06/15/2551034.html

----

## Golang支持

#### auto-complete

```

$ git clone https://github.com/auto-complete/auto-complete.git
$ cd auto-complete/
$ emacs -batch -l etc/install.el
安装命令会提供“Install to:”，让你输入要安装的目标目录，例如输入 ~/.emacs.d/auto-complete/。安装成功后，会提示如下内容，
Successfully installed!

Add the following code to your .emacs:

(add-to-list 'load-path "~/.emacs.d/auto-complete")
(require 'auto-complete-config)
(ac-config-default)

** 我是添加到 ~/.emacs.d/init.el中

**下载popop.el,并添加到~/.emacs.d/auto-complete中
	https://github.com/auto-complete/popup-el

```

#### 安装并配置go-autocomplete

```
在gocode发行包中拷贝emacs/go-autocomplete.el到~/.emacs.d/auto-complete目录下.

在~/.emacs.d/init.el中添加:
	(require 'go-autocomplete)
	(require 'auto-complete-config)
	(ac-config-default)
```



```
代码跳转:
C-c C-j
```



参考:

gocode+auto-complete搭建emacs的go语言自动补全功能

http://www.cnblogs.com/lienhua34/p/5839510.html

搭建emacs的go编程语言环境

https://www.cnblogs.com/lienhua34/p/5838166.html



---

Major mode :

minor mode:



 































































