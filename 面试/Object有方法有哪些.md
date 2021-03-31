### Object有方法有哪些？notify和notifyAll的区别

 clone , toString, hashCode, equals, notify, notifyAll,wait



* clone -- > Cloneable



* toString --> class.getClassName() + Hex(hashCode)



* hashCode , equals  -- > 散列表

x.equals(y). ==> x.hashCode. = y.hashCode

x != y. ==> (x.hashCode  = y.hashCode) || x.hashCode != y.hashCode



不重写： 默认判断是的两个对象的引用指向是不是相等



什么情况下需要重写hashCode方法? 

需要用到hash散列的 时候，如hashMap,hashSet



hashCode重写：例如：

```java
	@Override
	public int hashCode() {
		int result = super.hashCode();
		result = 31 * result + ObjectUtils.nullSafeHashCode(this.domain);
		result = 31 * result + ObjectUtils.nullSafeHashCode(this.path);
		return result;
	}
```

* hashMap









