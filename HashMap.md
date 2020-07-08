### HashMap
[TOC]
#### hash算法
#### HashMap底层数据结构?
##### 一些重要的参数

* **table **:
* **load Factor:  加载因子**
* **capacity: 总容量** 
* **size : 实际存储的元素数量**
* **threshold: 扩容阈值**
```
threshold = capacity * load factor
```
当 size > threshold 执行扩容操作，



#### put操作



#### remove操作，没有resize操作？why
```java
final Node<K,V> removeNode(int hash, Object key, Object value,
                               boolean matchValue, boolean movable) {
        Node<K,V>[] tab; Node<K,V> p; int n, index;
        if ((tab = table) != null 
            && (n = tab.length) > 0 &&
            (p = tab[index = (n - 1) & hash]) != null) { //  (n - 1) & hash 防止数据越界
           
            Node<K,V> node = null, e; K k; V v;
            if (p.hash == hash &&
                ((k = p.key) == key || (key != null && key.equals(k))))
                node = p; // 桶节点
            else if ((e = p.next) != null) { 
                if (p instanceof TreeNode) // 红黑树
                    node = ((TreeNode<K,V>)p).getTreeNode(hash, key);
                else { // 链表
                    do {
                        if (e.hash == hash &&
                            ((k = e.key) == key ||
                             (key != null && key.equals(k)))) {
                            node = e;
                            break;
                        }
                        p = e;
                    } while ((e = e.next) != null);
                }
            }
            // 找到节点之后，按照节点类型，删除元素。 （对象引用操作）
            if (node != null && (!matchValue || (v = node.value) == value ||
                                 (value != null && value.equals(v)))) {
                if (node instanceof TreeNode) // 红黑树节点
                    ((TreeNode<K,V>)node).removeTreeNode(this, tab, movable); 
                else if (node == p)
                    tab[index] = node.next;
                else
                    p.next = node.next;
                ++modCount;
                --size;
                afterNodeRemoval(node);
                return node;
            }
        }
        return null;
    }
```





####  get和put的原理？ equals() 和hashCode（）都有什么作用？





####  hash的实现及为什么要这么实现？
``` java
    static final int hash(Object key) {
        int h;
        return (key == null) ? 0 : (h = key.hashCode()) ^ (h >>> 16);
    }
```


####  如果HashMap的大小超过了负载因子（load factor）定义的容量，该怎么办？

