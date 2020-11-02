### lambda惰性求值

#### lambda惰性求值
https://zhuanlan.zhihu.com/p/35989043

  // 打印日志前需要先判断日志级别    if (logger.isLoggable(Level.FINE)) {
      logger.fine("打印一些日志:" + this);
    }
=>
  // 使用lambda表达式的惰性求值,不需要判断日志级别    logger.fine(() -> "打印一些日志:" + this);
