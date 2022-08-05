---
title: "MYSQL复制表"
date: 2022-04-08T15:41:42+08:00
lastmod: 2022-04-08T15:41:42+08:00
draft: true
keywords: []
description: ""
tags: []
categories: []
author: "jincheng9"

# You can also close(false) or open(true) something for this content.
# P.S. comment can only be closed
comment: true
toc: true
autoCollapseToc: false
postMetaInFooter: false
hiddenFromHomePage: false
# You can also define another contentCopyright. e.g. contentCopyright: "This is another copyright."
contentCopyright: false
reward: false
mathjax: false
mathjaxEnableSingleDollar: false
mathjaxEnableAutoNumber: false

# You unlisted posts you might want not want the header or footer to show
hideHeaderAndFooter: false

# You can enable or disable out-of-date content warning for individual post.
# Comment this out to use the global config.
#enableOutdatedInfoWarning: false

flowchartDiagrams:
  enable: true
  options: ""

sequenceDiagrams: 
  enable: true
  options: ""

---

这将复制数据和结构,但**不复制索引:**

```
create table {new_table} select * from {old_table};
```

这将**复制结构和索引**,但不复制数据:

```
create table {new_table} like {old_table};
```



#### 资料

* https://qa.1r1g.com/sf/ask/229600451/
